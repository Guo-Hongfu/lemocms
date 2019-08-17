<?php

namespace app\admin\model;

use think\facade\Request;
use think\facade\Session;
use think\facade\Db;
class AdminLog extends AdminModel
{

    protected static $log_title = '';
    //自定义日志内容
    protected static $log_content = '';
    protected static $log_url = '';

    /*
     * 管理员日志记录
     */
    public static function record()
    {
        //入库信息
        $admin_id   = Session::get('admin.id',0);
        $username   = Session::get('admin.username','Unknown') ;
        $url        = Request::url();
        $title      = self::$log_title;
        $ip         = Request::ip();
        $agent      = Request::server('HTTP_USER_AGENT');
        $content    = Request::param();

        if ($content) {
            //去除登录密码
            foreach ($content as $k => $v) {
                if (is_string($v) && strlen($v) > 200 || stripos($k, 'password') !== false) {
                    unset($content[$k]);
                }
            }
            $content = json_encode($content);
        }
        //登录处理
        if (strpos($url, 'login/index') !== false && Request::isPost()) {
            $title = '[登录成功]';
        }else{
            $auth = Db::name('auth_rule')->column('href','href');
            foreach ($auth as $k=>$v){
                $auth[$k] = (string)strtolower(url($v));
            }
            if($key = array_search($url,$auth)){
                $auth = AuthRule::where('href',$key)->find();
                if($auth) $title=$auth->title;
            }

        }

        //插入数据
        if (!empty($title)) {
            self::create([
                'log_title'       => $title ? $title : '',
                'log_content'       => $content,
                'log_url'         => $url,
                'admin_id'    => $admin_id,
                'username'    => $username,
                'log_agent'   => $agent,
                'log_ip'          => $ip,
             ]);
        }


    }

}