<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Orientadora;
//use App\Det_orientadora;
use Illuminate\Support\Facades\Redirect;

class OrientadoraController extends Controller
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
            $orientadoras = Orientadora::join('alumnas','orientadoras.idalumna','=','alumnas.id')
            ->select('alumnas.curso','alumnas.letra','alumnas.apellidos','alumnas.nombres','orientadoras.id','orientadoras.derivadopor','orientadoras.motivo','orientadoras.antecedentes','orientadoras.idalumna')
            ->OrderBy('alumnas.curso')->OrderBy('alumnas.letra')->OrderBy('alumnas.apellidos')->OrderBy('alumnas.nombres')->paginate(20);
        }
        else{
            $orientadoras = Orientadora::join('alumnas','orientadoras.idalumna','=','alumnas.id')
            ->select('alumnas.curso','alumnas.letra','alumnas.apellidos','alumnas.nombres','orientadoras.id','orientadoras.derivadopor','orientadoras.motivo','orientadoras.antecedentes')
            ->where('alumnas.'.$criterio,'like','%' . $buscar .'%')->OrderBy('alumnas.curso')->OrderBy('alumnas.letra')->OrderBy('alumnas.apellidos')->OrderBy('alumnas.nombres')->paginate(20);

           // $alumnas = Alumna::where($criterio,'like','%'.$buscar.'%')->OrderBy('curso')->OrderBy('letra')->OrderBy('apellidos')->OrderBy('nombres')->paginate(20);
        }


        return [
            'pagination' => [
                'total' => $orientadoras->total(),
                'current_page' => $orientadoras->currentPage(),
                'per_page' => $orientadoras->perPage(),
                'last_page' => $orientadoras->lastpage(),
                'from' => $orientadoras->firstItem(),
                'to' => $orientadoras->lastItem(),
            ],
            'orientadoras' =>$orientadoras

   
        ];
    }
 
/*      public function mostrarDetalle(request $request)
    {
        $det_orientadoras=Det_orientadora::all();

        return $det_orientadoras;
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

        $orientadoras = new Orientadora();
        $orientadoras->idalumna=$request->idalumna;
        $orientadoras->derivadopor=$request->derivadopor;
        $orientadoras->Motivo=$request->motivo;
        
        $orientadoras->antecedentes=$request->antecedentes;
        $orientadoras->condicion='1';
        $orientadoras->save();
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
        // if(!$request->ajax()) return redirect('/');

        $orientadoras = Orientadora::findOrFail($request->id);
        $orientadoras->idalumna=$request->idalumna;
        $orientadoras->derivadopor=$request->derivadopor;
        $orientadoras->Motivo=$request->motivo;
        $orientadoras->condicion='1';
        $orientadoras->save();
    }

    public function cerrar(Request $request)
    {
        if(!$request->ajax()) return redirect('/');

        $orientadoras = Orientadora::findOrFail($request->id);
        $orientadoras->condicion='0';
        $orientadoras->save();
    }

    public function reabrir(Request $request)
    {
        // if(!$request->ajax()) return redirect('/');

        $orientadoras = Orientadora::findOrFail($request->id);
        $orientadoras->condicion='1';
        $orientadoras->save();
    }
}
