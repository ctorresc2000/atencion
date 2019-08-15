<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateVisitadorasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('visitadoras', function (Blueprint $table) {
            $table->bigIncrements('id');
            
            $table->unsignedBigInteger('idalumna')->unsigned();
            $table->string('derivadopor');
            $table->integer('iddetalle')->nullable();
            $table->string('Motivo');
            $table->string('antecedentes');
            $table->boolean('condicion')->default('1');
            
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
        Schema::dropIfExists('visitadoras');
    }
}
