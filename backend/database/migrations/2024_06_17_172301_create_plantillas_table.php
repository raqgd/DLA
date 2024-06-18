<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePlantillaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('plantillas', function (Blueprint $table) {
            $table->integer('plantilla_id')->primary()->unsigned();
            $table->integer('usuario_id')->unsigned()->nullable();
            $table->integer('liga_id')->unsigned()->nullable();
            $table->string('Alineacion', 200);
            $table->float('Media_puntosTotal');
            $table->integer('saldo_actual');
            $table->integer('deudaMax');

            $table->foreign('usuario_id')->references('usuario_id')->on('usuario')->onDelete('no action')->onUpdate('no action');
            $table->foreign('liga_id')->references('liga_id')->on('liga')->onDelete('no action')->onUpdate('no action');

            $table->index('usuario_id', 'FK_plantilla_usuario');
            $table->index('liga_id', 'FK_plantilla_liga');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('plantillas');
    }
}
