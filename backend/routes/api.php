<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EquipoController;

Route::get('/equipos/getall', [EquipoController::class, 'getAll']);
Route::get('/equipos/get/{id}', [EquipoController::class, 'getSingle']);
Route::get('/equipos/create', [EquipoController::class, 'create']);
Route::get('/equipos/delete/{id}', [EquipoController::class, 'delete']);
Route::get('/equipos/deleteall', [EquipoController::class, 'deleteAll']);

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
