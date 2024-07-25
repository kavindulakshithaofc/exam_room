<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use App\Topic;
use App\Question;
use App\Answer;

class QuizController extends Controller
{
    public function finishQuiz($id)
    {
        $auth = Auth::user();
        $topic = Topic::findOrFail($id);
        $questions = Question::where('topic_id', $id)->get();
        $count_questions = $questions->count();
        $answers = Answer::where('user_id', $auth->id)
                    ->where('topic_id', $id)->get();
        cache()->forget('attempt-'. auth()->id() . '-'.$id);
        if($count_questions != $answers->count()){
          foreach($questions as $que){
            $a = false;
            foreach($answers as $ans){
              if($que->id == $ans->question_id){
                $a = true;
              }
            }
            if($a == false){
              Answer::create([
                'topic_id' => $id,
                'user_id' => $auth->id,
                'question_id' => $que->id,
                'user_answer' => 0,
                'answer' => $que->answer,
                'current_attempt' => 1
              ]);
            }
          }
        }

        $ans = Answer::all();
        $q = Question::all();

        return view('finish', compact('ans','q','topic', 'answers', 'count_questions'));
    }
}

