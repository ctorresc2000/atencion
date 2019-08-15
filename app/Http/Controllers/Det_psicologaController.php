<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Det_psicologa;

class Det_psicologaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if(!$request->ajax()) return redirect('/');

        $alumnaSeleccionada = $request->alumna_id;

        $det_psicologas = Det_psicologa::join('psicologas','det_psicologas.idorientadora','=','psicologas.id')
        ->select('det_psicologas.id','det_psicologas.idorientadora','det_psicologas.idalumna',
        'det_psicologas.fecha','det_psicologas.observacion','det_psicologas.visible')->OrderBy('fecha','desc')->paginate(100);//->where('det_psicologa.idalumna',$alumnaSeleccionada)
        
        //$det_psicologa=Det_orientadora::all();

        return [
            'pagination' => [
                'total' => $det_psicologas->total(),
                'current_page' => $det_psicologas->currentPage(),
                'per_page' => $det_psicologas->perPage(),
                'last_page' => $det_psicologas->lastpage(),
                'from' => $det_psicologas->firstItem(),
                'to' => $det_psicologas->lastItem(),
            ],
            'det_psicologas' => $det_psicologas
        ];
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if(!$request->ajax()) return redirect('/');

        $det_psicologas = new Det_psicologa();
        $det_psicologas->idorientadora = $request->idorientadora;
        $det_psicologas->fecha = $request->fecha;
        $det_psicologas->idalumna=$request->idalumna;
        $det_psicologas->observacion = $request->observacion;
        $det_psicologas->visible = $request->reservado;
        $det_psicologas->save();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
