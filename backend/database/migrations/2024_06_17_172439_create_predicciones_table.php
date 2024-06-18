<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePrediccionesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('predicciones', function (Blueprint $table) {
            $table->integer('predicciones_id')->primary()->unsigned();
            $table->integer('jugador_id')->unsigned();
            $table->integer('jornada_id')->unsigned();
            $table->integer('puntos')->unsigned();
            $table->integer('precio')->unsigned();

            $table->foreign('jugador_id')->references('jugador_id')->on('jugador')->onDelete('no action')->onUpdate('no action');
            $table->foreign('jornada_id')->references('jornada_id')->on('jornada')->onDelete('no action')->onUpdate('no action');

            $table->index('jugador_id', 'FK_predicciones_jugador');
            $table->index('jornada_id', 'FK_predicciones_jornada');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('predicciones');
    }
}
