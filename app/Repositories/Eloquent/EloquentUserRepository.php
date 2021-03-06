<?php namespace bepc\Repositories\Eloquent;

use bepc\Repositories\Contracts\UserContract;
use bepc\Models\User;
use bepc\Models\UserBarcode;

use bepc\Models\UserIdCard;
use bepc\Libraries\BarcodeGenerator\BarcodeGenerator as BgcOutput;
use bcrypt;
use bepc\Libraries\Generic\Helper;
use bepc\Models\UserPhoto;
class EloquentUserRepository implements UserContract
{

	public function find($id){
		return User::find($id);
	}
	public function store($param){
		$param['password'] = bcrypt($param['password']);
		
		$user =User::create($param);
		return $user;

	}
	public function generate_id(){
		return Helper::generate_user_id();
	}
	public function sdelete(User $user){
		return $user->delete();
	}
	public function fdelete(User $user){
		return $user->forceDelete();
	}

	public function search($searchParameter){
		return User::where($searchParameter);
	}
	public function all(){
		return User::all();
	}
	public function generate_barcode(User $user){

	}
	public function uploadphoto($request){
		$input = $request->all();
		$image = $request->file('file');
        if(strpos($image->getClientMimeType(),'image') !== FALSE){
            $upload_folder ='img-photo/';
            $input['id'] = str_random();
            $image->move(public_path($upload_folder).'/', $input['id'].'.' . $image->getClientOriginalExtension());
            $input['path'] =public_path($upload_folder).'/';
            $input['filename'] = $input['id'].'.' . $image->getClientOriginalExtension();
            $p =  UserPhoto::create($input);
            return $p;
        }
        return false;
	}
	public function updatephoto($request){
		$input = $request->all();
		
		$image = $request->file('file');
        if(strpos($image->getClientMimeType(),'image') !== FALSE){
            $upload_folder ='img-photo/';
            $input['id'] = str_random();
            $image->move(public_path($upload_folder).'/', $input['id'].'.' . $image->getClientOriginalExtension());
            $input['path'] =public_path($upload_folder).'/';
            $input['filename'] = $input['id'].'.' . $image->getClientOriginalExtension();
            $p = $this->find($input['user_id'])->userphoto;
            $p->path = $input['path'];
            $p->filename = $input['filename'];
            return $p->save();
        }
        return false;
	}

	public function getphoto(User $user){

	}
	public function changeStatus(User $user){
		$user->activated = !$user->activated;
		return $user->save();
	}
	public function updatePassword(User $user ,$newPassword){
		$user->password = bcrypt($newPassword);
		return $user->save();
	}
} 