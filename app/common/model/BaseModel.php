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

namespace app\common\model;

use think\Model;

class BaseModel extends Model
{
    /**
     * @var bool 自动写入2019年8月14日 12:32:24
     */
    protected $autoWriteTimestamp = true;
    protected $createTime = 'create_time';
    protected $updateTime = 'update_time';

    public function __construct(array $data = [])
    {
        parent::__construct($data);
    }

    public static function getList($where = array(), $pageSize, $order = ['sort', 'id' => 'desc'])
    {
        return self::where($where)->select();

    }

    public static function getOne($id)
    {

        return self::find($id);
    }
}
