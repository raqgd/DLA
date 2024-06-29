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
        Schema::create('usuario_liga', function (Blueprint $table) {
            $table->integer('usuario_id')->unsigned();
            $table->integer('liga_id')->unsigned();

            $table->primary(['usuario_id', 'liga_id']);

            $table->foreign('usuario_id')->references('usuario_id')->on('usuarios');
            $table->foreign('liga_id')->references('liga_id')->on('ligas');

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('usuario_liga');
    }
};
