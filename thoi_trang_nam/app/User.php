<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\SoftDeletes;

class User extends Authenticatable
{
    use Notifiable;
    public $table = "nguoidung";

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'Ten', 'DiaChi', 'SDT', 'VaiTro', 'HoatDong', 'email', 'MatKhau', 'remember_token', 'NgayTao', 'NgayCN', 'NgayXoa'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public static $role = [
        0 => 'Khách hàng',
        1 => 'Quản trị viên',
        2 => 'Nhân viên kho',
        3 => 'Nhân viên giao hàng',
    ];

    public $timestamps = false;
}
