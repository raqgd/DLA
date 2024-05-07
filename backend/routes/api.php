<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\JugadorController;

Route::get('/jugadores', [JugadorController::class, 'getAll']);
Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');
