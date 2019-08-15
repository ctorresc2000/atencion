<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Det_visitadora extends Model
{
    protected $fillable =[
        'idorientadora','fecha','observacion'
    ];
    public function visitadora()
    {
        return $this->belongsTo('App\Visitadoras');
    }
}
