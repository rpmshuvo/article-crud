<?php

namespace App\Http\Controllers;

use App\Article;
use App\Http\Resources\Article as ArticleResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ArticleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //get articles
        $articles = Article::all();

        //return collection of articles as a resource
        $articles = ArticleResource::collection($articles);
        return view('welcome', compact('articles'));

    }



    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'title' => 'required',
            'body' => 'required'
        ]);
       

        if ($validator->fails()) {
            return response()->json(['response' => $validator->messages(), 'success' => false ]);
        } else {

            $article = $request->isMethod('put') ? Article::findOrFail($request->article_id) : new Article;
            $article->id = $request->article_id;
            $article->title = $request->title;
            $article->body = $request->body;
    
    
            if ($article->save()) {
                return new ArticleResource($article);
                // return response()->json(['article' => new ArticleResource($article)]);
            }
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
        $article = Article::findOrFail($id);

        return new ArticleResource($article);
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $article = Article::findOrFail($id);

        if ($article->delete()) {
            return new ArticleResource($article);
        }
    }
}
