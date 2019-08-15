<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Alumna extends Model
{
    protected $table = 'alumnas';
    protected $fillable=['rut','digito','curso','letra','apellidos','nombres','d_or','d_psic','d_vsoc','d_cesc','d_egest','d_ter','d_edif'];

    public function orientadoras()
    {
        return $this->hasMany('App\Orientadora');
    }

    public function det_orientadoras()
    {
        return $this->hasMany('App\Det_orientadora');
    }
}

/*          $table->string('digito',2)->nullable();
            $table->string('curso',10);
            $table->string('apellidos',50);
            $table->string('nombres',50);
            $table->boolean('d_or')->default(0);
            $table->boolean('d_psic')->default(0);
            $table->boolean('d_vsoc')->default(0);
            $table->boolean('d_cesc')->default(0);
            $table->boolean('d_egest')->default(0);
            $table->boolean('d_ter')->default(0);
            $table->boolean('d_edif')->default(0); */