<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Question;
use App\Topic;
use App\Answer;

class MainQuizController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $input = $request->all();
		// $input['current_attempt'] = Answer::where('user_id',$request->user_id)->where('topic_id',$request->topic_id)->first()->current_attempt;
        $exist = Answer::where('user_id',$request->user_id)->where('topic_id',$request->topic_id)->where('question_id',$request->question_id)->first();
        if(!is_null($exist)){
			unset($input['current_attempt']);
            $exist->update($input);
        }
        else{
			// $input['current_attempt'] = Answer::where('user_id',$request->user_id)->where('topic_id',$request->topic_id)->first()->current_attempt ?? 1;
            Answer::create($input);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
          $topic = Topic::findOrFail($id);
          $auth = Auth::user();
          if ($auth) {
			$questions = Question::where('topic_id', $topic->id)->get();
			$answers = Answer::where('user_id', $auth->id)->where('topic_id', $topic->id)->get();
			$current_attempt = 1;
            if ($answers) {
                foreach ($answers as $answer) {
					$questions->where('id', $answer->question_id)->first()->user_answer = $answer->user_answer;
					$current_attempt = $answer->current_attempt;
                }
                // $all_questions = collect();
                // $all_questions = $all_questions->push(Question::where('topic_id', $topic->id)->get());
                // $all_questions = $all_questions->flatten();
                // // $q_filter = $q_filter->flatten();
                // // $questions = $all_questions->diff($q_filter);
                // $questions = $all_questions->flatten();
                // if($topic->type == 'challenges'){
                //     $questions = $questions->shuffle();
                // }
                // return response()->json(["questions" => $questions, "auth"=>$auth, "topic" => $topic->id]);
            }
            // $questions = collect();
            // $questions = Question::where('topic_id', $topic->id)->get();
			// $questions = $questions->flatten();
			if ($topic->type == 'challenges') {
				$questions = $questions->shuffle();
			}
			// $current_attempt = Answer::where('topic_id', $topic->id)->where('user_id', auth()->id())->first()->current_attempt ?? 1;
            return response()->json(["questions" => $questions, "auth"=>$auth, 'current_attempt' => $current_attempt, "topic" => $topic->id]);
          }
          return redirect('/');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $answer = Answer::findOrFail($id);
        $answer->delete();
        return back()->with('deleted', 'Record has been deleted');
    }
}
