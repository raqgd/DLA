<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsuarioTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('usuarios', function (Blueprint $table) {
            $table->increments('usuario_id');
            $table->integer('plantilla_id')->unsigned()->nullable();
            $table->string('nombre', 200);
            $table->string('email', 200);
            $table->string('user', 200);
            $table->string('password', 200);
            $table->string('rol', 200);

            $table->foreign('plantilla_id')->references('plantilla_id')->on('plantilla')->onDelete('no action')->onUpdate('no action');

            $table->index('plantilla_id', 'FK_usuario_plantilla');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('usuarios');
    }
}
