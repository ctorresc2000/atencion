<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Det_orientadora extends Model
{
    protected $fillable =[
        'idorientadora','fecha','observacion'
    ];
    public function orientadora()
    {
        return $this->belongsTo('App\Orientadora');
    }
}
