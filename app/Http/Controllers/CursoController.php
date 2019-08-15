<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Curso;

class CursoController extends Controller
{
    public function index(request $request)
    {
        if(!$request->ajax()) return redirect('/');

        $cursos = Curso::OrderBy('curso','asc')->paginate(100);

        return [
            'pagination' => [
                'total' => $cursos->total(),
                'current_page' => $cursos->currentPage(),
                'per_page' => $cursos->perPage(),
                'last_page' => $cursos->lastpage(),
                'from' => $cursos->firstItem(),
                'to' => $cursos->lastItem(),
            ],
            'cursos' =>$cursos
        ];
    }

    public function store(Request $request)
    {
        if(!$request->ajax()) return redirect('/');

        $curso = new Curso();
        $curso->curso=$request->curso;
        $curso->condicion='1';
        $curso->save();
    }

    public function update(Request $request)
    {
        if(!$request->ajax()) return redirect('/');
        
        $curso = Curso::findOrFail($request->id);
        $curso->curso=$request->curso;
        $curso->save();
    }

    public function desactivar(Request $request)
    {
        if(!$request->ajax()) return redirect('/');
        
        $curso = Curso::findOrFail($request->id);
        $curso->condicion='0';
        $curso->save();
    }

    public function activar(Request $request)
    {
        if(!$request->ajax()) return redirect('/');
        
        $curso = Curso::findOrFail($request->id);
        $curso->condicion='1';
        $curso->save();
    }
}
