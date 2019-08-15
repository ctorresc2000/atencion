<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOrientadorasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orientadoras', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedBigInteger('idalumna')->unsigned();
            $table->string('derivadopor', 50);
            $table->string('Motivo');
            $table->boolean('condicion')->default(1);

            $table->timestamps();
 
            $table->foreign('idalumna')->references('id')->on('alumnas');
            $table->foreign('iddetalle')->references('id')->on('det_orientadoras');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('orientadoras');
    }
}
