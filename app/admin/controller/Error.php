<?php
namespace app\admin\controller;

use app\BaseController;

class Error extends BaseController{

    public function __call($method, $args)
    {
        return '404 页面不存在';
    }
}