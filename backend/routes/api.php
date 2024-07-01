<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EquipoController;
use App\Http\Controllers\JugadorController;

Route::get('/equipos/getall', [EquipoController::class, 'getAll']);
Route::get('/equipos/get/{id}', [EquipoController::class, 'getSingle']);
Route::post('/equipos/create', [EquipoController::class, 'create']);
Route::delete('/equipos/delete/{id}', [EquipoController::class, 'delete']);
Route::delete('/equipos/deleteall', [EquipoController::class, 'deleteAll']);
Route::get("/equipos/equipoExiste/{id}", [EquipoController::class, "equipoExists"]);

Route::get("/jugadores/getAll",[JugadorController::class, "getall"]);
Route::get("/jugadores/get/{id}",[JugadorController::class, "getSingle"]);
Route::get('/jugadores/delete/{id}', [JugadorController::class, 'delete']);
Route::get("/jugadores/jugadorExiste/{id}", [JugadorController::class, "jugadorExists"]);
Route::get("/jugadores/get/{id}/posicion",[JugadorController::class, "getPosicion"]);
Route::get("/jugadores/get/{id}/altura",[JugadorController::class, "getAltura"]);
Route::get("/jugadores/get/{id}/peso",[JugadorController::class, "getPeso"]);
Route::get("/jugadores/get/{id}/prediccion",[JugadorController::class, "getPrediccion"]);
Route::get("/jugadores/get/{id}/estado",[JugadorController::class, "getEmotionalEstado"]);

// Crear una nueva lesión
Route::post('/lesiones/create', [LesionesController::class, 'newLesion']);

// Crear una nueva lesión de un jugador
Route::post('/lesionjugador/create', [LesionJugadorController::class, 'newLesionJugador']);
// Obtener lesiones de un jugador
Route::get('/lesionjugador/get/{id}', [LesionJugadorController::class, 'getLesionesJugador']);



Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
