<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Mail;
use Redirect;

class EmailController extends Controller
{
    public function contact(Request $request){
        $correoDestino = $request->destino;
        $subject = "Derivación de Alumna";
        $for = $correoDestino;
        Mail::send('email',$request->all(), function($msj) use($subject,$for){
            $msj->from("derivaciones.ltsm@gmail.com","Derivaciones");
            $msj->subject($subject);
            $msj->to($for);
            
        });
        return redirect()->back();
    }
}
