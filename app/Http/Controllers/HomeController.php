<?php

namespace App\Http\Controllers;

use App\Page;
use App\Question;
use App\Topic;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $challanges = Topic::when($request->search, function ($querry) use($request){
            $querry->where('title', 'like', '%'.$request->search.'%');
        })->where('type','challanges')->get();
        $pastpapers = Topic::when($request->search, function ($querry) use($request){
            $querry->where('title', 'like', '%'.$request->search.'%');
        })->where('type','past_papers')->get();
        $questions = Question::all();
        $menus  = Page::where('show_in_menu','=',1)->get();
        return view('home', compact('challanges', 'questions','menus','pastpapers'));
    }
}
