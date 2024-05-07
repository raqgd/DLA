<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class JugadorController extends Controller
{
    public function getAll(Request $request){ 
        //$ingredient = Ingredient::find($request->id);
        //return json_encode($ingredient);
        return json_encode("HOLAS");
    }
}
