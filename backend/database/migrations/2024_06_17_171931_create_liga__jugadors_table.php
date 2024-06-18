<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLigaJugadorTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('liga_jugador', function (Blueprint $table) {
            $table->integer('liga_id')->unsigned();
            $table->integer('jugador_id')->unsigned();
            $table->integer('plantilla_id')->unsigned();

            $table->primary(['liga_id', 'jugador_id']);

            $table->foreign('liga_id')->references('liga_id')->on('liga')->onDelete('no action')->onUpdate('no action');
            $table->foreign('jugador_id')->references('jugador_id')->on('jugador')->onDelete('no action')->onUpdate('no action');
            $table->foreign('plantilla_id')->references('plantilla_id')->on('plantilla')->onDelete('no action')->onUpdate('no action');

            $table->index('jugador_id', 'FK_liga_jugador_jugador');
            $table->index('plantilla_id', 'FK_liga_jugador_plantilla');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('liga_jugador');
    }
}
