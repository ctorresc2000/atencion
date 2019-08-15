<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Maatwebsite\Excel\Facades\Excel;

use App\Imports\AlumnasImport;

use App\Alumna;
class ImportarController extends Controller
{
    public function importExcel(Request $request)
    {
        $file = $request -> file('file');
        Excel::import(new AlumnasImport, $file);
        /* return view('contenido/contenido'); */
        return back()->with('message', 'Importanción de Alumnas completada');
    } 

        
}
