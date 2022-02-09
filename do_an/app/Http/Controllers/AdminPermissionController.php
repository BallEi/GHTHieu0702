<?php

namespace App\Http\Controllers;

use App\Models\Permission;
use Illuminate\Http\Request;

class AdminPermissionController extends Controller
{
    public function createPermission(){
        return view('admin.permissions.add');
    }
    public function store (Request $request){
        $permission = Permission::create([
            'name' => $request->module_parent,
            'display_name' => $request->module_parent,
            'parent_id' => 0
        ]);
        foreach ($request->child as $value) {
            Permission::create([
                'name' => $value,
                'display_name' => $value,
                'parent_id' => $permission->id,
                'keycode' => $value . '_' . $request->module_parent
                ]);

        }
        return view('admin.permissions.add');
    }
}
