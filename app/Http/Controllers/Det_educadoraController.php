<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Det_educadora;

class Det_educadoraController extends Controller
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

        $det_educadoras = Det_educadora::join('educadoras','det_educadoras.idorientadora','=','educadoras.id')
        ->select('det_educadoras.id','det_educadoras.idorientadora','det_educadoras.idalumna',
        'det_educadoras.fecha','det_educadoras.observacion','det_educadoras.visible')->OrderBy('fecha','desc')->paginate(100);//->where('det_educadora.idalumna',$alumnaSeleccionada)
        
        //$det_educadora=Det_orientadora::all();

        return [
            'pagination' => [
                'total' => $det_educadoras->total(),
                'current_page' => $det_educadoras->currentPage(),
                'per_page' => $det_educadoras->perPage(),
                'last_page' => $det_educadoras->lastpage(),
                'from' => $det_educadoras->firstItem(),
                'to' => $det_educadoras->lastItem(),
            ],
            'det_educadoras' => $det_educadoras
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
        
        $det_educadoras = new Det_educadora();
        $det_educadoras->idorientadora = $request->idorientadora;
        $det_educadoras->fecha = $request->fecha;
        $det_educadoras->idalumna=$request->idalumna;
        $det_educadoras->observacion = $request->observacion;
        $det_educadoras->visible = $request->reservado;
        $det_educadoras->save();
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
