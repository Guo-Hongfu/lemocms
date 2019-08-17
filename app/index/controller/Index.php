<?php
namespace app\index\controller;

class Index extends \app\BaseController{

    public function index(){
        $data = ['a'=>1];
        return json($data);
    }

}