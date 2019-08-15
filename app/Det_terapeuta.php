<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Det_terapeuta extends Model
{
    protected $fillable =[
        'idorientadora','fecha','observacion'
    ];
    public function terapeuta()
    {
        return $this->belongsTo('App\Terapeutas');
    }
}
