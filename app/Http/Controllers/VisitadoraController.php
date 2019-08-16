<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Visitadora;
use Carbon\Carbon;

class VisitadoraController extends Controller
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
            $visitadoras = Visitadora::join('alumnas','visitadoras.idalumna','=','alumnas.id')
            ->select('alumnas.curso','alumnas.letra','alumnas.apellidos','alumnas.nombres','visitadoras.id','visitadoras.derivadopor','visitadoras.motivo','visitadoras.antecedentes','visitadoras.idalumna')
            ->OrderBy('alumnas.curso')->OrderBy('alumnas.letra')->OrderBy('alumnas.apellidos')->OrderBy('alumnas.nombres')->paginate(20);
        }
        else{
            $visitadoras = Visitadora::join('alumnas','visitadoras.idalumna','=','alumnas.id')
            ->select('alumnas.curso','alumnas.letra','alumnas.apellidos','alumnas.nombres','visitadoras.id','visitadoras.derivadopor','visitadoras.motivo','visitadoras.antecedentes')
            ->where('alumnas.'.$criterio,'like','%' . $buscar .'%')->OrderBy('alumnas.curso')->OrderBy('alumnas.letra')->OrderBy('alumnas.apellidos')->OrderBy('alumnas.nombres')->paginate(20);

           // $alumnas = Alumna::where($criterio,'like','%'.$buscar.'%')->OrderBy('curso')->OrderBy('letra')->OrderBy('apellidos')->OrderBy('nombres')->paginate(20);
        }


        return [
            'pagination' => [
                'total' => $visitadoras->total(),
                'current_page' => $visitadoras->currentPage(),
                'per_page' => $visitadoras->perPage(),
                'last_page' => $visitadoras->lastpage(),
                'from' => $visitadoras->firstItem(),
                'to' => $visitadoras->lastItem(),
            ],
            'visitadoras' =>$visitadoras

   
        ];
    }
 
/*      public function mostrarDetalle(request $request)
    {
        $det_visitadoras=Det_Visitadora::all();

        return $det_visitadoras;
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

        $visitadoras = new Visitadora();
        $visitadoras->idalumna=$request->idalumna;
        $visitadoras->derivadopor=$request->derivadopor;
        $visitadoras->Motivo=$request->motivo;
        $visitadoras->fechaderivacion=$fecha; /* $request->fechaDerivacionOrientadora; */
        $visitadoras->antecedentes=$request->antecedentes;
        $visitadoras->condicion='1';
        $visitadoras->save();
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

        $visitadoras = Visitadora::findOrFail($request->id);
        $visitadoras->idalumna=$request->idalumna;
        $visitadoras->derivadopor=$request->derivadopor;
        $visitadoras->Motivo=$request->motivo;
        $visitadoras->condicion='1';
        $visitadoras->save();
    }

    public function cerrar(Request $request)
    {
        if(!$request->ajax()) return redirect('/');

        $visitadoras = Visitadora::findOrFail($request->id);
        $visitadoras->condicion='0';
        $visitadoras->save();
    }

    public function reabrir(Request $request)
    {
        if(!$request->ajax()) return redirect('/');

        $visitadoras = Visitadora::findOrFail($request->id);
        $visitadoras->condicion='1';
        $visitadoras->save();
    }
}
