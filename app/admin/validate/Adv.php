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
 */
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