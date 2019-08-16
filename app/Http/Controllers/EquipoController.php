<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Equipo;
use Carbon\Carbon;

class EquipoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(request $request)
    {
        if(!$request->ajax()) return redirect('/');// if(!$request->ajax()) return redirect('/');

        $buscar = $request->buscar;
        $criterio = $request->criterio;

        if ($buscar==''){
            $equipos = Equipo::join('alumnas','equipos.idalumna','=','alumnas.id')
            ->select('alumnas.curso','alumnas.letra','alumnas.apellidos','alumnas.nombres','equipos.id','equipos.derivadopor','equipos.motivo','equipos.antecedentes','equipos.idalumna')
            ->OrderBy('alumnas.curso')->OrderBy('alumnas.letra')->OrderBy('alumnas.apellidos')->OrderBy('alumnas.nombres')->paginate(20);
        }
        else{
            $equipos = Equipo::join('alumnas','equipos.idalumna','=','alumnas.id')
            ->select('alumnas.curso','alumnas.letra','alumnas.apellidos','alumnas.nombres','equipos.id','equipos.derivadopor','equipos.motivo','equipos.antecedentes')
            ->where('alumnas.'.$criterio,'like','%' . $buscar .'%')->OrderBy('alumnas.curso')->OrderBy('alumnas.letra')->OrderBy('alumnas.apellidos')->OrderBy('alumnas.nombres')->paginate(20);

           // $alumnas = Alumna::where($criterio,'like','%'.$buscar.'%')->OrderBy('curso')->OrderBy('letra')->OrderBy('apellidos')->OrderBy('nombres')->paginate(20);
        }


        return [
            'pagination' => [
                'total' => $equipos->total(),
                'current_page' => $equipos->currentPage(),
                'per_page' => $equipos->perPage(),
                'last_page' => $equipos->lastpage(),
                'from' => $equipos->firstItem(),
                'to' => $equipos->lastItem(),
            ],
            'equipos' =>$equipos

   
        ];
    }
 
/*      public function mostrarDetalle(request $request)
    {
        $det_equipos=Det_Equipo::all();

        return $det_equipos;
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

        $equipos = new Equipo();
        $equipos->idalumna=$request->idalumna;
        $equipos->derivadopor=$request->derivadopor;
        $equipos->Motivo=$request->motivo;
        $equipos->fechaderivacion=$fecha; /* $request->fechaDerivacionOrientadora; */
        $equipos->antecedentes=$request->antecedentes;
        $equipos->condicion='1';
        $equipos->save();
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

        $equipos = Equipo::findOrFail($request->id);
        $equipos->idalumna=$request->idalumna;
        $equipos->derivadopor=$request->derivadopor;
        $equipos->Motivo=$request->motivo;
        $equipos->condicion='1';
        $equipos->save();
    }

    public function cerrar(Request $request)
    {
        if(!$request->ajax()) return redirect('/');

        $equipos = Equipo::findOrFail($request->id);
        $equipos->condicion='0';
        $equipos->save();
    }

    public function reabrir(Request $request)
    {
        if(!$request->ajax()) return redirect('/');

        $equipos = Equipo::findOrFail($request->id);
        $equipos->condicion='1';
        $equipos->save();
    }
}
