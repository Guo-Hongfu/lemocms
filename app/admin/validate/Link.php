<?php


namespace app\admin\validate;

use think\validate;

class Link extends validate
{
    protected $rule = [
        'name|网站名称' => [
            'require' => 'require',
            'max'     => '255',
        ],
        'url|网站地址' => [
            'require' => 'require',
            'max'     => '255',
        ],
        'sort|排序' => [
            'require' => 'require',
            'number'  => 'number'
        ],
    ];
}