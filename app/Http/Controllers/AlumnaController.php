<?php

namespace App\Http\Controllers;

/* namespace App\Imports; */

use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;

use App\Imports\AlumnasImport;
use Carbon\Carbon;

use App\Alumna;

use SebastianBergmann\Environment\Console;
use Symfony\Component\Console\Logger\ConsoleLogger;

/* use Maatwebsite\Excel\Facades\Excel; */

class AlumnaController extends Controller
{
    /***
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
            $alumnas = Alumna::OrderBy('curso')->OrderBy('apellidos')->OrderBy('nombres')->paginate(20);
        }
        else{
            $alumnas = Alumna::where($criterio,'like','%'.$buscar.'%')->OrderBy('curso')->OrderBy('apellidos')->OrderBy('nombres')->paginate(20);
        }
   
        return [
            'pagination' => [
                'total' => $alumnas->total(),
                'current_page' => $alumnas->currentPage(),
                'per_page' => $alumnas->perPage(),
                'last_page' => $alumnas->lastpage(),
                'from' => $alumnas->firstItem(),
                'to' => $alumnas->lastItem(), 
            ],
            'alumnas' =>$alumnas
        ];
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
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

        $alumna = new Alumna();
        $alumna->rut=$request->rut;
        $alumna->digito=$request->digito;
        $alumna->apellidos=$request->apellidos;
        $alumna->nombres=$request->nombres;
        $alumna->curso=$request->curso;
        $alumna->d_or='0';
        $alumna->d_psic='0';
        $alumna ->d_vsoc='0';
        $alumna->d_cesc='0';
        $alumna->d_egest='0';
        $alumna->d_ter='0';
        $alumna->d_edif='0';
        $alumna->condicion='1';
        $alumna->atendido="NO";
        $alumna->save();
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
    public function retirar(Request $request)
    {
        if(!$request->ajax()) return redirect('/');


       /*  $fecha= Carbon::now($request->fecharetiro);
        $fecha=$fecha->createFromFormat('d-m-Y',"America/Santiago");
        $fecha->setTimezone('UTC'); */

        $alumna = Alumna::findOrFail($request->id);
        $alumna->fecharetiro=$request->fecharetiro;
        $alumna->condicion='0';
        $alumna->save();
    }

    public function reincorporar(Request $request)
    {
        if(!$request->ajax()) return redirect('/');

        $alumna = Alumna::findOrFail($request->id);
        $alumna->condicion='1';
        $alumna->save();
    }

    public function normal(Request $request)
    {
        if(!$request->ajax()) return redirect('/');

        $alumna = Alumna::findOrFail($request->id);
        $alumna->tipoalumno='0';
        $alumna->save();
    }

    public function prioritario(Request $request)
    {
        if(!$request->ajax()) return redirect('/');

        $alumna = Alumna::findOrFail($request->id);
        $alumna->tipoalumno='1';
        $alumna->save();
    }

    public function preferente(Request $request)
    {
        if(!$request->ajax()) return redirect('/');

        $alumna = Alumna::findOrFail($request->id);
        $alumna->tipoalumno='2';
        $alumna->save();
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        if(!$request->ajax()) return redirect('/');
        
        $alumna = Alumna::findOrFail($request->id);
        $alumna->rut=$request->rut;
        $alumna->digito=$request->digito;
        $alumna->apellidos=$request->apellidos;
        $alumna->nombres=$request->nombres;
        $alumna->curso=$request->curso;
        $alumna->save();
    }

    public function derivar(Request $request)
    {
        if(!$request->ajax()) return redirect('/');

        $alumna = Alumna::findOrFail($request->id);
        $alumna->d_or='1';
        $alumna->atendido="SI";
        $alumna->save();
    }

    public function derivarP(Request $request)
    {
        if(!$request->ajax()) return redirect('/');

        $alumna = Alumna::findOrFail($request->id);
        $alumna->d_psic='1';
        $alumna->atendido="SI";
        $alumna->save();
    }
    public function derivarV(Request $request)
    {
        if(!$request->ajax()) return redirect('/');

        $alumna = Alumna::findOrFail($request->id);
        $alumna->d_vsoc='1';
        $alumna->atendido="SI";
        $alumna->save();
    }
    public function derivarC(Request $request)
    {
        
        if(!$request->ajax()) return redirect('/');

        $alumna = Alumna::findOrFail($request->id);
        $alumna->d_cesc='1';
        $alumna->atendido="SI";
        $alumna->save();
    }
    public function derivarG(Request $request)
    {
        if(!$request->ajax()) return redirect('/');

        $alumna = Alumna::findOrFail($request->id);
        $alumna->d_egest='1';
        $alumna->atendido="SI";
        $alumna->save();
    }
    public function derivarT(Request $request)
    {
        if(!$request->ajax()) return redirect('/');

        $alumna = Alumna::findOrFail($request->id);
        $alumna->d_ter='1';
        $alumna->atendido="SI";
        $alumna->save();
    }
    public function derivarE(Request $request)
    {
        if(!$request->ajax()) return redirect('/');
        
        $alumna = Alumna::findOrFail($request->id);
        $alumna->d_edif='1';
        $alumna->atendido="SI";
        $alumna->save();
    }

    public function importExcel(Request $request)
    {
        $file = $request->file('file');
        
        Excel::import(new AlumnasImport, $file);
         
        return back();
    } 


}
