<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Det_equipo;

class Det_equipoController extends Controller
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

        $det_equipos = Det_equipo::join('equipos','det_equipos.idorientadora','=','equipos.id')
        ->select('det_equipos.id','det_equipos.idorientadora','det_equipos.idalumna',
        'det_equipos.fecha','det_equipos.observacion','det_equipos.visible')->OrderBy('fecha','desc')->paginate(100);//->where('det_equipo.idalumna',$alumnaSeleccionada)
        
        //$det_equipo=Det_orientadora::all();

        return [
            'pagination' => [
                'total' => $det_equipos->total(),
                'current_page' => $det_equipos->currentPage(),
                'per_page' => $det_equipos->perPage(),
                'last_page' => $det_equipos->lastpage(),
                'from' => $det_equipos->firstItem(),
                'to' => $det_equipos->lastItem(),
            ],
            'det_equipos' => $det_equipos
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
        
        $det_equipo = new Det_equipo();
        $det_equipo->idorientadora = $request->idorientadora;
        $det_equipo->fecha = $request->fecha;
        $det_equipo->idalumna=$request->idalumna;
        $det_equipo->observacion = $request->observacion;
        $det_equipo->visible = $request->reservado;
        $det_equipo->save();
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
