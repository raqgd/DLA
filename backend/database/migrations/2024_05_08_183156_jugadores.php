<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('jugadores', function (Blueprint $table) {
        $table->increments('id')->key();
        $table->string('equipo', 1000);
        $table->integer('idequipo',);
        $table->string('name', 1000);
        $table->integer('edad');
        $table->string('posicion', 1000);
        $table->string('altura', 1000);
        $table->string('peso', 1000);
        $table->integer('valorActual');
        $table->integer('valorFuturo');
        $table->string('estado', 1000);
        $table->string('clas', 1000);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('jugadores');
    }
};
