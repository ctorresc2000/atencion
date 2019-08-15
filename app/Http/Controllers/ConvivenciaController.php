<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Convivencia;

class ConvivenciaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(request $request)
    {
        if(!$request->ajax()) return redirect('/');

        $buscar = $request->buscar;
        $criterio = $request->criterio;

        if ($buscar==''){
            $convivencias = Convivencia::join('alumnas','convivencias.idalumna','=','alumnas.id')
            ->select('alumnas.curso','alumnas.letra','alumnas.apellidos','alumnas.nombres','convivencias.id','convivencias.derivadopor','convivencias.motivo','convivencias.antecedentes','convivencias.idalumna')
            ->OrderBy('alumnas.curso')->OrderBy('alumnas.letra')->OrderBy('alumnas.apellidos')->OrderBy('alumnas.nombres')->paginate(20);
        }
        else{
            $convivencias = Convivencia::join('alumnas','convivencias.idalumna','=','alumnas.id')
            ->select('alumnas.curso','alumnas.letra','alumnas.apellidos','alumnas.nombres','convivencias.id','convivencias.derivadopor','convivencias.motivo','convivencias.antecedentes')
            ->where('alumnas.'.$criterio,'like','%' . $buscar .'%')->OrderBy('alumnas.curso')->OrderBy('alumnas.letra')->OrderBy('alumnas.apellidos')->OrderBy('alumnas.nombres')->paginate(20);

           // $alumnas = Alumna::where($criterio,'like','%'.$buscar.'%')->OrderBy('curso')->OrderBy('letra')->OrderBy('apellidos')->OrderBy('nombres')->paginate(20);
        }


        return [
            'pagination' => [
                'total' => $convivencias->total(),
                'current_page' => $convivencias->currentPage(),
                'per_page' => $convivencias->perPage(),
                'last_page' => $convivencias->lastpage(),
                'from' => $convivencias->firstItem(),
                'to' => $convivencias->lastItem(),
            ],
            'convivencias' =>$convivencias

   
        ];
    }
 
/*      public function mostrarDetalle(request $request)
    {
        $det_convivencias=Det_Convivencia::all();

        return $det_convivencias;
    }  */

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

        $convivencias = new Convivencia();
        $convivencias->idalumna=$request->idalumna;
        $convivencias->derivadopor=$request->derivadopor;
        $convivencias->Motivo=$request->motivo;
        
        $convivencias->antecedentes=$request->antecedentes;
        $convivencias->condicion='1';
        $convivencias->save();
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
        if(!$request->ajax()) return redirect('/');

        $convivencias = Convivencia::findOrFail($request->id);
        $convivencias->idalumna=$request->idalumna;
        $convivencias->derivadopor=$request->derivadopor;
        $convivencias->Motivo=$request->motivo;
        $convivencias->condicion='1';
        $convivencias->save();
    }

    public function cerrar(Request $request)
    {
        if(!$request->ajax()) return redirect('/');

        $convivencias = Convivencia::findOrFail($request->id);
        $convivencias->condicion='0';
        $convivencias->save();
    }

    public function reabrir(Request $request)
    {
        if(!$request->ajax()) return redirect('/');

        $convivencias = Convivencia::findOrFail($request->id);
        $convivencias->condicion='1';
        $convivencias->save();
    }
}
