<!DOCTYPE>
<html>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Reporte Atenciones</title>
    <style>
        body {
        /*position: relative;*/
        /*width: 16cm;  */
        /*height: 29.7cm; */
        /*margin: 0 auto; */
        /*color: #555555;*/
        /*background: #FFFFFF; */
        font-family: Arial, sans-serif; 
        font-size: 14px;
        /*font-family: SourceSansPro;*/
        }

        #logo{
        float: left;
        margin-top: 1%;
        margin-left: 2%;
        margin-right: 2%;
        }

        #imagen{
        width: 100px;
        }

        #datos{
        float: left;
        margin-top: 0%;
        margin-left: 2%;
        margin-right: 2%;
        /*text-align: justify;*/
        }

        #encabezado{
        text-align: center;
        margin-left: 10%;
        margin-right: 35%;
        font-size: 15px;
        }

        #fact{
        /*position: relative;*/
        float: right;
        margin-top: 2%;
        margin-left: 2%;
        margin-right: 2%;
        font-size: 20px;
        }

        section{
        clear: left;
        }

        #cliente{
        text-align: left;
        }

        #facliente{
        width: 40%;
        border-collapse: collapse;
        border-spacing: 0;
        margin-bottom: 15px;
        }

        #fac, #fv, #fa{
        color: #FFFFFF;
        font-size: 15px;
        }

        #facliente thead{
        padding: 20px;
        background: #2183E3;
        text-align: left;
        border-bottom: 1px solid #FFFFFF;  
        }

        #facvendedor{
        width: 100%;
        border-collapse: collapse;
        border-spacing: 0;
        margin-bottom: 15px;
        }

        #facvendedor thead{
        padding: 20px;
        background: #2183E3;
        text-align: center;
        border-bottom: 1px solid #FFFFFF;  
        }

        #facarticulo{
        width: 100%;
        border-collapse: collapse;
        border-spacing: 0;
        margin-bottom: 15px;
        }

        #facarticulo thead{
        padding: 20px;
        background: #2183E3;
        text-align: center;
        border-bottom: 1px solid #FFFFFF;  
        }

        #gracias{
        text-align: center; 
        }
    </style>
    
    <body>
        @foreach ($alumnas as $alum)     
            <header>
                <div id="logo">
                    {{--  <img src="../public_html/pai/img/logo2.png" alt="LTSM" id="imagen">  --}} {{--  Cuando es en red  --}}
                    <img src="img/logo2.png" alt="LTSM" id="imagen"> {{--  Cuando es en Local  --}}
                </div>
                <div id="datos">
                    <p id="encabezado">
                        <b>Liceo Técnico San Miguel</b><br>Gran Avenida Jose Miguel Carrera 4688, San Miguel<br>Telefono:(+56)227637910<br>Email:liceo.a100@romanosxii.org
                    </p>
                </div>
            </header>
            <br>
            <section>
                <div>
                    <table id="facliente">
                        <thead>                        
                            <tr>
                                <th id="fac">Alumna</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><p id="cliente">Srta {{$alum->nombres}} {{$alum->apellidos}}<br>
                                Curso: {{$alum->curso}} {{$alum->letra}}
                            </tr>
                        </tbody>
                    </table>
                </div>
            </section>
        @endforeach 

        @if (count($orientadora) > 0)
            <section>
                <div>
                    <h2 align="center">Atenciones Orientadora</h2>
                    <table id="facvendedor">
                        <thead>
                            <tr id="fv">
                                <th>Fecha</th>
                                <th>Observacion</th>
                            </tr>
                        </thead>
                        <tbody>
                        @foreach ($orientadora as $orient)    
                            @if ($orient->visible==0 || Auth::user()->idrol == 9)
                                <tr>
                                    <td>{{$orient->fecha}}</td>
                                    <td>{{$orient->observacion}}</td>
                                </tr>    
                            @endif
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </section>            
        @endif
        @if (count($psicologa) > 0)
            <section>
                <div>
                    <h2 align="center">Atenciones Psicologa</h2>
                    <table id="facvendedor">
                        <thead>
                            <tr id="fv">
                                <th>Fecha</th>
                                <th>Observacion</th>
                            </tr>
                        </thead>
                        <tbody>
                        @foreach ($psicologa as $orient)
                            @if ($orient->visible==0 || Auth::user()->idrol == 9)
                                <tr>
                                    <td>{{$orient->fecha}}</td>
                                    <td>{{$orient->observacion}}</td>
                                </tr>    
                            @endif
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </section>
        @endif
        @if (count($visitadora) > 0)
            <section>
                <div>
                    <h2 align="center">Atenciones Trabajadora Social</h2>
                    <table id="facvendedor">
                        <thead>
                            <tr id="fv">
                                <th>Fecha</th>
                                <th>Observacion</th>
                            </tr>
                        </thead>
                        <tbody>
                        @foreach ($visitadora as $orient)
                            @if ($orient->visible==0 || Auth::user()->idrol == 9)
                                <tr>
                                    <td>{{$orient->fecha}}</td>
                                    <td>{{$orient->observacion}}</td>
                                </tr>    
                            @endif
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </section>
        @endif
        @if (count($convivencia) > 0)
            <section>
                <div>
                    <h2 align="center">Atenciones Convivencia Escolar</h2>
                    <table id="facvendedor">
                        <thead>
                            <tr id="fv">
                                <th>Fecha</th>
                                <th>Observacion</th>
                            </tr>
                        </thead>
                        <tbody>
                        @foreach ($convivencia as $orient)
                            @if ($orient->visible==0 || Auth::user()->idrol == 9)
                                <tr>
                                    <td>{{$orient->fecha}}</td>
                                    <td>{{$orient->observacion}}</td>
                                </tr>    
                            @endif
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </section>            
        @endif
        @if (Count($gestion) > 0)
            <section>
                <div>
                    <h2 align="center">Atenciones Gestión Curricular</h2>
                    <table id="facvendedor">
                        <thead>
                            <tr id="fv">
                                <th>Fecha</th>
                                <th>Observacion</th>
                            </tr>
                        </thead>
                        <tbody>
                        @foreach ($gestion as $orient)
                            @if ($orient->visible==0 || Auth::user()->idrol == 9)
                                <tr>
                                    <td>{{$orient->fecha}}</td>
                                    <td>{{$orient->observacion}}</td>
                                </tr>    
                            @endif
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </section>            
        @endif
        @if (count($terapeuta) > 0)
            <section>
                <div>
                    <h2 align="center">Atenciones Terapeuta Ocupacional</h2>
                    <table id="facvendedor">
                        <thead>
                            <tr id="fv">
                                <th>Fecha</th>
                                <th>Observacion</th>
                            </tr>
                        </thead>
                        <tbody>
                        @foreach ($terapeuta as $orient)
                            @if ($orient->visible==0 || Auth::user()->idrol == 9)
                                <tr>
                                    <td>{{$orient->fecha}}</td>
                                    <td>{{$orient->observacion}}</td>
                                </tr>    
                            @endif
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </section>            
        @endif
        @if (count($educadora) > 0)
            <section>
                <div>
                    <h2 align="center">Atenciones Edcuadora Diferencial</h2>
                    <table id="facvendedor">
                        <thead>
                            <tr id="fv">
                                <th>Fecha</th>
                                <th>Observacion</th>
                            </tr>
                        </thead>
                        <tbody>
                        @foreach ($educadora as $orient)
                            @if ($orient->visible==0 || Auth::user()->idrol == 9)
                                <tr>
                                    <td>{{$orient->fecha}}</td>
                                    <td>{{$orient->observacion}}</td>
                                </tr>    
                            @endif
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </section>            
        @endif
          
    </body>
</html>