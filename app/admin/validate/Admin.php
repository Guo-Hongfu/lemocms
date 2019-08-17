<?php
namespace app\admin\validate;

use think\validate;

class Admin extends validate
{
    protected $rule = [
        'username|用户名' => [
            'require' => 'require',
            'max'     => '100',
            'unique'  => 'admin',
        ],
        'password|密码' =>[
            'require' => 'require',
        ],
        'group_id|用户组'=>[
            'require' => 'require',
        ],
    ];
}