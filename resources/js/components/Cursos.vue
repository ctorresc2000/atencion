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
                    <i class="fa fa-align-justify"></i> Cursos
                    <button type="button" @click="abrirModal('curso','registrar')" class="btn btn-secondary">
                        <i class="icon-plus"></i>&nbsp;Nuevo
                    </button>
                </div>
                <div class="card-body">
                    <table class="table table-bordered table-striped table-sm">
                        <thead >
                            <tr >
                                <th width="10%">Opciones</th>
                                <th width="10%">Curso</th>
                                <th width="40%">Profesor Jefe</th>
                                <th width="5%">Estado</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr v-for="cursos in arrayCurso" :key="cursos.id">
                                <td>
                                    <button type="button" @click="abrirModal('curso','actualizar',cursos)" class="btn btn-warning btn-sm" title="Editar">
                                        <i class="icon-pencil"></i>
                                    </button> &nbsp;
                                    <template v-if="cursos.condicion">
                                        <button type="button" @click="abrirModalRetiro('curso','desactivar',cursos)" class="btn btn-danger btn-sm" title="Desactivar">
                                        <i class="icon-trash"></i>
                                    </button>
                                    </template>
                                    <template v-else>
                                        <button type="button" @click="abrirModalRetiro('curso','activar',cursos)"  class="btn btn-info btn-sm" title="Activar">
                                        <i class="icon-check"></i>
                                    </button>
                                    </template>
                                    
                                </td>
                                <td v-text="cursos.curso"></td>
                                <td v-text="cursos.pjefe"></td>
                                <td>
                                    <span v-if="cursos.condicion===1" class="badge badge-success">Activo</span>
                                    <span v-if="cursos.condicion===0" class="badge badge-danger">Inactivo</span>
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
                        <p>Para un Mejor funcionamiento recomendamos crear los cusos con espacio entre el curso y la letra Ej, "1° A"</p>
                        <form action="" method="post" enctype="multipart/form-data" class="form-horizontal">

                            <div class="form-group row">
                                <label class="col-md-3 form-control-label" for="text-input">Curso</label>
                                <div class="form-group col-md-4">
                                    <input type="text" v-model="curso" class="form-control" placeholder="Ej. 1° A">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-md-3 form-control-label" for="text-input">Profesor Jefe</label>
                                <div class="form-group col-md-4">
                                    <select class="form-control" v-model="pjefe" title="Seleccione Profesor Jefe.">
                                        <option value="0">Profesor</option>
                                        <option v-for="profes in arrayProfes" :key="profes.id" :value="profes.nombreusuario" v-text="profes.nombreusuario"></option>
                                    </select>
                                </div>    
                            </div>

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
                        <button type="button" v-if="tipoAccion==1" @click="registrarCurso()" class="btn btn-primary">Guardar</button>
                        <button type="button" v-if="tipoAccion==2" @click="actualizarCurso()" class="btn btn-primary">Actualizar</button>
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
                            <h5  ></h5>
                        </div>
<!--                         <div v-if="tipoAccion==3">
                            <div class="form-group col-md-12 text-center">
                                <h4 class=" form-control-label" for="text-input">Fecha</h4>
                            </div> 
                            <div class="row">
                                <div class="col-3"></div>
                                <div class="col-5 text-center">
                                    <input type="date" v-model="fecharetiro"  class="form-control">
                                </div>
                                <div class="col-3"></div>
                            </div> 
                        </div> -->
                        
                    </div>
                    <div v-if="tipoAccion==3" v-show="errorAlumna" class="form-group row div-error">
                        <div class="text-center text-error">
                            <div v-for="error in errorMsgAlumna" :key="error" v-text="error">

                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" @click="cerrarModalRetiro()">Cerrar</button>

                        <button type="button" v-if="tipoAccion==3" @click="retirarAlumna()" class="btn btn-danger">Deactivar</button>
                        <button type="button" v-if="tipoAccion==4" @click="reincorporarAlumna()" class="btn btn-danger">Activar</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>

    </main>
</template>

<script>
    export default {
        data (){
            return {
                curso_id : 0,
                curso: '',
                arrayCurso : [],
                modal : 0,
                pjefe : '',
                tituloModal: '',
                tipoAccion : 0,
                errorAlumna : 0,
                modalRetiro : 0,
                opcionAlumna : '',
                arrayProfes : [],
                errorMsgAlumna : [],
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
       
            listarCurso(page,buscar,criterio){
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

            cambiarPagina(page,buscar,criterio){
                let me = this;
                me.pagination.current_page = page;
                me.listarCurso(page,buscar,criterio);
            },

            registrarCurso(){
                if (this.validarAlumna()){
                    return;
                }
                let me  =this;
                axios.post( '/curso/registrar',{
                    'curso' : this.curso,
                    'pjefe' : this.pjefe,
                }).then(function (response){
                    me.cerrarModal();
                    me.listarCurso(1);
                }).catch(function(error){
                    console.log(error);
                });
            },
            actualizarCurso(){
                if (this.validarAlumna()){
                    return;
                }
                let me  =this;
                axios.put( '/curso/actualizar',{
                    'id' : this.curso_id,
                    'curso' : this.curso,
                    'pjefe' : this.pjefe,
                }).then(function (response){
                    me.cerrarModal();
                    me.listarCurso(1);
                }).catch(function(error){
                    console.log(error);
                });
            },
            cargarProfesores(page){
                let me=this;
                url =  '/curso/sacarProfe?page=' + page;
                 axios.get(url).then(function (response) {
                     var respuesta = response.data;
                     me.arrayProfes = respuesta.profes.data;
                     me.pagination = respuesta.pagination;
                })
                .catch(function (error) {
                    console.log(error);
                });
            },
            validarAlumna(){
                this.errorAlumna=0;
                this.errorMsgAlumna=[];

                if (!this.curso) this.errorMsgAlumna.push("Curso no puede estar en Blanco");
               
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
                    case "curso":
                    {
                        switch(accion){
                            case 'desactivar':
                            {
                                this.tipoAccion = 3;
                                this.modalRetiro = 1;
                                this.curso_id = data['id'];

                                this.tituloModal = "Desactivar Curso";
                                this.opcionAlumna = "Desactiva al Curso?"
                                break;

                            }
                            case 'activar':
                            {
                                this.tipoAccion = 4;
                                this.modalRetiro = 1;
                                this.curso_id = data['id'];
                                this.tituloModal = "Activar Curso";
                                this.opcionAlumna = "Activar al Curso?"
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
            cerrarModalPassword(){
                this.modalPasword = 0,
                this.tituloModal = '',
                this.errorAlumna=0;
                this.fecharetiro=0;
                
                this.errorMsgAlumna=[];
            },
            reincorporarAlumna(id){
                let me  =this;
                axios.put( '/curso/activar',{
                    'id' : this.curso_id,
                    'fecharetiro' : 0,
                }).then(function (response){
                    Swal.fire({
                        position: 'center',
                        type: 'success',
                        title: 'Curso Activado',
                        showConfirmButton: false,
                        timer: 2000
                    })    
                    me.cerrarModalRetiro();
                    me.listarCurso(1);

                }).catch(function(error){
                    console.log(error);
                });
            },
            retirarAlumna(){
                /* if (this.validarAlumnaRetirada()){
                    return;
                } */
                let me  =this;
                axios.put( '/curso/desactivar',{
                    'id' : this.curso_id,
                }).then(function (response){
                    Swal.fire({
                        position: 'center',
                        type: 'success',
                        title: 'Curso Desactivado',
                        showConfirmButton: false,
                        timer: 2000
                    })    
                    me.cerrarModalRetiro();
                    me.listarCurso(1);

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
            abrirModal(modelo, accion, data=[]){
                switch(modelo){
                    case "curso":
                    {
                        switch(accion){
                            case 'registrar':
                            {
                                this.tipoAccion = 1;
                                this.modal = 1;
                                this.curso = '';
                                this.tituloModal = "Agregar Nuevo Curso";
                                break;

                            }
                            case 'actualizar':
                            {
                                this.modal = 1;
                                this.tituloModal = "Actualizar Curso";
                                this.tipoAccion = 2;
                                this.curso_id = data['id'];
                                this.curso = data['curso'];
                                this.pjefe = data['pjefe'];
                                break;
                           }
                           case 'password':
                            {
                                this.modalPasword = 1;
                                this.tituloModal = "Contraseña Usuario";
                                this.tipoAccion = 1;
                                this.usuario_id = data['id'];
                                break;
                           }
                        }
                    }
                }
            }
        },
        mounted() {
            this.listarCurso(1);
            this.cargarProfesores(1);
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


