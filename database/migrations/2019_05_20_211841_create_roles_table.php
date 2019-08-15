<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRolesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('roles', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nombre',30)->unique();
            $table->string('descripcion',100)->nullable();
            $table->boolean('condicion')->default(1);
        });

        DB::table('roles')->insert(array('id'=>'1','nombre'=>'Profesor','descripcion'=>'Profesor del Colegio'));
        DB::table('roles')->insert(array('id'=>'2','nombre'=>'Orientador','descripcion'=>'Orientador del Colegio'));
        DB::table('roles')->insert(array('id'=>'3','nombre'=>'Psicólogo','descripcion'=>'Psicólogo del Colegio'));
        DB::table('roles')->insert(array('id'=>'4','nombre'=>'Trabajadora Social','descripcion'=>'Trabajadora social del Colegio'));
        DB::table('roles')->insert(array('id'=>'5','nombre'=>'Convivencia Escolar','descripcion'=>'Asistentes de Convivencia del Colegio'));
        DB::table('roles')->insert(array('id'=>'6','nombre'=>'Gestión Curricular','descripcion'=>'UTP del Colegio'));
        DB::table('roles')->insert(array('id'=>'7','nombre'=>'Terapeuta Ocupacional','descripcion'=>'Terapeuta Ocupadicional del Colegio'));
        DB::table('roles')->insert(array('id'=>'8','nombre'=>'Educadora Diferencial','descripcion'=>'Educadora Diferencial del Colegio'));
        DB::table('roles')->insert(array('id'=>'9','nombre'=>'Directora','descripcion'=>'Directora del Colegio'));
        DB::table('roles')->insert(array('id'=>'10','nombre'=>'Alumna','descripcion'=>'Alumna del Establecimiento'));
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('roles');
    }
}
