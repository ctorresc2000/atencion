@extends('principal')
@section('contenido')

    @if(Auth::check())
        @if (Auth::user()->idrol == 1)
            <template v-if="menu==0">
                <escritorio {{--  :ruta="ruta"  --}}></escritorio>
            </template>

            <template v-if="menu==1">
                <alumna {{--  :ruta="ruta"  --}}></alumna>
            </template>     

            <template v-if="menu==12">
                <reportes {{--  :ruta="ruta"  --}}></reportes>
            </template> 

        @elseif (Auth::user()->idrol == 2)
            <template v-if="menu==0">
                <escritorio {{--  :ruta="ruta"  --}}></escritorio>
            </template>

            <template v-if="menu==1">
                <alumna {{--  :ruta="ruta"  --}}></alumna>
            </template>

            <template v-if="menu==3">
                <orientadora {{--  :ruta="ruta"  --}}></orientadora>
            </template>

            <template v-if="menu==12">
                <reportes {{--  :ruta="ruta"  --}}></reportes>
            </template>   

        @elseif (Auth::user()->idrol == 3)
            <template v-if="menu==0">
                <escritorio {{--  :ruta="ruta"  --}}></escritorio>
            </template>
            <template v-if="menu==1">
                <alumna {{--  :ruta="ruta"  --}}></alumna>
            </template>
            <template v-if="menu==4">
                <psicologa {{--  :ruta="ruta"  --}}></psicologa>
            </template>   
            <template v-if="menu==12">
                <reportes {{--  :ruta="ruta"  --}}></reportes>
            </template>                  
        @elseif (Auth::user()->idrol == 4)
            <template v-if="menu==0">
                <escritorio {{--  :ruta="ruta"  --}}></escritorio>
            </template>
            <template v-if="menu==1">
                <alumna {{--  :ruta="ruta"  --}}></alumna>
            </template>
            <template v-if="menu==5">
                <vsocial {{--  :ruta="ruta"  --}}></vsocial>
            </template> 
            <template v-if="menu==12">
                <reportes {{--  :ruta="ruta"  --}}></reportes>
            </template>         
        @elseif (Auth::user()->idrol == 5)
            <template v-if="menu==0">
                <escritorio {{--  :ruta="ruta"  --}}></escritorio>
            </template>
            <template v-if="menu==1">
                <alumna {{--  :ruta="ruta"  --}}></alumna>
            </template>
            <template v-if="menu==6">
                <convivencia {{--  :ruta="ruta"  --}}></convivencia>
            </template> 
            <template v-if="menu==12">
                <reportes {{--  :ruta="ruta"  --}}></reportes>
            </template>             
        @elseif (Auth::user()->idrol == 6)
            <template v-if="menu==0">
                <escritorio {{--  :ruta="ruta"  --}}></escritorio>
            </template>
            <template v-if="menu==1">
                <alumna {{--  :ruta="ruta"  --}}></alumna>
            </template>
            <template v-if="menu==7">
                 <gestion {{--  :ruta="ruta"  --}}></gestion>
            </template> 
            <template v-if="menu==12">
                <reportes {{--  :ruta="ruta"  --}}></reportes>
            </template>             
        @elseif (Auth::user()->idrol == 7)
            <template v-if="menu==0">
                <escritorio {{--  :ruta="ruta"  --}}></escritorio>
            </template>
            <template v-if="menu==1">
                <alumna {{--  :ruta="ruta"  --}}></alumna>
            </template>
            <template v-if="menu==8">
                <terapeuta {{--  :ruta="ruta"  --}}></terapeuta>
            </template> 
            <template v-if="menu==12">
                <reportes {{--  :ruta="ruta"  --}}></reportes>
            </template>             
        @elseif (Auth::user()->idrol == 8)
            <template v-if="menu==0">
                <escritorio {{--  :ruta="ruta"  --}}></escritorio>
            </template>
            <template v-if="menu==1">
                <alumna {{--  :ruta="ruta"  --}}></alumna>
            </template>
            <template v-if="menu==9">
                <educadora {{--  :ruta="ruta"  --}}></educadora>
            </template>  
            <template v-if="menu==12">
                <reportes {{--  :ruta="ruta"  --}}></reportes>
            </template>             
        @elseif (Auth::user()->idrol == 9)
            <template v-if="menu==0">
                <escritorio {{--  :ruta="ruta"  --}}></escritorio>
            </template>

            <template v-if="menu==1">
                <alumna {{--  :ruta="ruta"  --}}></alumna>
            </template>    

            <template v-if="menu==2">
               
                
                <main class="main">
                    
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="/">Importar</a></li>
                    </ol>
                    <div class="container-fluid">
                        <h1 class="text-center">Carga Masiva de Alumnas</h1><br>
                        <div class="card bg-ligth mt-3">
                            <div class="card-header">
                                Subir Archivos
                            </div>
                            <div class="card-body">
                                <form action="{{ route('subir') }}" method="post" enctype="multipart/form-data">
                                    @csrf
                                    @if(Session::has('message'))
                                            <p>{{ Session::get('message') }}</p>
                                    @endif    
                                    <input type="file" name="file" accept=".xlsx, .xls" class="form-control">
                                    <br>
                                    <button class="btn btn-success">Importar</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    
                </main>
            </template>    

            <template v-if="menu==3">
                <orientadora {{--  :ruta="ruta"  --}}></orientadora>
            </template>    

            <template v-if="menu==4">
                <psicologa {{--  :ruta="ruta"  --}}></psicologa>
            </template>    

            <template v-if="menu==5">
                <vsocial {{--  :ruta="ruta"  --}}></vsocial>
            </template>    

            <template v-if="menu==6">
                <convivencia {{--  :ruta="ruta"  --}}></convivencia>
            </template>    

            <template v-if="menu==7">
                <gestion {{--  :ruta="ruta"  --}}></gestion>
            </template>    

            <template v-if="menu==8">
                <terapeuta {{--  :ruta="ruta"  --}}></terapeuta>
            </template>    

            <template v-if="menu==9">
                <educadora {{--  :ruta="ruta"  --}}></educadora>
            </template>    

            <template v-if="menu==10">
                <user {{--  :ruta="ruta"  --}}></user>
            </template>    

            <template v-if="menu==11">
                <rol {{--  :ruta="ruta"  --}}></rol>
            </template>    
    
            <template v-if="menu==13">
                <reportedirectora {{--  :ruta="ruta"  --}}></reportedirectora>
            </template>  
    
            <template v-if="menu==14">
                <curso></curso>
            </template>             
        @else
        @endif
    @endif



@endsection
