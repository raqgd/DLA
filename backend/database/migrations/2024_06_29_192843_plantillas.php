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
        Schema::create('plantillas', function (Blueprint $table) {
            $table->integer('plantilla_id')->primary()->unsigned();
            $table->integer('usuario_id')->unsigned()->nullable();
            $table->integer('liga_id')->unsigned()->nullable();
            $table->string('Alineacion', 200);
            $table->float('Media_puntosTotal');
            $table->integer('saldo_actual');
            $table->integer('deudaMax');

            $table->foreign('usuario_id')->references('usuario_id')->on('usuarios');
            $table->foreign('liga_id')->references('liga_id')->on('ligas');

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('plantillas');
    }
};
