<?php

namespace App;

use App\Traits\Creatable;
use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
  use Creatable;
    protected $fillable = [
      'topic_id',
      'question',
      'a',
      'b',
      'c',
      'd',
      'e',
      'f',
      'answer',
      'code_snippet',
      'answer_exp',
      'question_img',
      'question_video_link',
      'question_audio'
    ];

    public function answers() {
      return $this->hasOne('App\Answer');
    }

    public function topic() {
      return $this->belongsTo('App\Topic');
    }
}
