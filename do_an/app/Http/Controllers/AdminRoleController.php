<?php

namespace App\Http\Controllers;

use App\Models\Permission;
use App\Models\Role;
use App\Traits\DeleteModelTrait;
use Illuminate\Http\Request;

class AdminRoleController extends Controller
{
    use DeleteModelTrait;
    private $role;
    private $permission;
    public function __construct(Role $role, Permission $permission)
    {
        $this->role = $role;
        $this->permission = $permission;
    }

    public function index(){
        $roles = $this->role->paginate(10);
        return view('admin.roles.index', compact('roles'));
    }
    public function create(){
        $permiissionParent =  $this->permission->where('parent_id', 0)->get();
        return view('admin.roles.add', compact('permiissionParent'));
    }
    public function store(Request $request){
        $role = $this->role->create([
            'name' => $request->name,
            'display_name' => $request->display_name
        ]);
        $role->permissions()->attach($request->permission_id);
        return redirect()->route('roles.index');
    }
    public function edit($id){

        $permiissionParent =  $this->permission->where('parent_id', 0)->get();
        $role = $this->role->find($id);
        $permissionsCheked = $role->permissions;

        return view('admin.roles.edit', compact('permiissionParent', 'role','permissionsCheked'));
    }
    public function update($id, Request $request){
        $role = $this->role->find($id);
        $role->update([
            'name' => $request->name,
            'display_name' => $request->display_name
        ]);

        $role->permissions()->sync($request->permission_id);
        return redirect()->route('roles.index');
    }
    public function delete($id){
        return $this->deleteModelTrait($id, $this->role);
    }


}
