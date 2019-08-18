<?php
namespace app\admin\validate;

use think\validate;

class Adv extends validate
{
    protected $rule = [
        'pid|广告位置' => [
            'require' => 'require',
        ],
        'ad_image|广告图片' => [
            'require' => 'require',
        ],
        'ad_name|广告名' => [
            'require' => 'require',
        ],

    ];
}