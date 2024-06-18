<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePartidoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('partidos', function (Blueprint $table) {
            $table->increments('partido_id');
            $table->integer('equipo1_id')->unsigned()->nullable();
            $table->integer('equipo2_id')->unsigned()->nullable();
            $table->integer('jornada_id')->unsigned()->nullable();
            $table->string('Resultado', 200);

            $table->foreign('equipo1_id')->references('equipo_id')->on('equipo')->onDelete('no action')->onUpdate('no action');
            $table->foreign('equipo2_id')->references('equipo_id')->on('equipo')->onDelete('no action')->onUpdate('no action');
            $table->foreign('jornada_id')->references('jornada_id')->on('jornada')->onDelete('no action')->onUpdate('no action');

            $table->index('equipo1_id', 'FK_partido_equipo');
            $table->index('equipo2_id', 'FK_partido_equipo_2');
            $table->index('jornada_id', 'FK_partido_jornada');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('partidos');
    }
}
