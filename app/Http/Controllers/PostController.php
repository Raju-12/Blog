<?php

namespace App\Http\Controllers;

use App\Category;
use App\Post;
use Image;
use Auth;
use Illuminate\Http\Request;


class PostController extends Controller
{
    public function all_post()
    {
   
    	$posts=Post::with('user','category')->get();
    	return response()->json([
    		'posts'=>$posts
    	]);
    }

    public function save_post(Request $request)
    {
    	$strpos=strpos($request->photo,';');
    	$sub=substr($request->photo,0,$strpos);
    	$ex=explode('/',$sub)[1];
    	$name=time().".".$ex;
    	$img=Image::make($request->photo)->resize(200, 200);
    	$upload_path=public_path()."/uploadimage/";
    	$img->save($upload_path.$name);
    	$post=new Post();
    	$post->title=$request->title;
    	$post->description=$request->description;
        $post->cat_id=$request->cat_id;
    	$post->user_id=Auth::user()->id;
    	$post->photo=$name;
    	$post->save();
    }

    public function delete_post($id)
    {
        $post=Post::find($id);
        
        $image_path=public_path()."/uploadimage/";
        $image=$image_path.$post->photo;
        if(file_exists($image)){
            @unlink($image);
        }
        $post->delete();
    }

    public function edit_post($id)
    {
        $post=Post::find($id);
        return response()->json{[
                'post'=>$post
            ]};
    }
    public function select_post($ids)
    {
        $all_id=explode(',',$ids);
        foreach ($all_id as $id) {
             
        $post=Post::find($id);
        $image_path=public_path()."/uploadimage/";
        $image=$image_path.$post->photo;
        if(file_exists($image)){
            @unlink($image);
        }
        $post->delete();
        }

    }
}
