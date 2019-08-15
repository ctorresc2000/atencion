@extends('principal')
@extends('contenido')
@section('files')
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
                    <input type="file" name="file"  class="form-control">
                    <br>
                    <button class="btn btn-success">Importar</button>
                </form>
            </div>
        </div>
    </div>
@endsection
