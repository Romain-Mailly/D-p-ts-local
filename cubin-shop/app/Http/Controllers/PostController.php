<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class PostController extends Controller
{
    public function getid($id){
        $product = DB::select("select * from produits where pro_id = $id");
        
        $url = 'photos_cube/'. $product[0]->pro_id.'.'.$product[0]->pro_photo;
       
        return view('product', ['product' => $product,'url' => $url ]);
                                  
    }

    public function getpros(){
        $products = DB::select('select * from produits');
     
        return view('products', ['products' => $products]);
    }

    public function index(){
        return view('index');
    }

    public function product(){
        

        return view('product');
    }
    
    public function contact(){
        return view('contact');
    }
    
    public function modif($id){

        $product = DB::select("select * from produits where pro_id = $id");
        

        return view('modif', ['product' => $product]);        
    }
    
    public function delete($id){

        $product = DB::select("select * from produits where pro_id = $id");

        $url = 'photos_cube/'. $product[0]->pro_id.'.'.$product[0]->pro_photo;

        return view('delete', ['product' => $product, 'url' => $url]);
    }
}
