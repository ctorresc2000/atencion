<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Det_visitadora;

class Det_visitadoraController extends Controller
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

        $det_visitadoras = Det_visitadora::join('visitadoras','det_visitadoras.idorientadora','=','visitadoras.id')
        ->select('det_visitadoras.id','det_visitadoras.idorientadora','det_visitadoras.idalumna',
        'det_visitadoras.fecha','det_visitadoras.observacion','det_visitadoras.visible')->OrderBy('fecha','desc')->paginate(100);//->where('det_visitadoras.idalumna',$alumnaSeleccionada)
        
        //$det_visitadoras=Det_orientadora::all();

        return [
            'pagination' => [
                'total' => $det_visitadoras->total(),
                'current_page' => $det_visitadoras->currentPage(),
                'per_page' => $det_visitadoras->perPage(),
                'last_page' => $det_visitadoras->lastpage(),
                'from' => $det_visitadoras->firstItem(),
                'to' => $det_visitadoras->lastItem(),
            ],
            'det_visitadoras' => $det_visitadoras
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
        
        $det_visitadoras = new Det_visitadora();
        $det_visitadoras->idorientadora = $request->idorientadora;
        $det_visitadoras->fecha = $request->fecha;
        $det_visitadoras->idalumna=$request->idalumna;
        $det_visitadoras->observacion = $request->observacion;
        $det_visitadoras->visible = $request->reservado;
        $det_visitadoras->save();
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
