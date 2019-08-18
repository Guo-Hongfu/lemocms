<?php


namespace util;

class Filter
{

    /*
    参数过滤防止攻击
    */
    public static function filterWords($str)
    {
        $farr = array(
            "/<(\\/?)(script|i?frame|style|html|body|title|link|meta|object|\\?|\\%)([^>]*?)>/isU",
            "/(<[^>]*)on[a-zA-Z]+\s*=([^>]*>)/isU",
            "/select\b|insert\b|update\b|delete\b|drop\b|;|\"|\'|\/\*|\*|\.\.\/|\.\/|union|into|load_file|outfile|dump/is"
        );
        $str = preg_replace($farr, '', $str);
        $str = strip_tags($str);
        return $str;
    }

    /*
    参数校验
    */
    public static function filterInput($str)
    {
        if (!$str) {
            throw new \Exception('参数错误');
        }
        return self::filterWords($str);
    }

}
