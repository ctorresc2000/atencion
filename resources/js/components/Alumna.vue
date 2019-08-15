<template>
    <main class="main">
        <!-- Breadcrumb -->
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/">Escritorio</a></li>
        </ol>
        <div class="container-fluid">
            <!-- Ejemplo de tabla Listado -->
            <div class="card">
                <div class="card-header">
                    <i class="fa fa-align-justify"></i> Alumnas
                    <button type="button" @click="abrirModal('alumna','registrar')" class="btn btn-secondary">
                        <i class="icon-plus"></i>&nbsp;Nuevo
                    </button>
                </div>

                <div class="card-body">
                    <div class="form-group row">
                        <div class="col-md-8">
                            <div class="input-group">
                                <select class="form-control col-md-2" v-model="criterio">
                                    <option value="rut">Rut</option>
                                    <option value="apellidos">Apellido</option>
                                    <option value="nombres">Nombre</option>
                                    <option value="curso">Curso</option>&nbsp;
                                </select>
                                <div class="col-md-2">
                                    <select class="form-control" v-model="buscar">
                                        <option value="0">Curso</option>
                                        <option v-for="cursos in arrayCurso" :key="cursos.id" :value="cursos.curso" v-text="cursos.curso"></option>
                                    </select>
                                </div>
                                <input type="text" v-model="buscar" @keyup.enter="listarAlumna(1,buscar,criterio)" class="form-control" placeholder="Texto a buscar (Rut sin digito)">&nbsp;&nbsp;                              
                                <button type="submit" @click="listarAlumna(1,buscar,criterio)" class="btn btn-primary"><i class="fa fa-search"></i> Buscar</button>&nbsp;&nbsp;
                                <button type="submit" @click="limpiarBusqueda()" class="btn btn-success"><i class="fas fa-broom"></i> Limpiar Búsqueda</button>
                            </div>
                        </div>
                    </div>
                    <table align="center" border="1" class="table table-bordered table-striped table-sm table-responsive">
                        <thead >
                            <tr >
                                <th width="50px">Opciones</th>
                                <th>Rut</th>
                                <th>Curso</th>
                                <th>Alumna</th>
                                <th title="Orientadora">1</th>
                                <th title="Psicóloga">2</th>
                                <th title="Visitadora Social">3</th>
                                <th title="Convivencia Escolar">4</th>
                                <th title="Equipo de Gestión">5</th>
                                <th title="Terapeuta Ocupacional">6</th>
                                <th title="Educadora Diferencial">7</th>
                                <th title="Tipo Alumna/o">Prioritario</th>
                                <th>Derivar</th>
                                <th>Estado</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr v-for="alumna in arrayAlumna" :key="alumna.id">
                                <td>
                                    <button type="button" @click="abrirModal('alumna','actualizar',alumna)" class="btn btn-warning btn-sm" title="Editar">
                                        <i class="icon-pencil"></i>
                                    </button> &nbsp;
                                    <div v-if="alumna.condicion">
                                        <button type="button" @click="abrirModalRetiro('alumna','retirar',alumna)" class="btn btn-danger btn-sm" title="Retirar">
                                        <i class="icon-trash"></i>
                                    </button>
                                    </div>
                                    <div v-else>
                                        <button type="button" @click="abrirModalRetiro('alumna','reincorporar',alumna)"  class="btn btn-info btn-sm" title="Reincorporar">
                                        <i class="icon-check"></i>
                                    </button>
                                    </div>
                                    
                                </td>
                                <td v-text="alumna.rut+'-'+alumna.digito"></td>
                                <td v-text="alumna.curso"></td>
                                <td v-text="alumna.apellidos +' '+ alumna.nombres"></td>
                                
                                <td title="Orientadora">
                                    <div v-if="alumna.d_or==1" class="badge badge-success">
                                        <span><i class="fas fa-check"></i></span>
                                    </div>
                                    <div v-else class="badge badge-danger">
                                        <span><i class="fas fa-times"></i></span>
                                    </div>
                                </td>
                                <td title="Psicóloga">
                                    <div v-if="alumna.d_psic==1" class="badge badge-success">
                                        <span><i class="fas fa-check"></i></span>
                                    </div>
                                    <div v-else class="badge badge-danger">
                                        <span><i class="fas fa-times"></i></span>
                                    </div>
                                </td>
                                <td title="Visitadora Social">
                                    <div v-if="alumna.d_vsoc==1" class="badge badge-success">
                                        <span><i class="fas fa-check"></i></span>
                                    </div>
                                    <div v-else class="badge badge-danger">
                                        <span><i class="fas fa-times"></i></span>
                                    </div>
                                </td>
                                <td title="Convivencia Escolar">
                                    <div v-if="alumna.d_cesc==1" class="badge badge-success">
                                        <span><i class="fas fa-check"></i></span>
                                    </div>
                                    <div v-else class="badge badge-danger"> 
                                        <span><i class="fas fa-times"></i></span>
                                    </div>
                                </td>
                                <td title="Equipo de Gestión">
                                    <div v-if="alumna.d_egest==1" class="badge badge-success">
                                        <span><i class="fas fa-check"></i></span>
                                    </div>
                                    <div v-else class="badge badge-danger">
                                        <span><i class="fas fa-times"></i></span>
                                    </div>
                                </td>
                                <td title="Terapeuta Ocupacional">
                                    <div v-if="alumna.d_ter==1" class="badge badge-success">
                                        <span><i class="fas fa-check"></i></span>
                                    </div>
                                    <div v-else class="badge badge-danger">
                                        <span><i class="fas fa-times"></i></span>
                                    </div>
                                </td>
                                <td title="Educadora Diferencial">
                                    <div v-if="alumna.d_edif==1" class="badge badge-success">
                                        <span><i class="fas fa-check"></i></span>
                                    </div>
                                    <div v-else class="badge badge-danger">
                                        <span><i class="fas fa-times"></i></span>
                                    </div>
                                </td>
                                <td align="center">
                                    <div v-if="alumna.tipoalumno==0" class="badge badge-danger">
                                        <span><i class="fas fa-times"></i></span>
                                    </div>
                                    <div v-else> class="badge badge-danger">
                                        <span><i class="fas fa-check"></i></span>
                                    </div>
                                </td>
                                <td>
                                    <div v-if="alumna.condicion==1">
                                        <button  type="button" @click="abrirModalderivacion('alumna','derivar',alumna)" class="btn btn-Info btn-sm" data-toggle="modal" data-target="#modalNuevo" title="Derivar">
                                        <i class="icon-paper-plane"></i>
                                        </button>
                                    </div>
                                    <div v-else>
                                        <span class="badge badge-danger" v-text="alumna.fecharetiro" title="Fecha Retiro"></span>
                                    </div>
                                    
                                </td>
                                <td>
                                    <div v-if="alumna.condicion==1">
                                        <span  class="badge badge-success">Activa</span>
                                    </div>
                                    <div v-else>
                                        <span class="badge badge-danger">Retirada</span>
                                    </div>

                                </td>
                            </tr>

                        </tbody>
                    </table>
                    <nav>
                        <ul class="pagination">
                            <li class="page-item" v-if="pagination.current_page > 1">
                                <a class="page-link" href="#" @click.prevent="cambiarPagina(pagination.current_page - 1,buscar,criterio)" >Ant</a>
                            </li>
                            <li class="page-item" v-for="page in pagesNumber" :key="page" :class="[page == isActived?'active':'']">
                                <a class="page-link" href="#" @click.prevent="cambiarPagina(page,buscar,criterio)" v-text="page"></a>
                            </li>
                            <li class="page-item" v-if="pagination.current_page < pagination.last_page">
                                <a class="page-link" href="#" @click.prevent="cambiarPagina(pagination.current_page + 1,buscar,criterio)">Sig</a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
            <!-- Fin ejemplo de tabla Listado -->
        </div>

        <!--Inicio del modal agregar/actualizar-->
        <div class="modal fade" tabindex="-1" :class="{'mostrar' : modal}" role="dialog" aria-labelledby="myModalLabel" style="display: none;" aria-hidden="true">
            <div class="modal-dialog modal-primary modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" v-text="tituloModal"></h4>
                        <button type="button" class="close" @click="cerrarModal()" aria-label="Close">
                            <span aria-hidden="true" >×</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="" method="POST" enctype="multipart/form-data" class="form-horizontal">

                            <div class="form-group row">
                                <label class="col-md-2 form-control-label" for="text-input">Rut Alumna</label>

                                <div class="col-md-2">
                                    <input type="text" v-model="rut" class="form-control" placeholder="99999999">
                                    <!-- <span class="help-block">(*) Ingrese el nombre de la categoría</span> -->
                                </div>
                                
                                <div class="col-md-1">
                                    <label class="form-control-label" for="text-input">-</label>
                                </div>  

                                <div class="col-md-1">  
                                    <input type="text" v-model="digito" class="form-control" placeholder="">
                                </div>

                            </div>

                            <div class="form-group row">
                                <label class="col-md-2 form-control-label" for="text-input">Apellidos</label>
                                <div class="col-md-4">
                                    <input type="text" v-model="apellidos" class="form-control" placeholder="Paterno y Materno">
                                    <!-- <span class="help-block">(*) Ingrese el nombre de la categoría</span> -->
                                </div>
                                <div class="form-group">
                                    <label class="col-md-2 form-control-label" for="text-input">Nombres</label>
                                </div>  
                                <div class="col-md-4">  
                                    <input type="text" v-model="nombres" class="form-control" placeholder="Nombre Completo">
                                </div>
                            </div>


                            <div class="form-group row">
                                <label class="col-md-3">Curso</label>
                                <div class="col-md-4">
                                    <select class="form-control" v-model="curso">
                                        <option value="0">Seleccione Curso</option>
                                        <option v-for="cursos in arrayCurso" :key="cursos.id" :value="cursos.curso" v-text="cursos.curso"></option>
                                    </select>
                                </div>
                            </div>


<!--                             <div class="form-group row">
                                <label class="col-md-2 form-control-label" for="text-input">Curso</label>
                                <div class="col-md-2">
                                    <select v-model="curso" class="form-control">
                                        <option>1° </option>
                                        <option>2° </option>
                                        <option>3° </option>
                                        <option>4° </option>
                                    </select>
 
                                </div>
                                <label class="col-md-1 form-control-label" for="text-input">Letra</label>
                                <div class="col-md-1">  
                                    <input type="text" v-model="letra" class="form-control text-uppercase" placeholder="">
                                </div>
                            </div> -->

                            <div v-show="errorAlumna" class="form-group row div-error">
                                <div class="text-center text-error">
                                    <div v-for="error in errorMsgAlumna" :key="error" v-text="error">

                                    </div>
                                </div>
                            </div>

                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" @click="cerrarModal()" class="btn btn-secondary">Cerrar</button>
                        <button type="button" v-if="tipoAccion==1" @click="registrarAlumna()" class="btn btn-primary">Guardar</button>
                        <button type="button" v-if="tipoAccion==2" @click="actualizarAlumna()" class="btn btn-primary">Actualizar</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!--Fin del modal-->

        <!-- Inicio del modal Eliminar -->
        <div class="modal fade" tabindex="-1" :class="{'mostrar' : modalRetiro}" role="dialog" aria-labelledby="myModalLabel" style="display: none;" aria-hidden="true">
            <div class="modal-dialog modal-danger" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" v-text="tituloModal"></h4>
                        <button type="button" class="close" @click="cerrarModalRetiro()" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>

                    <div class="form-group col-12 text-center" >
                        <div>
                            <h3 v-text="opcionAlumna"></h3>
                            <h5  v-text="apellidos+' '+nombres"></h5>
                        </div>
                        <div v-if="tipoAccion==3">
                            <div class="form-group col-md-12 text-center">
                                <label class=" form-control-label" for="text-input">Fecha Retiro</label>
                            </div> 
                            <div class="row">
                                <div class="col-3"></div>
                                <div class="col-5 text-center">
                                    <input type="date" v-model="fecharetiro" class="form-control">
                                </div>
                                <div class="col-3"></div>
                            </div> 
                        </div>
                        
                    </div>
                    <div v-if="tipoAccion==3" v-show="errorAlumna" class="form-group row div-error">
                        <div class="text-center text-error">
                            <div v-for="error in errorMsgAlumna" :key="error" v-text="error">

                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" @click="cerrarModalRetiro()">Cerrar</button>

                        <button type="button" v-if="tipoAccion==3" @click="retirarAlumna()" class="btn btn-danger">Retirar</button>
                        <button type="button" v-if="tipoAccion==4" @click="reincorporarAlumna()" class="btn btn-danger">Reincorporar</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- Fin del modal Eliminar -->


        <!-- Inicio del modal Derivación -->
        <div class="modal fade" tabindex="-1" :class="{'mostrar' : modalDerivacion}" role="dialog" aria-labelledby="myModalLabel" style="display: none;" aria-hidden="true">
            <div class="modal-dialog modal-success modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" v-text="tituloModal"></h4>
                        <button type="button" class="close" @click="cerrarModalderivacion()" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>

                    <div class="form-group col-12 text-center" >
                        <div>
                            <h3 v-text="opcionAlumna"></h3>
                            <h4  v-text="apellidos+' '+nombres"></h4>
                        </div>
                        <label for=""></label>
                        <!--  -->
                        <form action="" method="POST" enctype="multipart/form-data" class="form-horizontal">

                            <div class="row">
                                <div class="form-group col-6">
                                    <h6 class="form-control-label" for="text-input">Quien Deriva?</h6>
                                    <input type="text" v-model="quienDeriva" class="form-control" placeholder="Nombre y Apellido">
                                </div>
                                <div class="form-group col-6">
                                    <h6 class="form-control-label" for="text-input">Motivo Derivación</h6>
                                    <input type="text" v-model="motivoDerivacion" class="form-control" placeholder="Motivo">
                                </div> 
                            </div>

                            <div class="row">
                                <div class="form-group col-12">
                                    <h5 class="form-control-label" for="text-input">Diagnóstico</h5>
                                    <textarea type="text" v-model="antecedentes" class="form-control" placeholder="Detalle..."></textarea>
                                </div>
                            </div>

                            <div>
                                <div class="form-group col-md-12 text-center">
                                    <h4 class=" form-control-label" for="text-input">¿A quien Deriva?</h4>
                                </div> 
                            </div>
                            <div class="row">
                                <div class="form-group col-6">
                                    <div class="row">
                                        <div class="form-check text-left col-md-6">
                                            &nbsp;&nbsp;&nbsp;<input class="form-check-input " type="checkbox" v-model="orient">
                                            <label class="form-check-label text-left" for="defaultCheck1">Orientadora</label>
                                        </div>
                                        <div class="form-check  col-md-6">
                                            <select class="form-control" id="exampleFormControlSelect1">
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="form-check  text-left   col-md-6">
                                            &nbsp;&nbsp;&nbsp;<input class="form-check-input" type="checkbox" v-model="psicol">
                                            <label class="form-check-label" for="defaultCheck1">Psicóloga</label>
                                        </div>
                                        <div class="form-check  col-md-6">
                                            <select class="form-control" id="exampleFormControlSelect1">
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-check  text-left   col-md-6">
                                            &nbsp;&nbsp;&nbsp;<input class="form-check-input" type="checkbox" v-model="visit">
                                           <label class="form-check-label" for="defaultCheck1">Trabajadora Social</label>
                                        </div>                                        
                                        <div class="form-check  col-md-6">
                                            <select class="form-control" id="exampleFormControlSelect1">
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-check  text-left   col-md-6">
                                            &nbsp;&nbsp;&nbsp;<input class="form-check-input" type="checkbox" v-model="conviv">
                                            <label class="form-check-label" for="defaultCheck1">Convivencia Escolar</label>                               
                                        </div>                                        
                                        <div class="form-check  col-md-6">
                                            <select class="form-control" id="exampleFormControlSelect1">
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5</option>
                                            </select>
                                        </div>

                                    </div>
    
                                </div>


                                <div class="form-group col-6">
                                    <div class="row">
                                            <div class="form-check  text-left   col-md-6">
                                                <input class="form-check-input" type="checkbox" v-model="gest">
                                                <label class="form-check-label" for="defaultCheck1">Equipo de Gestión</label>
                                            </div>
                                        <div class="form-check  col-md-6">
                                            <select class="form-control" id="exampleFormControlSelect1">
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5</option>
                                            </select>
                                        </div>
                                    </div> 

                                    <div class="row">
                                        <div class="form-check   text-left  col-md-6">
                                            <input class="form-check-input" type="checkbox" v-model="terap">
                                            <label class="form-check-label" for="defaultCheck1">Terapeuta Ocupacional</label>
                                        </div>
                                        <div class="form-check  col-md-6">
                                            <select class="form-control" id="exampleFormControlSelect1">
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-check  text-left   col-md-6">
                                            <input class="form-check-input" type="checkbox" v-model="difer">
                                            <label class="form-check-label" for="defaultCheck1">Educadora Diferencial</label> 
                                        </div>
                                        <div class="form-check  col-md-6">
                                            <select class="form-control" id="exampleFormControlSelect1">
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                              
                            </div>

                        </form>
                        <!--  -->

                    </div>
                    <div v-if="tipoAccion==3" v-show="errorAlumna" class="form-group row div-error">
                        <div class="text-center text-error">
                            <div v-for="error in errorMsgAlumna" :key="error" v-text="error">

                            </div>
                        </div>
                    </div>
                    <div class="modal-footer modal-lg">
                        <button type="button" class="btn btn-secondary" @click="cerrarModalderivacion()">Cerrar</button>

                        <button type="button" v-if="tipoAccion==5" @click="derivarAlumna()" class="btn btn-danger">Derivar</button>
                        <button type="button" v-if="tipoAccion==4" @click="reincorporarAlumna()" class="btn btn-danger">Reincorporar</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- Fin del modal Eliminar -->

    </main>
</template>

<script>
    import datables from 'datatables'
    export default {
        /* props : ['ruta'], */
        data (){
            return {
                antecedentes : '',
                alumna_id : 0,
                orient : 0,
                psicol : 0,
                visit : 0,
                conviv : 0,
                gest : 0,
                terap : 0,
                difer : 0,
                d_orientadora : '',
                d_psicologa : '',
                d_visitadora : '',
                d_convivencia : '',
                d_gestion : '',
                d_terapeuta : '',
                d_diferencial : '',
                arrayCurso : [],
                rut : '',
                digito : '',
                curso : '',
                curso2 : '',
                cursoyLetra : '',
                letra : '',
                apellidos : '',
                nombres : '',
                arrayAlumna : [],
                modal : 0,
                modalRetiro : 0,
                modalDerivacion : 0,
                tituloModal : '',
                tipoAccion : 0,
                errorAlumna : 0,
                errorMsgAlumna : [],
                fecharetiro : 0,
                opcionAlumna : '',
                quienDeriva : '',
                motivoDerivacion : '',
                cursoAlumna: '',
                pagination : {
                    'total' : 0,
                    'current_page' : 0,
                    'per_page' : 0,
                    'last_page' : 0,
                    'from' : 0,
                    'to' : 0,
                },
                offset : 5,
                criterio : 'rut',
                buscar : ''
            }
        },
        computed: {
            isActived: function(){
                return this.pagination.current_page;

            },
            pagesNumber: function(){
                if(!this.pagination.to){
                    return [];
                }

                var from = this.pagination.current_page - this.offset;
                if(from < 1){
                    from = 1;
                }

                var to = from + (this.offset * 2);
                if (to >= this.pagination.last_page){
                    to = this.pagination.last_page;
                }
                
                var pagesArray  = [];
                while(from <= to){
                    pagesArray.push(from);
                    from++;
                }
                return pagesArray;
            }
        },
        methods:{
            derivacionExitosa(){
                Swal.fire({
                    position: 'center',
                    type: 'success',
                    title: 'Alumna Derivada',
                    showConfirmButton: false,
                    timer: 2000
                }) 
            },
            derivarAlumna(){ 
                let me= this;
                if(this.orient){
                    console.log('Marcó Orientadora');
                    //this.d_orientadora = '1';
                    axios.post( '/orientadora/registrar',{
                        'idalumna' : this.alumna_id,
                        'derivadopor' : this.quienDeriva,
                        'motivo' : this.motivoDerivacion,
                        'antecedentes' : this.antecedentes,

                    }).then(function (response){
                        
                        me.cerrarModalderivacion();
                    }).catch(function(error){
                        console.log(error);
                    });


                    /* Pasa Datos a Detalle Derivación */

                    axios.put( '/alumna/derivar',{
                       'id' : this.alumna_id,
                       
                    }).then(function (response){
                        me.derivacionExitosa();
                        me.listarAlumna(1,'','rut');
                    }).catch(function(error){
                        console.log(error);
                        console.log('derivo');

                    });

                    this.orient = 0;
                }
                if(this.psicol){
                    console.log('Marcó Psicóloga');
                    axios.post( '/psicologa/registrar',{
                        'idalumna' : this.alumna_id,
                        'derivadopor' : this.quienDeriva,
                        'motivo' : this.motivoDerivacion,
                        'antecedentes' : this.antecedentes,

                    }).then(function (response){
                        
                        me.cerrarModalderivacion();
                    }).catch(function(error){
                        console.log(error);
                    });

                    /* Pasa Datos a Detalle Derivación */

                    axios.put( '/alumna/derivarP',{
                       'id' : this.alumna_id,
                       
                    }).then(function (response){
                        me.derivacionExitosa();
                        me.listarAlumna(1,'','rut');
                    }).catch(function(error){
                        console.log(error);
                        console.log('derivo');

                    });

                    this.psicol = 0;
                    
                }
                if(this.visit){
                    console.log('Marcó Visitadora Social');
                    axios.post( '/visitadora/registrar',{
                        'idalumna' : this.alumna_id,
                        'derivadopor' : this.quienDeriva,
                        'motivo' : this.motivoDerivacion,
                        'antecedentes' : this.antecedentes,

                    }).then(function (response){
                        
                        me.cerrarModalderivacion();
                    }).catch(function(error){
                        console.log(error);
                    });

                    /* Pasa Datos a Detalle Derivación */

                    axios.put( '/alumna/derivarV',{
                       'id' : this.alumna_id,
                       
                    }).then(function (response){
                        me.derivacionExitosa();
                        me.listarAlumna(1,'','rut');
                    }).catch(function(error){
                        console.log(error);
                        console.log('derivo');

                    });

                    this.visit = 0;
                }
                if(this.conviv){
                    console.log('Marcó Convivencia Escolar');
                    axios.post( '/convivencia/registrar',{
                        'idalumna' : this.alumna_id,
                        'derivadopor' : this.quienDeriva,
                        'motivo' : this.motivoDerivacion,
                        'antecedentes' : this.antecedentes,

                    }).then(function (response){
                        
                        me.cerrarModalderivacion();
                    }).catch(function(error){
                        console.log(error);
                    });

                    /* Pasa Datos a Detalle Derivación */

                    axios.put( '/alumna/derivarC',{
                       'id' : this.alumna_id,
                       
                    }).then(function (response){
                        me.derivacionExitosa();
                        me.listarAlumna(1,'','rut');
                    }).catch(function(error){
                        console.log(error);
                        console.log('derivo');

                    });

                    this.conviv = 0;
                }
                if(this.gest){
                    console.log('Marcó Equipo Gestión');
                    axios.post( '/equipo/registrar',{
                        'idalumna' : this.alumna_id,
                        'derivadopor' : this.quienDeriva,
                        'motivo' : this.motivoDerivacion,
                        'antecedentes' : this.antecedentes,

                    }).then(function (response){
                        
                        me.cerrarModalderivacion();
                    }).catch(function(error){
                        console.log(error);
                    });

                    /* Pasa Datos a Detalle Derivación */

                    axios.put( '/alumna/derivarG',{
                       'id' : this.alumna_id,
                       
                    }).then(function (response){
                        me.derivacionExitosa();
                        me.listarAlumna(1,'','rut');
                    }).catch(function(error){
                        console.log(error);
                        console.log('derivo');

                    });

                    this.gest = 0;
                }
                if(this.terap){
                    console.log('Marcó Terapeuta Ocupacional');
                    axios.post( '/terapeuta/registrar',{
                        'idalumna' : this.alumna_id,
                        'derivadopor' : this.quienDeriva,
                        'motivo' : this.motivoDerivacion,
                        'antecedentes' : this.antecedentes,

                    }).then(function (response){
                        
                        me.cerrarModalderivacion();
                    }).catch(function(error){
                        console.log(error);
                    });

                    /* Pasa Datos a Detalle Derivación */

                    axios.put( '/alumna/derivarT',{
                       'id' : this.alumna_id,
                       
                    }).then(function (response){
                        me.derivacionExitosa();
                        me.listarAlumna(1,'','rut');
                    }).catch(function(error){
                        console.log(error);
                        console.log('derivo');

                    });

                    this.terap = 0;
                }
                if(this.difer){
                    console.log('Marcó Educadora Diferencial');
                   axios.post( '/educadora/registrar',{
                        'idalumna' : this.alumna_id,
                        'derivadopor' : this.quienDeriva,
                        'motivo' : this.motivoDerivacion,
                        'antecedentes' : this.antecedentes,

                    }).then(function (response){
                        
                        me.cerrarModalderivacion();
                    }).catch(function(error){
                        console.log(error);
                    });

                    /* Pasa Datos a Detalle Derivación */

                    axios.put( '/alumna/derivarE',{
                       'id' : this.alumna_id,
                       
                    }).then(function (response){
                        me.derivacionExitosa();
                        me.listarAlumna(1,'','rut');
                    }).catch(function(error){
                        console.log(error);
                        console.log('derivo');

                    });

                    this.difer = 0;
                }
                
            },
/*             mytable(){
                
                 $(function() {
                 $('#TablaDatos').DataTable({
                    dom: 'Blfrtip',
                    language:{
                         "emptyTable": "No hay información",
                         "info": "Mostrando _START_ de _END_ de _TOTAL_ Datos",
                         "search": "Buscar:",
                         "lengthMenu": "Mostrar _MENU_ Datos por página",
                         "paginate":{"next": "Siguiente","previous": "Anterior","first": "Primero","last": "Último"},
                         },
                    buttons: ['excel','pdf','print']  
                    });
               });   
            }, */

            
            listarAlumna(page,buscar,criterio){
                let me=this;
                url ='/alumna?page=' + page + '&buscar='+buscar+'&criterio='+criterio;
                 axios.get(url).then(function (response) {
                     var respuesta = response.data;
                     me.arrayAlumna = respuesta.alumnas.data;
                     me.pagination = respuesta.pagination;
                     /* me.mytable() */
                })
                .catch(function (error) {
                    console.log(error);
                });
            },
            cambiarPagina(page,buscar,criterio){
                let me = this;
                me.pagination.current_page = page;
                me.listarAlumna(page,buscar,criterio);
            },

            recargarTabla(){
                $('#TablaDatos').DataTable().axio.reload();
            },
            registrarAlumna(){
                if (this.validarAlumna()){
                    return;
                }
                let me  =this;
                this.cursoAlumna=this.curso+' '+this.letra;
                axios.post( '/alumna/registrar',{
                    'rut' : this.rut,
                    'digito' : this.digito,
                    'curso' : this.curso,
                    'letra' : this.letra,
                    'apellidos' : this.apellidos,
                    'nombres' : this.nombres,
                }).then(function (response){
                    me.cerrarModal();
                    me.listarAlumna(1,'','rut');
                }).catch(function(error){
                    console.log(error);
                });
            },
            actualizarAlumna(){
                if (this.validarAlumna()){
                    return;
                }
                let me  =this;
                axios.put( '/alumna/actualizar',{
                    'id' : this.alumna_id,
                    'rut' : this.rut,
                    'digito' : this.digito,
                    'curso' : this.curso,
                    'apellidos' : this.apellidos,
                    'nombres' : this.nombres,
                }).then(function (response){
                    me.cerrarModal();
                    me.listarAlumna(1,'','nombre');
                }).catch(function(error){
                    console.log(error);
                });
            },
            validarAlumna(){
                this.errorAlumna=0;
                this.errorMsgAlumna=[];

                if (!this.nombres) this.errorMsgAlumna.push("Nombres no pueden estar en Blanco");
                if (!this.apellidos) this.errorMsgAlumna.push("Apellidos no pueden estar en Blanco");
                if (!this.rut) this.errorMsgAlumna.push("Rut no puede estar en Blanco");
                if (!this.curso) this.errorMsgAlumna.push("Curso no pueden estar en Blanco");

                if(this.errorMsgAlumna.length) this.errorAlumna = 1;

                return this.errorAlumna;
            },
            validarAlumnaRetirada(){
                this.errorAlumna=0;
                this.errorMsgAlumna=[];

                if (!this.fecharetiro) this.errorMsgAlumna.push("Debe Ingresar la fecha de Retiro");

                if(this.errorMsgAlumna.length) this.errorAlumna = 1;

                return this.errorAlumna;
            },
            cerrarModal(){
                this.modal = 0,
                this.tituloModal = '',
                this.rut = '';
                this.digito = '';
                this.curso = '';
                this.letra = '';
                this.apellidos = '';
                this.nombres = '';
                this.errorAlumna=0;
                this.errorMsgAlumna=[];
            },
            abrirModalRetiro(modelo, accion, data=[]){
                switch(modelo){
                    case "alumna":
                    {
                        switch(accion){
                            case 'retirar':
                            {
                                this.tipoAccion = 3;
                                this.modalRetiro = 1;
                                this.alumna_id = data['id'];
                                this.apellidos = data['apellidos'];
                                this.nombres = data['nombres'];
                                this.tituloModal = "Retirar Alumna";
                                this.opcionAlumna = "Retira a la Alumna?"
                                break;

                            }
                            case 'reincorporar':
                            {
                                this.tipoAccion = 4;
                                this.modalRetiro = 1;
                                this.alumna_id = data['id'];
                                this.tituloModal = "Reincorporar Alumna";
                                this.apellidos = data['apellidos'];
                                this.nombres = data['nombres'];
                                this.opcionAlumna = "Reincopora a la Alumna?"
                                break;
                           }
                        }
                    }
                }
            },
            abrirModalderivacion(modelo, accion, data=[]){
                switch(modelo){
                    case "alumna":
                    {
                        switch(accion){
                            case 'derivar':
                            {
                                this.tipoAccion = 5;
                                this.modalDerivacion = 1;
                                this.alumna_id = data['id'];
                                this.apellidos = data['apellidos'];
                                this.nombres = data['nombres'];
                                this.tituloModal = "Derivación de Alumna";
                                this.opcionAlumna = "";
                                break;

                            }
                        }
                    }
                }
            },
            
            limpiarBusqueda(){
                let me = this;
                this.buscar = '';
                this.criterio = 'rut';
                this.listarAlumna(1,this.buscar,this.criterio);
            },
            cerrarModalRetiro(){
                this.modalRetiro = 0,
                this.tituloModal = '',
                this.rut = '';
                this.digito = '';
                this.curso = '';
                this.letra = '';
                this.apellidos = '';
                this.nombres = '';
                this.errorAlumna=0;
                this.fecharetiro=0;
                
                this.errorMsgAlumna=[];
            },
            reincorporarAlumna(id){
                let me  =this;
                axios.put( '/alumna/reincorporar',{
                    'id' : this.alumna_id,
                    'fecharetiro' : 0,
                }).then(function (response){
                    Swal.fire({
                        position: 'center',
                        type: 'success',
                        title: 'Alumna Reincorporada',
                        showConfirmButton: false,
                        timer: 2000
                    })    
                    me.cerrarModalRetiro();
                    me.listarAlumna(1,'','rut');

                }).catch(function(error){
                    console.log(error);
                });
            },
            retirarAlumna(){
                if (this.validarAlumnaRetirada()){
                    return;
                }
                let me  =this;
                axios.put( '/alumna/retirar',{
                    'id' : this.alumna_id,
                    'fecharetiro' : this.fecharetiro,
                }).then(function (response){
                    Swal.fire({
                        position: 'center',
                        type: 'success',
                        title: 'Alumna Retirada',
                        showConfirmButton: false,
                        timer: 2000
                    })    
                    me.cerrarModalRetiro();
                    me.listarAlumna(1,'','rut');

                }).catch(function(error){
                    console.log(error);
                });
            },
            cerrarModalderivacion(){
                this.modalDerivacion = 0;
                this.tituloModal = '';
                this.rut = '';
                this.digito = '';
                this.curso = '';
                this.letra = '';
                this.apellidos = '';
                this.nombres = '';
                this.errorAlumna=0;
                this.fecharetiro=0;
                
                this.errorMsgAlumna=[];
            },

             listarCurso(page){
                let me=this;
                url =  '/curso?page=' + page;
                 axios.get(url).then(function (response) {
                     var respuesta = response.data;
                     me.arrayCurso = respuesta.cursos.data;
                     me.pagination = respuesta.pagination;
                })
                .catch(function (error) {
                    console.log(error);
                });
            },
            abrirModal(modelo, accion, data=[]){
                switch(modelo){
                    case "alumna":
                    {
                        switch(accion){
                            case 'registrar':
                            {
                                this.tipoAccion = 1;
                                this.modal = 1;
                                this.rut = '';
                                this.digito = '';
                                this.curso = '';
                                this.letra = '';
                                this.apellidos = '';
                                this.nombres = '';
                                this.tituloModal = "Agregar Nueva Alumna";
                                break;

                            }
                            case 'actualizar':
                            {
                                //console.log(data);
                                this.modal = 1;
                                this.tituloModal = "Actualizar Datos Alumna";
                                this.tipoAccion = 2;
                                this.alumna_id = data['id'];
                                this.rut = data['rut'];
                                this.digito = data['digito'];
                                this.nombres = data['nombres'];
                                this.apellidos = data['apellidos'];
                                this.curso = data['curso'];
                                this.letra = data['letra'];
                                break;
                           }
                        }
                    }
                }
            }
        },
        mounted() {
            this.listarAlumna(1,this.buscar,this.criterio);
            this.listarCurso(1);
        }
    }
</script>

<style>
    .modal-content{
        width: 100% !important;
        position: absolute !important;
    }
    .mostrar{
        display: list-item !important;
        opacity: 1 !important;
        position: absolute !important;
        background-color: #3c29297a !important;
    }
    .div-error{
        display: flex;
        justify-content: center;
    }
    .text-error{
        color:red !important;
        font-weight: bold;
    }
</style>


