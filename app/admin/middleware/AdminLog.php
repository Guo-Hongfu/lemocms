<?php
/**
 * lemocms
 * ============================================================================
 * 版权所有 2018-2027 lemocms，并保留所有权利。
 * 网站地址: https://www.lemocms.com
 * ----------------------------------------------------------------------------
 * 采用最新Thinkphp6实现
 * ============================================================================
 * Author: yuege
 * Date: 2019/8/19
 * 
 */
/**
 * +
 * | 后台中间件验证权限
 */
namespace app\admin\middleware;

use app\admin\model\AuthRule;
use think\facade\Db;
use think\facade\Session;
use think\facade\Request;
use think\Response;
use think\exception\HttpResponseException;

class AdminLog
{
    public function handle($request, \Closure $next)
    {

        //进行操作日志的记录
        \app\admin\model\AdminLog::record();


        //中间件handle方法的返回值必须是一个Response对象。
        return $next($request);
    }
}