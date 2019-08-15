<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Convivencia extends Model
{
    protected $fillable =[
        'idalumna','deivadopor','motivo'
    ];
    
    public function alumna()
    {
        return $this->belongsTo('App\Alumna');
        
    }
}
