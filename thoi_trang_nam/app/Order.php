<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Order extends Model
{
    const STATUS_ORDER = [
        0 => 'Đang đóng gói',
        1 => 'Đã đóng gói',
        2 => 'Đang giao',
        3 => 'Đã giao',
        4 => 'Đã hủy',
        5 => 'Khách không nhận'
    ];
    public $table = "donhang";
    protected $fillable = [
        'TrangThai', 'XacNhan'
    ];

    public function user()
    {
        return $this->belongsTo(User::class,'id_ND');
    }

    public function user_shiper()
    {
        return $this->belongsTo(User::class,'id_NV');
    }

    public function donated()
    {
        return $this->hasOne(Donated::class, 'id_DH', 'id');
    }

    public $timestamps = false;
}
