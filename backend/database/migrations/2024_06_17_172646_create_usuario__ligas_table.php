<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsuarioLigaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('usuario_liga', function (Blueprint $table) {
            $table->integer('usuario_id')->unsigned();
            $table->integer('liga_id')->unsigned();

            $table->primary(['usuario_id', 'liga_id']);

            $table->foreign('usuario_id')->references('usuario_id')->on('usuario')->onDelete('no action')->onUpdate('no action');
            $table->foreign('liga_id')->references('liga_id')->on('liga')->onDelete('no action')->onUpdate('no action');

            $table->index('liga_id', 'FK_usuario_liga_liga');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('usuario_liga');
    }
}
