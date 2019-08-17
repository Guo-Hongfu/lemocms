<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK IT ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: yunwuxin <448901948@qq.com>
// +----------------------------------------------------------------------
namespace think\console\command\optimize;

use think\console\Command;
use think\console\Input;
use think\console\input\Argument;
use think\console\input\Option;
use think\console\Output;

class Schema extends Command
{
    protected function configure()
    {
        $this->setName('optimize:schema')
            ->addArgument('app', Argument::OPTIONAL, 'app name .')
            ->addOption('db', null, Option::VALUE_REQUIRED, 'db name .')
            ->addOption('table', null, Option::VALUE_REQUIRED, 'table name .')
            ->setDescription('Build database schema cache.');
    }

    protected function execute(Input $input, Output $output)
    {
        $app = $input->getArgument('app');

        $schemaPath = $this->app->db->getConnection()->getConfig('schema_cache_path');

        if (!is_dir($schemaPath)) {
            mkdir($schemaPath, 0755, true);
        }

        if ($input->hasOption('table')) {
            $table = $input->getOption('table');
            if (false === strpos($table, '.')) {
                $dbName = $this->app->db->getConnection()->getConfig('database');
            }

            $tables[] = $table;
        } elseif ($input->hasOption('db')) {
            $dbName = $input->getOption('db');
            $tables = $this->app->db->getConnection()->getTables($dbName);
        } else {
            if (empty($app) && !is_dir($this->app->getBasePath() . 'controller')) {
                $output->writeln('<error>Miss app name!</error>');
                return false;
            }

            if ($app) {
                $appPath   = $this->app->getBasePath() . $app . DIRECTORY_SEPARATOR;
                $namespace = 'app\\' . $app;
            } else {
                $appPath   = $this->app->getBasePath();
                $namespace = 'app';
            }

            $path = $appPath . 'model';
            $list = is_dir($path) ? scandir($path) : [];

            foreach ($list as $file) {
                if (0 === strpos($file, '.')) {
                    continue;
                }
                $class = '\\' . $namespace . '\\model\\' . pathinfo($file, PATHINFO_FILENAME);
                $this->buildModelSchema($class);
            }

            $output->writeln('<info>Succeed!</info>');
            return;
        }

        $db = isset($dbName) ? $dbName . '.' : '';
        $this->buildDataBaseSchema($schemaPath, $tables, $db);

        $output->writeln('<info>Succeed!</info>');
    }

    protected function buildModelSchema(string $class): void
    {
        $reflect = new \ReflectionClass($class);
        if (!$reflect->isAbstract() && $reflect->isSubclassOf('\think\Model')) {

            /** @var \think\Model $model */
            $model = new $class;

            $table   = $model->getTable();
            $dbName  = $model->getConnection()->getConfig('database');
            $path    = $model->getConnection()->getConfig('schema_cache_path');
            $content = '<?php ' . PHP_EOL . 'return ';
            $info    = $model->db()->getConnection()->getFields($table);
            $content .= var_export($info, true) . ';';

            file_put_contents($path . $dbName . '.' . $table . '.php', $content);
        }
    }

    protected function buildDataBaseSchema(string $path, array $tables, string $db): void
    {
        if ('' == $db) {
            $dbName = $this->app->db->getConnection()->getConfig('database') . '.';
        } else {
            $dbName = $db;
        }

        foreach ($tables as $table) {
            $content = '<?php ' . PHP_EOL . 'return ';
            $info    = $this->app->db->getConnection()->getFields($db . $table);
            $content .= var_export($info, true) . ';';
            file_put_contents($path . $dbName . $table . '.php', $content);
        }
    }
}
