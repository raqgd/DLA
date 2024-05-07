<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Equipo;
use Illuminate\Http\Request;

class EquipoController extends Controller
{
    public function getAll(Request $request){
        $jugador = Equipo::get();
        return json_encode($jugador);
    }
    public function getSingle(Request $request, $id){
        $jugador = Equipo::find($id);
        return json_encode($jugador);
    }
}
