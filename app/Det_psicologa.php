<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Det_psicologa extends Model
{
    protected $fillable =[
        'idorientadora','fecha','observacion'
    ];
    public function psicologa()
    {
        return $this->belongsTo('App\Psicologa');
    }
}
