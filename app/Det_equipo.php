<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Det_equipo extends Model
{
    protected $fillable =[
        'idorientadora','fecha','observacion'
    ];
    public function equipo()
    {
        return $this->belongsTo('App\Equipo');
    }
}
