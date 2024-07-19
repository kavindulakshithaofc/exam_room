<?php

namespace App;

use App\Traits\Creatable;
use Illuminate\Contracts\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;

class Topic extends Model
{
  use Creatable;
    protected $fillable = [
      'title', 'per_q_mark', 'description', 'timer','show_ans','amount', 'subject_id', 'attempts' , 'type', 'explanation'
    ];


    public function scopeMy($query){
        return $query->when(auth()->user()->can('teacher_only'), function($query){
          return $query->where('created_by', auth()->id());
        });
    }

    public function question(){
      return $this->hasOne('App\Question');
    }

    public function answer(){
      return $this->hasOne('App\Answer');
    }

    public function user() {
      return $this->belongsToMany('App\User','topic_user')
         ->withPivot('amount','transaction_id', 'status')
        ->withTimestamps();
    }
    
}
