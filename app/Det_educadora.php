<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Det_educadora extends Model
{
    protected $fillable =[
        'idorientadora','fecha','observacion'
    ];
    public function educadora()
    {
        return $this->belongsTo('App\Educadora');
    }
}
