<?php

namespace App;

use App\Traits\Creatable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Subject extends Model
{
    use Creatable;
    use HasFactory;
	protected $fillable = ['title'];

}
