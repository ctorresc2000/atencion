<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDetOrientadoras extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('det_orientadoras', function (Blueprint $table) {
            $table->Increments('id');
            $table->unsignedBigInteger('idorientadora')->unsigned();
            $table->date('fecha');
            $table->string('observacion');
            $table->boolean('visible');
            $table->timestamps();

            $table->foreign('idorientadora')->references('id')->on('orientadoras');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('det_orientadoras');
    }
}
