<?php

namespace App\Http\Controllers;

use App\Models\Role;
use App\Models\User;
use App\Traits\DeleteModelTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Log;

class AdminUserController extends Controller
{

    use DeleteModelTrait;
    private $user;
    private $role;
    public function __construct(User $user, Role $role)
    {
        $this->user = $user;
        $this->role = $role;
    }

    public function index(){
        $userslider = $this->user->all();
        $users = $this->user->paginate(10);
        return view('admin.users.index', compact('users','userslider'));
    }
    public function create(){
        $roles = $this->role->all();
        return view('admin.users.add', compact('roles'));
    }
    public function store(Request $request){
        try {
            DB::beginTransaction();
            $user = $this->user->create([
                'name' => $request->name,
                'email' => $request->email,
                'password' => bcrypt($request->password)
            ]);
            $user->roles()->attach($request->role_id);
            DB::commit();
            return redirect()->route('users.index');
        }catch (\Exception $exception){
            DB::rollBack();
            Log::error('message :' . $exception->getMessage() . 'Line:' . $exception->getLine());
        }

//        foreach ($roleIds as $roleItem){
//            DB::table('role_user')->insert([
//                'role_id' => $roleItem,
//                "user_id" => $user->id
//            ]);
//        }
    }
    public function edit($id){
        $roles = $this->role->all();
        $user = $this->user->find($id);
        $rolesOfUser = $user->roles;

        return view('admin.users.edit', compact('roles',
            'user', 'rolesOfUser'));
    }
    public function update($id, Request $request){
        try {
            DB::beginTransaction();
            $this->user->find($id)->update([
                'name' => $request->name,
                'email' => $request->email,
                'password' => Hash::make($request->pasword)
            ]);
            $user = $this->user->find($id);
            $user->roles()->sync($request->role_id);
            DB::commit();
            return redirect()->route('users.index');
        }catch (\Exception $exception){
            DB::rollBack();
            Log::error('message :' . $exception->getMessage() . 'Line:' . $exception->getLine());
        }
    }
    public function delete($id){
        return $this->deleteModelTrait($id, $this->user);

    }
}
