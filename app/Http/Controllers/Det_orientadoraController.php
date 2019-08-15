<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Redirect;
use App\Det_orientadora;

class det_orientadoraController extends Controller
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

        $det_orientadoras = Det_orientadora::join('orientadoras','det_orientadoras.idorientadora','=','orientadoras.id')
        ->select('det_orientadoras.id','det_orientadoras.idorientadora','det_orientadoras.idalumna',
        'det_orientadoras.fecha','det_orientadoras.observacion','det_orientadoras.visible')->OrderBy('fecha','desc')->paginate(100);//->where('det_orientadoras.idalumna',$alumnaSeleccionada)
        
        //$det_orientadoras=Det_orientadora::all();

        return [
            'pagination' => [
                'total' => $det_orientadoras->total(),
                'current_page' => $det_orientadoras->currentPage(),
                'per_page' => $det_orientadoras->perPage(),
                'last_page' => $det_orientadoras->lastpage(),
                'from' => $det_orientadoras->firstItem(),
                'to' => $det_orientadoras->lastItem(),
            ],
            'det_orientadoras' => $det_orientadoras
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
        
        $det_orientadoras = new Det_orientadora();
        $det_orientadoras->idorientadora = $request->idorientadora;
        $det_orientadoras->fecha = $request->fecha;
        $det_orientadoras->idalumna=$request->idalumna;
        $det_orientadoras->observacion = $request->observacion;
        $det_orientadoras->visible = $request->reservado;
        $det_orientadoras->save();
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
