<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class PostController extends Controller
{
    public function getid($id)
    {
        $product = DB::select("select * from produits where pro_id = $id");
        
        $url = 'photos_cube/'. $product[0]->pro_id.'.'.$product[0]->pro_photo;
        
       
    
       
        return view('product', ['product' => $product,'url' => $url ]);
                                  
    }

    public function getpros()
    {
        $pros = DB::select('select * from produits');
     
        return view('products', ['pros' => $pros]);
    }

    public function index(){
        return view('index');
    }

    // public function products(){
        

    //     return view('products');
    // }

    public function product(){
        

        return view('product');
    }
    
    public function contact(){
        return view('contact');
    }
}
