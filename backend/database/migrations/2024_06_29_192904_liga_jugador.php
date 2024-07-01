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
        Schema::create('liga_jugador', function (Blueprint $table) {
            $table->integer('liga_id')->unsigned();
            $table->foreign('liga_id')->references('liga_id')->on('ligas');
            $table->integer('jugador_id')->unsigned();
            $table->foreign('jugador_id')->references('jugador_id')->on('jugadores');
            $table->integer('plantilla_id')->unsigned();
            $table->foreign('plantilla_id')->references('plantilla_id')->on('plantillas');

            $table->primary(['liga_id', 'jugador_id']);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('liga_jugador');
    }
};
