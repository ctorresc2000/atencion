<?php

namespace App\Http\Controllers;
use App\User;
//use App\Rol;

use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index(request $request)
    {
        if(!$request->ajax()) return redirect('/');

        $buscar = $request->buscar;
        $criterio = $request->criterio;

        if ($buscar==''){
            $usuarios = User::join('roles','users.idrol','roles.id')
            ->select('users.id','users.usuario','users.nombreusuario','users.idrol','users.password','users.condicion','roles.nombre')->paginate(20);
        }
        else{
            $usuarios = User::join('roles','users.idrol','roles.id')
            ->select('users.id','users.usuario','users.idrol','users.nombreusuario','users.password','users.condicion','roles.nombre')->paginate(20);
        }

 //       $roles = Rol::select('roles.id'.'roles.nombre');

        return [
            'pagination' => [
                'total' => $usuarios->total(),
                'current_page' => $usuarios->currentPage(),
                'per_page' => $usuarios->perPage(),
                'last_page' => $usuarios->lastpage(),
                'from' => $usuarios->firstItem(),
                'to' => $usuarios->lastItem(),
            ],
            'usuarios' =>$usuarios
        ];
    }

    public function store(Request $request)
    {
        if(!$request->ajax()) return redirect('/');

        $usuarios = new User();
        $usuarios->usuario=$request->usuario;
        $usuarios->idrol=$request->idrol;
        //$usuarios->nombre = $request->nombre;
        $usuarios->nombreusuario = $request->nombreusuario;
        $usuarios->password= bcrypt($request->password);
        $usuarios->condicion='1';
        $usuarios->save();
    }

    public function update(Request $request)
    {
        if(!$request->ajax()) return redirect('/');
        
        $usuarios = User::findOrFail($request->id);
        $usuarios->usuario=$request->usuario;
        $usuarios->idrol=$request->idrol;
        $usuarios->nombreusuario = $request->nombreusuario;
        $usuarios->save();
    }

    public function desactivar(Request $request)
    {
        if(!$request->ajax()) return redirect('/');

        $usuarios = User::findOrFail($request->id);
        $usuarios->condicion='0';
        $usuarios->save();
    }

    public function asignarPassword(Request $request)
    {
        if(!$request->ajax()) return redirect('/');

        $usuarios = User::findOrFail($request->id);
        $usuarios->password= bcrypt($request->password);
        $usuarios->save();
    }

    public function activar(Request $request)
    {
        if(!$request->ajax()) return redirect('/');

        $usuarios = User::findOrFail($request->id);
        $usuarios->condicion='1';
        $usuarios->save();
    }
}
