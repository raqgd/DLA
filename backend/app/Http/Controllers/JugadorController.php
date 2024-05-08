<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Jugador;
use Illuminate\Http\Request;

class JugadorController extends Controller
{
    public function getall(Request $request){
        $jugador = Jugador::get();
        return json_encode($jugador);
    }
    public function getSingle(Request $request, $id){
        $jugador = Jugador::find($id);
        return json_encode($jugador);
    }
    public function delete(Request $request, $id)
    {
        $jugador = Jugador::findOrFail($request->id);
        $result = $jugador->delete();
        if ($result)
            return ['result' => 'El jugador ha sido borrado'];
    }
    public function jugadorExists(Request $request)
    {
        $id = $request->id;
        if (Jugador::where('id', $id)->first() != null) {
            return true;
        }
        else {
            return false;
        }
    }
    public function getPosicion(Request $request, $id){ 
        $jugador = Jugador::find($id);
        return json_encode($jugador->posicion);
    }
    public function getAltura(Request $request, $id){ 
        $jugador = Jugador::find($id);
        return json_encode($jugador->altura);
    }
    public function getPeso(Request $request, $id){ 
        $jugador = Jugador::find($id);
        return json_encode($jugador->peso);
    }
    public function getPrediccion(Request $request, $id){ 
        $jugador = Jugador::find($id);
        return json_encode($jugador->valorFuturo);
    }
    public function getEmotionalEstado(Request $request, $id){ 
        $jugador = Jugador::find($id);
        return json_encode($jugador->estado);
    }
}
