<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDetEducadorasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('det_educadoras', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('idorientadora')->unsigned();
            $table->date('fecha');
            $table->integer('idalumna');
            $table->string('observacion');
            $table->boolean('visible');
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
        Schema::dropIfExists('det_educadoras');
    }
}
