<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Psicologa;

class PsicologaController extends Controller
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
            $psicologas = Psicologa::join('alumnas','psicologas.idalumna','=','alumnas.id')
            ->select('alumnas.curso','alumnas.letra','alumnas.apellidos','alumnas.nombres','psicologas.id','psicologas.derivadopor','psicologas.motivo','psicologas.antecedentes','psicologas.idalumna')
            ->OrderBy('alumnas.curso')->OrderBy('alumnas.letra')->OrderBy('alumnas.apellidos')->OrderBy('alumnas.nombres')->paginate(20);
        }
        else{
            $psicologas = Psicologa::join('alumnas','psicologas.idalumna','=','alumnas.id')
            ->select('alumnas.curso','alumnas.letra','alumnas.apellidos','alumnas.nombres','psicologas.id','psicologas.derivadopor','psicologas.motivo','psicologas.antecedentes')
            ->where('alumnas.'.$criterio,'like','%' . $buscar .'%')->OrderBy('alumnas.curso')->OrderBy('alumnas.letra')->OrderBy('alumnas.apellidos')->OrderBy('alumnas.nombres')->paginate(20);

           // $alumnas = Alumna::where($criterio,'like','%'.$buscar.'%')->OrderBy('curso')->OrderBy('letra')->OrderBy('apellidos')->OrderBy('nombres')->paginate(20);
        }


        return [
            'pagination' => [
                'total' => $psicologas->total(),
                'current_page' => $psicologas->currentPage(),
                'per_page' => $psicologas->perPage(),
                'last_page' => $psicologas->lastpage(),
                'from' => $psicologas->firstItem(),
                'to' => $psicologas->lastItem(),
            ],
            'psicologas' =>$psicologas

   
        ];
    }
 
/*      public function mostrarDetalle(request $request)
    {
        $det_psicologas=Det_orientadora::all();

        return $det_psicologas;
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

        $psicologas = new Psicologa();
        $psicologas->idalumna=$request->idalumna;
        $psicologas->derivadopor=$request->derivadopor;
        $psicologas->Motivo=$request->motivo;
        
        $psicologas->antecedentes=$request->antecedentes;
        $psicologas->condicion='1';
        $psicologas->save();
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

        $psicologas = Psicologa::findOrFail($request->id);
        $psicologas->idalumna=$request->idalumna;
        $psicologas->derivadopor=$request->derivadopor;
        $psicologas->Motivo=$request->motivo;
        $psicologas->condicion='1';
        $psicologas->save();
    }

    public function cerrar(Request $request)
    {
        if(!$request->ajax()) return redirect('/');

        $psicologas = Psicologa::findOrFail($request->id);
        $psicologas->condicion='0';
        $psicologas->save();
    }

    public function reabrir(Request $request)
    {
        if(!$request->ajax()) return redirect('/');

        $psicologas = Psicologa::findOrFail($request->id);
        $psicologas->condicion='1';
        $psicologas->save();
    }
}
