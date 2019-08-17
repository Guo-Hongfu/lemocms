<?php
/**
 * 验证码配置
 */
return [
        'codeSet'  => '2345678abcdefhijkmnpqrstuvwxyzABCDEFGHJKLMNPQRTUVWXY',         // 验证码字体大小(px)5.
        'fontSize' => 50,         // 是否画混淆曲线7.
        'useCurve' => true,         //是否画混淆曲线.
        'useNoise' => true,         //是否添加杂点.
//        'useImgBg' => true,         //是否添加背景图.
//        'imageH'   => 50,        // 验证码图片高度
//        'imageW'   => 200,         // 验证码图片宽度11.

        'length'   => 4,        //长度
        'reset'    => true, // 验证成功后是否重置        15.
        'expire'    =>60*5, //过期时间
];