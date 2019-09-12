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
            ->select('users.id','users.usuario','users.nombreusuario','users.idrol','users.password','users.condicion','roles.nombre','users.email')->paginate(20);
        }
        else{
            $usuarios = User::join('roles','users.idrol','roles.id')->
            where($criterio,'like','%'.$buscar.'%')->select('users.id','users.usuario','users.idrol','users.nombreusuario','users.password','users.condicion','roles.nombre','users.email')->paginate(20);
        }



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
        $usuarios->email = $request->email;
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
        $usuarios->email = $request->email;
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

    public function listar(request $request)
    {
        if(!$request->ajax()) return redirect('/');

        $orientadoras = User::OrderBy('nombreusuario','asc')->where('idrol','2')->paginate(50) ;
        $psicologas = User::OrderBy('nombreusuario','asc')->where('idrol','3')->paginate(50);
        $convivencias = User::OrderBy('nombreusuario','asc')->where('idrol','5')->paginate(50);
        $trabajadoras = User::OrderBy('nombreusuario','asc')->where('idrol','4')->paginate(50);
        $gestions = User::OrderBy('nombreusuario','asc')->where('idrol','6')->paginate(50);
        $educadoras = User::OrderBy('nombreusuario','asc')->where('idrol','8')->paginate(50);
        $terapeutas = User::OrderBy('nombreusuario','asc')->where('idrol','7')->paginate(50);

        return [
            'pagination' => [
                'total' => $orientadoras->total(),
                'current_page' => $orientadoras->currentPage(),
                'per_page' => $orientadoras->perPage(),
                'last_page' => $orientadoras->lastpage(),
                'from' => $orientadoras->firstItem(),
                'to' => $orientadoras->lastItem(),
            ],
            'orientadoras' =>$orientadoras,'psicologas' =>$psicologas,
                'convivencias' =>$convivencias,'trabajadoras' =>$trabajadoras,
                'gestions' =>$gestions,'educadoras' =>$educadoras,'terapeutas' =>$terapeutas
        ];
    }
}
