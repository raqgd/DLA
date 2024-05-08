<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Equipo;
use Illuminate\Http\Request;

class EquipoController extends Controller
{
    public function getAll(Request $equipo){
        $equipo = Equipo::get();
        return json_encode($equipo);
    }
    public function getSingle(Request $request, $id){
        $equipo = Equipo::find($id);
        return json_encode($equipo);
    }
    public function create(Request $request){ 
        $equipo = new Equipo();
        $equipo->name = $request->name;
        $equipo->nameCompacto = $request->nameCompacto;
        $equipo->save();
        return json_encode($equipo);
    }

    public function delete(Request $request, $id)
    {
        $equipo = Equipo::findOrFail($request->id);
        $result = $equipo->delete();
        if ($result)
            return ['result' => 'El equipo ha sido borrado'];
    }
    public function deleteAll(Request $request)
    {
        $equipo = Equipo::findOrFail($request);
        $result = $equipo->clear();
        if ($result)
            return ['result' => 'Todos los equipos han sido borrados'];
    }
    public function equipoExists(Request $request)
    {
        $id = $request->id;
        if (Equipo::where('id', $id)->first() != null) {
            return true;
        }
        else {
            return false;
        }
    }
}
