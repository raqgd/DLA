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
        Schema::create('partidos', function (Blueprint $table) {
            $table->increments('partido_id')->primary();
            $table->integer('equipo1_id')->unsigned()->nullable();
            $table->integer('equipo2_id')->unsigned()->nullable();
            $table->integer('jornada_id')->unsigned()->nullable();
            $table->string('Resultado', 200);

            $table->foreign('equipo1_id')->references('equipo_id')->on('equipos');
            $table->foreign('equipo2_id')->references('equipo_id')->on('equipos');
            $table->foreign('jornada_id')->references('jornada_id')->on('jornadas');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('partidos');
    }
};
