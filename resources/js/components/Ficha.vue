<template>
    <main class="main">
        <!-- <vuejs-datepicker :language="es"></vuejs-datepicker> -->
        <!-- Breadcrumb -->
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/">Escritorio</a></li>
        </ol>
        <div class="container-fluid">
            <!-- Ejemplo de tabla Listado -->
            <div class="card">
                <div class="card-header">
                    <i class="fa fa-align-justify"></i> Ficha Alumna
                </div>

                <div class="card-body">
                    <h1 class="text-center">Ficha Alumna</h1><br><br>
                    <h3 class="">Antecedentes Alumna</h3><br>
                        <form>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="">Apellidos</label>
                                    <input type="text" class="form-control" id="" placeholder="Apellidos">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="">Nombres</label>
                                    <input type="text" class="form-control" id="" placeholder="Nombres">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-3">
                                    <label for="">Fecha Nac.</label>
                                    <input type="date" class="form-control" id="" placeholder="">
                                </div>
                                <div class="form-group col-md-1">
                                    <label for="">Edad</label>
                                    <input type="text" class="form-control" id="" placeholder="edad">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="">Run</label>
                                    <input type="text" class="form-control" id="" placeholder="Rut">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="">Nacionalidad</label>
                                    <input type="text" class="form-control" id="" placeholder="nacionaliad">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-5">
                                    <label for="">Dirección</label>
                                    <input type="text" class="form-control" id="" placeholder="direccion">
                                </div>
                                <div class="form-group col-md-3">
                                    <label for="">Comuna</label>
                                    <input type="text" class="form-control" id="" placeholder="comiuna">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="">N° Celular</label>
                                    <input type="text" class="form-control" id="" placeholder="celular">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-5">
                                    <label for="">NEE (SI/NO) - Dificultad en Asignatura</label>
                                    <input type="text" class="form-control" id="" placeholder="NEE">
                                </div>
                                <div class="form-group col-md-7">
                                    <label for="">Estado Salud - Enfermedades Alergias</label>
                                    <input type="text" class="form-control" id="" placeholder="Salud">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-8">
                                    <label for="">Colegio Procedencia</label>
                                    <input type="text" class="form-control" id="" placeholder="Colegio">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="">Comuna</label>
                                    <input type="text" class="form-control" id="" placeholder="comuna">
                                </div>
                            </div>
                           <br> <h3 class="">Antecedentes Apoderado</h3><br>
                            <div class="form-row">
                                <div class="form-group col-md-9">
                                    <label for="">Nombre</label>
                                    <input type="text" class="form-control" id="" placeholder="Nombre">
                                </div>
                                <div class="form-group col-md-3">
                                    <label for="">Rut</label>
                                    <input type="text" class="form-control" id="" placeholder="rut">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-3">
                                    <label for="">Parentesco</label>
                                    <input type="text" class="form-control" id="" placeholder="parentezco">
                                </div>
                                <div class="form-group col-md-3">
                                    <label for="">Est. Civil</label>
                                    <input type="text" class="form-control" id="" placeholder="Estado Civil">
                                </div>
                                <div class="form-group col-md-3">
                                    <label for="">Nacionalidad</label>
                                    <input type="text" class="form-control" id="" placeholder="nacionalidad">
                                </div>
                                <div class="form-group col-md-3">
                                    <label for="">Religión</label>
                                    <input type="text" class="form-control" id="" placeholder="religion">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-5">
                                    <label for="">Dirección</label>
                                    <input type="text" class="form-control" id="" placeholder="direccion">
                                </div>
                                <div class="form-group col-md-3">
                                    <label for="">Comuna</label>
                                    <input type="text" class="form-control" id="" placeholder="comuna">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="">Teléfonos</label>
                                    <input type="text" class="form-control" id="" placeholder="teelfono">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="">Ocupación</label>
                                    <input type="text" class="form-control" id="" placeholder="ocupacion">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="">Correo Electrónico</label>
                                    <input type="email" class="form-control" id="" placeholder="email">
                                </div>
                            </div>
                           <br> <h3 class="">Apoderado Suplente</h3><br>
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="">Nombre</label>
                                    <input type="text" class="form-control" id="" placeholder="nombre">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="">Parentesco</label>
                                    <input type="text" class="form-control" id="" placeholder="parentesco">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="">Teléfono</label>
                                    <input type="text" class="form-control" id="" placeholder="telefono">
                                </div>
                            </div>
                            <br><h3 class="">En Caso de Emergencia</h3><br>
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="">Nombre</label>
                                    <input type="text" class="form-control" id="" placeholder="nombre">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="">Parentesco</label>
                                    <input type="text" class="form-control" id="" placeholder="parentesco">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="">Teléfono</label>
                                    <input type="text" class="form-control" id="" placeholder="telefono">
                                </div>
                            </div><br>
                            
                            <button type="submit" class="btn btn-primary">Guardar</button>&nbsp;&nbsp;
                            <button type="submit" class="btn btn-warning">Imprimir</button>
                        </form>
                </div>
            </div>
            <!-- Fin ejemplo de tabla Listado -->
        </div>
    </main>
</template>
