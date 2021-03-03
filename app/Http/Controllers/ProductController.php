<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Image;

class ProductController extends Controller
{

    protected $user;


    public function __construct()
    {
        $this->middleware('auth:api');
        $this->user = $this->guard()->user();

    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = Product::orderby('id','desc')->get();
        return response()->json([
                'products' => $products
            ],200);
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
        
        $this->validate($request,[
            'title' => 'required|min:2|max:50',
            'description' => 'required',
            'price' => 'required',
            'photo' => 'required'
        ]);
      $data = $request->except('photo');
      $strpos = strpos($request->photo,';');
      $sub = substr($request->photo,0,$strpos);
      $ex = explode('/',$sub)[1];
      $name = time() .".". $ex;
      $img = Image :: make($request->photo)->resize(300,200);
      $upload_path = public_path()."/uploadimage/";
      $img->save($upload_path.$name);
      $data['image'] = url('/')."/uploadimage/$name";
      if ($product = Product::create($data)) {
        return response()->json(
            [
                'status' => true,
                'message' => 'Product Insert Successfully',
            ]
        );
        } else {
            return response()->json(
                [
                    'status'  => false,
                    'message' => 'Oops, the product could not be saved.',
                ]
            );
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
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $products = Product :: find($id);
        return response()->json([
            'products'=>$products
        ],200);
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
        $product = Product :: find($id);
        $this->validate($request,[
            'title' => 'required|min:2|max:50',
            'description' => 'required',
            'price' => 'required',
            'image' => 'required'
        ]);
        $data = $request->except('image');
      if($request->image != $product->image)
      {
        $strpos = strpos($request->image,';');
        $sub = substr($request->image,0,$strpos);
        $ex = explode('/',$sub)[1];
        $name = time() .".". $ex;
        $img = Image :: make($request->image)->resize(300,200);
        $upload_path = public_path()."/uploadimage/";
        $img->save($upload_path.$name);
        $newname = url('/')."/uploadimage/$name";
        $imagepre = str_replace(url('/'),'', $product->image);
        $image = ltrim($imagepre, '/');
        if(file_exists($image)){
            @unlink($image);
        }
      }
      else{
        $newname = $product->image;
      }
      $data['image'] = $newname;
      if($product->update($data)){
        return response()->json(
            [
                'status' => false,
                'message' => 'Product Update Successfully',
            ]
        );
        } else {
            return response()->json(
                [
                    'status'  => false,
                    'message' => 'Oops, the product could not be update.',
                ]
            );
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $product= Product :: find($id);
        $imagepre = str_replace(url('/'),'', $product->image);
        $image = ltrim($imagepre, '/');
       if(file_exists($image)){
           @unlink($image);
       }
        if ($product->delete()) {
            return response()->json(
                [
                    'status' => true,
                    'message'   => 'Deleted Successfully',
                ]
            );
        } else {
            return response()->json(
                [
                    'status'  => false,
                    'message' => 'Oops, the product could not be deleted.',
                ]
            );
        }
    }
    protected function guard()
    {
        return Auth::guard();

    }//end guard()
}
