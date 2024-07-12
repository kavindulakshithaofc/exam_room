<?php

namespace App\Traits;

use Illuminate\Database\Eloquent\Model;

trait Creatable{

    protected static function booted(): void
    {
        static::creating(function (Model $model) {
            $model->created_by = auth()->id();
        });
    }

    public function creator(){
      return $this->belongsTo('App\User','created_by');
    }

}