<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use App\Category;

class BlogController extends Controller
{
    public function get_all_blog_posts()
    {
    	$posts=Post::with('user','category')->get();
    	return response()->json([
    		'posts'=>$posts
    	]);
    }
    public function getpost_by_id($id)
    {
    	$post=Post::with('user','category')
    	->where('id',$id)
    	->first();
    	return response()->json([
    		'post'=>$post
    	]);	
    }
    public function get_all_category()
    {
    	$categories=Category::all();
    	return response()->json([
    		'categories'=>$categories
    	]);
    }
    public function get_all_post_by_cat_id($id)
    {
    	$posts=Post::with('user','category')
    	->where('cat_id',$id)
    	->get();
    	return response()->json([
    		'posts'=>$posts
    	]);
    }
    public function search_post()
    {
    	$search=\Request::get('s');
    	$posts=Post::with('user','category')
    	->where('title','LIKE',"%$search%")
    	->orWhere('description','LIKE',"   %$search%")
    	->get();
    	return response()->json([
    		'posts'=>$posts
    	]);
    }
    public function latest_post()
    {
    	$posts=Post::with('user','category')->get();
    	return response()->json([
    		'posts'=>$posts
    	]);
    }
}
