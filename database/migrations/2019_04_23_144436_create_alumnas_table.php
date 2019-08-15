<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAlumnasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('alumnas', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('rut',12);
            $table->string('digito',2)->nullable();
            $table->string('curso',10);
            $table->string('apellidos',50);
            $table->string('nombres',50);
            $table->boolean('d_or')->default(0);
            $table->boolean('d_psic')->default(0);
            $table->boolean('d_vsoc')->default(0);
            $table->boolean('d_cesc')->default(0);
            $table->boolean('d_egest')->default(0);
            $table->boolean('d_ter')->default(0);
            $table->boolean('d_edif')->default(0);
            $table->date('fecharetiro');
            $table->boolean('condicion')->default(1);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('alumnas');
    }
}
