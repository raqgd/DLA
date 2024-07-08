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
        Schema::create('usuarios', function (Blueprint $table) {
            $table->increments('usuario_id');
            $table->string('nombre', 200);
            $table->string('email', 200)->unique(); // Asegura que el email sea único
            $table->string('user', 200)->unique();  // Asegura que el username sea único
            $table->string('password', 200);
            $table->string('rol', 200);
            $table->timestamps(); // Agrega columnas de timestamps (created_at y updated_at)
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('usuarios');
    }
};
