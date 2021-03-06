<?php

namespace bepc\Models;

use Illuminate\Database\Eloquent\Model;

class Setting extends Model
{
 	protected $table='setting'; 
 	public $incrementing = true;
 	protected $dates = [ 'created_at' , 'updated_at'];
	protected $fillable = 	['keyname','value'];
 	public function usergroup(){
 		return $this->belongsTo('bepc\Models\UserGroup');
 	}

}
