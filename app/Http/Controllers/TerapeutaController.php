<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Terapeuta;
use Carbon\Carbon;

class TerapeutaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(request $request)
    {
       // if(!$request->ajax()) return redirect('/');

        $buscar = $request->buscar;
        $criterio = $request->criterio;

        if ($buscar==''){
            $terapeutas = Terapeuta::join('alumnas','terapeutas.idalumna','=','alumnas.id')
            ->select('alumnas.curso','alumnas.letra','alumnas.apellidos','alumnas.nombres','terapeutas.id','terapeutas.derivadopor','terapeutas.motivo','terapeutas.antecedentes','terapeutas.idalumna')
            ->OrderBy('alumnas.curso')->OrderBy('alumnas.letra')->OrderBy('alumnas.apellidos')->OrderBy('alumnas.nombres')->paginate(20);
        }
        else{
            $terapeutas = Terapeuta::join('alumnas','terapeutas.idalumna','=','alumnas.id')
            ->select('alumnas.curso','alumnas.letra','alumnas.apellidos','alumnas.nombres','terapeutas.id','terapeutas.derivadopor','terapeutas.motivo','terapeutas.antecedentes')
            ->where('alumnas.'.$criterio,'like','%' . $buscar .'%')->OrderBy('alumnas.curso')->OrderBy('alumnas.letra')->OrderBy('alumnas.apellidos')->OrderBy('alumnas.nombres')->paginate(20);

           // $alumnas = Alumna::where($criterio,'like','%'.$buscar.'%')->OrderBy('curso')->OrderBy('letra')->OrderBy('apellidos')->OrderBy('nombres')->paginate(20);
        }


        return [
            'pagination' => [
                'total' => $terapeutas->total(),
                'current_page' => $terapeutas->currentPage(),
                'per_page' => $terapeutas->perPage(),
                'last_page' => $terapeutas->lastpage(),
                'from' => $terapeutas->firstItem(),
                'to' => $terapeutas->lastItem(),
            ],
            'terapeutas' =>$terapeutas

   
        ];
    }
 
/*      public function mostrarDetalle(request $request)
    {
        $det_terapeutas=Det_Terapeuta::all();

        return $det_terapeutas;
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

        $fecha= Carbon::now();
        $fecha=$fecha->format('d-m-Y');

        $terapeutas = new Terapeuta();
        $terapeutas->idalumna=$request->idalumna;
        $terapeutas->derivadopor=$request->derivadopor;
        $terapeutas->Motivo=$request->motivo;
        $terapeutas->fechaderivacion=$fecha; /* $request->fechaDerivacionOrientadora; */
        $terapeutas->antecedentes=$request->antecedentes;
        $terapeutas->condicion='1';
        $terapeutas->save();
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

        $terapeutas = Terapeuta::findOrFail($request->id);
        $terapeutas->idalumna=$request->idalumna;
        $terapeutas->derivadopor=$request->derivadopor;
        $terapeutas->Motivo=$request->motivo;
        $terapeutas->condicion='1';
        $terapeutas->save();
    }

    public function cerrar(Request $request)
    {
        if(!$request->ajax()) return redirect('/');

        $terapeutas = Terapeuta::findOrFail($request->id);
        $terapeutas->condicion='0';
        $terapeutas->save();
    }

    public function reabrir(Request $request)
    {
        if(!$request->ajax()) return redirect('/');

        $terapeutas = Terapeuta::findOrFail($request->id);
        $terapeutas->condicion='1';
        $terapeutas->save();
    }
}
