<?php
namespace app\admin\validate;

use think\validate;

class AdvPosition extends validate
{
    protected $rule = [
        'position_name|广告位置名' => [
            'require' => 'require',
            'unique' =>'adv_position'
        ],


    ];
}