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
        Schema::create('predicciones', function (Blueprint $table) {
            $table->integer('predicciones_id')->primary()->unsigned();
            $table->integer('jugador_id')->unsigned();
            $table->integer('jornada_id')->unsigned();
            $table->integer('puntos')->unsigned();
            $table->integer('precio')->unsigned();

            $table->foreign('jugador_id')->references('jugador_id')->on('jugadores');
            $table->foreign('jornada_id')->references('jornada_id')->on('jornadas');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('predicciones');
    }
};
