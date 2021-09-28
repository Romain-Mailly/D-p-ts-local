<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index(){

        $post = Post::find(12);

        $post->delete();

        dd('supprimé');

        $posts = Post::orderBy('title')->take(3)->get() ;
        return view('articles', compact('posts')) ;
    }

    public function show($id){

        $post = Post::findorFail($id) ;
        return view('article' ,[
            'post' => $post
        ]) ;
    }

    public function create(){
        return view('form');
    }

    public function contact(){
        return view('contact');
    }

    public function store(Request $request){
        // $post = new Post();
        // $post->title = $request->title;
        // $post->content = $request->content;
        // $post->save();

        Post::create([
            'title' => $request->title,
            'content' => $request->content
        ]);

        dd('post créé !');
    }

}