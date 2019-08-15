<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Orientadora extends Model
{
    protected $fillable =[
        'idalumna','deivadopor','motivo'
    ];
    
    public function alumna()
    {
        return $this->belongsTo('App\Alumna');
        
    }
    /* public function det_orientadora(){
        return $this->belongsTo('App\Det_orientadora');
    } */
}

