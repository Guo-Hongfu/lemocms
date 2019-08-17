<?php
namespace app\admin\validate;

use think\validate;

class AuthGroup extends validate
{
    protected $rule = [
        'title|用户组名' => [
            'require' => 'require',
            'max'     => '100',
            'unique'  => 'auth_group',
        ]
    ];
}