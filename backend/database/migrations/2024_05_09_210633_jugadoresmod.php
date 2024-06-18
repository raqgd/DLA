<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJugadoresTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('jugadores', function (Blueprint $table) {
            $table->increments('jugador_id')->unsigned();
            $table->integer('equipo_id')->unsigned()->nullable();
            $table->string('Nombre', 200);
            $table->string('Foto', 50)->nullable();
            $table->string('Posicion', 200);
            $table->integer('Edad');
            $table->string('Altura', 200);
            $table->string('Peso', 200);
            $table->integer('valor');
            $table->integer('puntos');
            $table->float('mediaPuntos');
            $table->integer('partidos');
            $table->integer('goles');
            $table->integer('tarjetas');
            $table->string('estado', 200);

            $table->foreign('equipo_id')->references('equipo_id')->on('equipo')->onDelete('no action')->onUpdate('no action');
            $table->index('equipo_id', 'FK_jugador_equipo');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('jugadores');
    }
}


