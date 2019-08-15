<?php

namespace App\Http\Controllers;
use App\Alumna;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB; 

class EscritorioController extends Controller
{
    public function __invoke(Request $request)

    {
        if(!$request->ajax()) return redirect('/');
        $orientadoras = DB::table('alumnas as Alum')->select('Alum.id','Alum.d_or')->where('Alum.d_or',1)->get(); 
        $psicologas = DB::table('alumnas as Alum')->select('Alum.id','Alum.d_psic')->where('Alum.d_psic',1)->get();
        $convivencia = DB::table('alumnas as Alum')->select('Alum.id','Alum.d_cesc')->where('Alum.d_cesc',1)->get();
        $trabajadora = DB::table('alumnas as Alum')->select('Alum.id','Alum.d_vsoc')->where('Alum.d_vsoc',1)->get();
        $educadora = DB::table('alumnas as Alum')->select('Alum.id','Alum.d_edif')->where('Alum.d_edif',1)->get();
        $gestion = DB::table('alumnas as Alum')->select('Alum.id','Alum.d_egest')->where('Alum.d_egest',1)->get();
        $terapeuta = DB::table('alumnas as Alum')->select('Alum.id','Alum.d_ter')->where('Alum.d_ter',1)->get();
        
        return ['orientadoras' => $orientadoras,'psicologas' => $psicologas,
                'convivencia' => $convivencia,'trabajadora' => $trabajadora,
                'gestion' => $gestion,'terapeuta' => $terapeuta,
                'educadora'=>$educadora];

    }
}
