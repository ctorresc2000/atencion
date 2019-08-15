<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Educadora;

class EducadoraController extends Controller
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
            $educadoras = Educadora::join('alumnas','educadoras.idalumna','=','alumnas.id')
            ->select('alumnas.curso','alumnas.letra','alumnas.apellidos','alumnas.nombres','educadoras.id','educadoras.derivadopor','educadoras.motivo','educadoras.antecedentes','educadoras.idalumna')
            ->OrderBy('alumnas.curso')->OrderBy('alumnas.letra')->OrderBy('alumnas.apellidos')->OrderBy('alumnas.nombres')->paginate(20);
        }
        else{
            $educadoras = Educadora::join('alumnas','educadoras.idalumna','=','alumnas.id')
            ->select('alumnas.curso','alumnas.letra','alumnas.apellidos','alumnas.nombres','educadoras.id','educadoras.derivadopor','educadoras.motivo','educadoras.antecedentes')
            ->where('alumnas.'.$criterio,'like','%' . $buscar .'%')->OrderBy('alumnas.curso')->OrderBy('alumnas.letra')->OrderBy('alumnas.apellidos')->OrderBy('alumnas.nombres')->paginate(20);

           // $alumnas = Alumna::where($criterio,'like','%'.$buscar.'%')->OrderBy('curso')->OrderBy('letra')->OrderBy('apellidos')->OrderBy('nombres')->paginate(20);
        }


        return [
            'pagination' => [
                'total' => $educadoras->total(),
                'current_page' => $educadoras->currentPage(),
                'per_page' => $educadoras->perPage(),
                'last_page' => $educadoras->lastpage(),
                'from' => $educadoras->firstItem(),
                'to' => $educadoras->lastItem(),
            ],
            'educadoras' =>$educadoras

   
        ];
    }
 
/*      public function mostrarDetalle(request $request)
    {
        $det_educadoras=Det_Educadora::all();

        return $det_educadoras;
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

        $educadoras = new Educadora();
        $educadoras->idalumna=$request->idalumna;
        $educadoras->derivadopor=$request->derivadopor;
        $educadoras->Motivo=$request->motivo;
        
        $educadoras->antecedentes=$request->antecedentes;
        $educadoras->condicion='1';
        $educadoras->save();
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

        $educadoras = Educadora::findOrFail($request->id);
        $educadoras->idalumna=$request->idalumna;
        $educadoras->derivadopor=$request->derivadopor;
        $educadoras->Motivo=$request->motivo;
        $educadoras->condicion='1';
        $educadoras->save();
    }

    public function cerrar(Request $request)
    {
        if(!$request->ajax()) return redirect('/');

        $educadoras = Educadora::findOrFail($request->id);
        $educadoras->condicion='0';
        $educadoras->save();
    }

    public function reabrir(Request $request)
    {
        if(!$request->ajax()) return redirect('/');

        $educadoras = Educadora::findOrFail($request->id);
        $educadoras->condicion='1';
        $educadoras->save();
    }
}
