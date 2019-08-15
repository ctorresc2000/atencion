<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Alumna;
use App\Det_orientadora;
use App\Det_psicologa;
use App\Det_visitadora;
use App\Det_convivencia;
use App\Det_equipo;
use App\Det_terapeuta;
Use App\Det_educadora;

class ReportesController extends Controller
{
    public function index(request $request)
    {
        if(!$request->ajax()) return redirect('/');

        $reportes = Alumna::select('alumnas.id','alumnas.curso','alumnas.letra','alumnas.apellidos','alumnas.nombres')->where('alumnas.atendido','=','SI')
        ->OrderBy('alumnas.curso')->OrderBy('alumnas.letra')->OrderBy('alumnas.apellidos')->OrderBy('alumnas.nombres')->paginate(20);
    
    //join('det_orientadoras','alumnas.idalumna','=','det_orientadora.idalumna')'alumnas.idalumna',->
    //'alumnas.idalumna',join('orientadoras','alumnas.antecedentes','=','orientadoras.antecedentes')->

        return [
            'pagination' => [
                'total' => $reportes->total(),
                'current_page' => $reportes->currentPage(),
                'per_page' => $reportes->perPage(),
                'last_page' => $reportes->lastpage(),
                'from' => $reportes->firstItem(),
                'to' => $reportes->lastItem(),
            ],
            'reportes' =>$reportes
        ];
    }

    public function reportePdf(request $request, $id)
    {
        /* if(!$request->ajax()) return redirect('/'); */

        $reporteAlumnas = Alumna::select('alumnas.id','alumnas.curso','alumnas.letra','alumnas.apellidos','alumnas.nombres')
         ->where('alumnas.id','=',$id)->take(1)->get();

        $reporteDetalleOrientadora =Det_orientadora::join('alumnas','det_orientadoras.idalumna',"=",'alumnas.id')
        ->select('det_orientadoras.id','det_orientadoras.idalumna','det_orientadoras.fecha','det_orientadoras.observacion','det_orientadoras.visible')
        ->where('det_orientadoras.idalumna','=',$id)->OrderBy('det_orientadoras.fecha','desc')->get();

        $reporteDetallePsicologa =Det_psicologa::join('alumnas','det_psicologas.idalumna',"=",'alumnas.id')
        ->select('det_psicologas.id','det_psicologas.idalumna','det_psicologas.fecha','det_psicologas.observacion','det_psicologas.visible')
        ->where('det_psicologas.idalumna','=',$id)->OrderBy('det_psicologas.fecha','desc')->get();

        $reporteDetalleVisitadora =Det_visitadora::join('alumnas','det_visitadoras.idalumna',"=",'alumnas.id')
        ->select('det_visitadoras.id','det_visitadoras.idalumna','det_visitadoras.fecha','det_visitadoras.observacion','det_visitadoras.visible')
        ->where('det_visitadoras.idalumna','=',$id)->OrderBy('det_visitadoras.fecha','desc')->get();
    
        $reporteDetalleConvivencia =Det_convivencia::join('alumnas','det_convivencias.idalumna',"=",'alumnas.id')
        ->select('det_convivencias.id','det_convivencias.idalumna','det_convivencias.fecha','det_convivencias.observacion','det_convivencias.visible')
        ->where('det_convivencias.idalumna','=',$id)->OrderBy('det_convivencias.fecha','desc')->get();

        $reporteDetalleEquipo =Det_equipo::join('alumnas','det_equipos.idalumna',"=",'alumnas.id')
        ->select('det_equipos.id','det_equipos.idalumna','det_equipos.fecha','det_equipos.observacion','det_equipos.visible')
        ->where('det_equipos.idalumna','=',$id)->OrderBy('det_equipos.fecha','desc')->get();

        $reporteDetalleTerapeuta =Det_terapeuta::join('alumnas','det_terapeutas.idalumna',"=",'alumnas.id')
        ->select('det_terapeutas.id','det_terapeutas.idalumna','det_terapeutas.fecha','det_terapeutas.observacion','det_terapeutas.visible')
        ->where('det_terapeutas.idalumna','=',$id)->OrderBy('det_terapeutas.fecha','desc')->get();

        $reporteDetalleEducadora =Det_educadora::join('alumnas','det_educadoras.idalumna',"=",'alumnas.id')
        ->select('det_educadoras.id','det_educadoras.idalumna','det_educadoras.fecha','det_educadoras.observacion','det_educadoras.visible')
        ->where('det_educadoras.idalumna','=',$id)->OrderBy('det_educadoras.fecha','desc')->get();


        $pdf = \PDF::loadView('pdf.reporte',['alumnas'=>$reporteAlumnas,'orientadora'=>$reporteDetalleOrientadora,
        'psicologa'=>$reporteDetallePsicologa,'visitadora'=>$reporteDetalleVisitadora,'convivencia'=>$reporteDetalleConvivencia,
        'gestion'=>$reporteDetalleEquipo,'terapeuta'=>$reporteDetalleTerapeuta,'educadora'=>$reporteDetalleEducadora]);

        //return $pdf->download('reporte.pdf');
        return $pdf->stream('reporte.pdf');
        //loadFile
        
    }

}
