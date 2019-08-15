<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Det_convivencia;

class Det_convivenciaController extends Controller
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

        $det_convivencias = Det_convivencia::join('convivencias','det_convivencias.idorientadora','=','convivencias.id')
        ->select('det_convivencias.id','det_convivencias.idorientadora','det_convivencias.idalumna',
        'det_convivencias.fecha','det_convivencias.observacion','det_convivencias.visible')->OrderBy('fecha','desc')->paginate(100);//->where('det_convivencia.idalumna',$alumnaSeleccionada)
        
        //$det_convivencia=Det_orientadora::all();

        return [
            'pagination' => [
                'total' => $det_convivencias->total(),
                'current_page' => $det_convivencias->currentPage(),
                'per_page' => $det_convivencias->perPage(),
                'last_page' => $det_convivencias->lastpage(),
                'from' => $det_convivencias->firstItem(),
                'to' => $det_convivencias->lastItem(),
            ],
            'det_convivencias' => $det_convivencias
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
        
        $det_convivencias = new Det_convivencia();
        $det_convivencias->idorientadora = $request->idorientadora;
        $det_convivencias->fecha = $request->fecha;
        $det_convivencias->idalumna=$request->idalumna;
        $det_convivencias->observacion = $request->observacion;
        $det_convivencias->visible = $request->reservado;
        $det_convivencias->save();
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
