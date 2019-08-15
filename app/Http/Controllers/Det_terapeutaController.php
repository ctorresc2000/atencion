<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Det_terapeuta;

class Det_terapeutaController extends Controller
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

        $det_terapeutas = Det_terapeuta::join('terapeutas','det_terapeutas.idorientadora','=','terapeutas.id')
        ->select('det_terapeutas.id','det_terapeutas.idorientadora','det_terapeutas.idalumna',
        'det_terapeutas.fecha','det_terapeutas.observacion','det_terapeutas.visible')->OrderBy('fecha','desc')->paginate(100);//->where('det_terapeutas.idalumna',$alumnaSeleccionada)
        
        //$det_terapeutas=Det_orientadora::all();

        return [
            'pagination' => [
                'total' => $det_terapeutas->total(),
                'current_page' => $det_terapeutas->currentPage(),
                'per_page' => $det_terapeutas->perPage(),
                'last_page' => $det_terapeutas->lastpage(),
                'from' => $det_terapeutas->firstItem(),
                'to' => $det_terapeutas->lastItem(),
            ],
            'det_terapeutas' => $det_terapeutas
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
        
        $det_terapeutas = new Det_terapeuta();
        $det_terapeutas->idorientadora = $request->idorientadora;
        $det_terapeutas->fecha = $request->fecha;
        $det_terapeutas->idalumna=$request->idalumna;
        $det_terapeutas->observacion = $request->observacion;
        $det_terapeutas->visible = $request->reservado;
        $det_terapeutas->save();
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
