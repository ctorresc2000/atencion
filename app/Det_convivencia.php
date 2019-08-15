<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Det_convivencia extends Model
{
    protected $fillable =[
        'idorientadora','fecha','observacion'
    ];
    public function convivencia()
    {
        return $this->belongsTo('App\Convivencia');
    }
}
