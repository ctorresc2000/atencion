<template>
    <main class="main">
        <!-- Breadcrumb -->
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/">Escritorio</a></li>
        </ol>
        <div class="container-fluid">
            <!-- MOSTAR PANTALLA PRINCIPAL CON TABLA DE DATOS -->
            <div v-if="visible">
                <!-- <h1>Datos Principales</h1> -->
                <!-- Ejemplo de tabla Listado -->
                <div class="card">
                    <div class="card-header">
                        <i class="fa fa-align-justify"></i> Derivadas Terapeuta Ocupacional
                        <!-- <button type="button" @click="abrirModal('alumna','registrar')" class="btn btn-secondary">
                            <i class="icon-plus"></i>&nbsp;Nuevo
                        </button> -->
                    </div>
                    <div class="card-body">
                        <div class="form-group row">
                            <div class="col-md-8">
                                <div class="input-group">
                                    <select class="form-control col-md-3" v-model="criterio">
                                        <option value="apellidos">Apellido</option>
                                        <option value="nombres">Nombre</option>
                                    </select>
                                    <input type="text" v-model="buscar" @keyup.enter="listarOrientadora(1,buscar,criterio)" class="form-control" placeholder="Texto a buscar (Rut sin digito)">
                                    <button type="submit" @click="listarOrientadora(1,buscar,criterio)" class="btn btn-primary"><i class="fa fa-search"></i> Buscar</button>&nbsp;&nbsp;
                                    <button type="submit" @click="limpiarBusqueda()" class="btn btn-success"><i class="fas fa-broom"></i> Limpiar Búsqueda</button>
                                </div>
                            </div>
                        </div>

                        <table class="table table-bordered table-striped table-sm">
                            <thead >
                                <tr >
                                   <!--  <th>Opciones</th> -->
                                    <!-- <th>ID</th> -->
                                    <th width="3%">Curso</th>
                                    <th width="35%">Alumna</th>
                                    <th width="15%">Derivado Por</th>
                                    <th width="39%">Motivo Derivación</th>
                                    <th width="15%">Fecha Derivación</th>
                                    <th width="3%">Ant.</th>
                                    <!-- <th>Detalle</th>
                                    <th>Estado</th> -->
                                </tr>
                            </thead>
                            <tbody>
                                <tr v-for="orientadora in arrayOrientadora" :key="orientadora.id">
                                   <!--  <td>
                                        <button type="button" @click="abrirModal('alumna','actualizar',alumna)" class="btn btn-warning btn-sm" title="Editar">
                                            <i class="icon-pencil"></i>
                                        </button> &nbsp;
                                        <template v-if="orientadora.condicion">
                                            <button type="button" @click="abrirModalRetiro('alumna','retirar',alumna)" class="btn btn-danger btn-sm" title="Retirar">
                                            <i class="icon-trash"></i>
                                        </button>
                                        </template>
                                        <template v-else>
                                            <button type="button" @click="abrirModalRetiro('alumna','reincorporar',alumna)"  class="btn btn-info btn-sm" title="Reincorporar">
                                            <i class="icon-check"></i>
                                        </button>
                                        </template>
                                        
                                    </td> -->
                                    <!-- <td v-text="orientadora.id"></td> -->
                                   <!--  <td v-text="orientadora.id" ></td> -->
                                    <td v-text="orientadora.curso"></td>
                                    <td v-text="orientadora.apellidos +' '+ orientadora.nombres"></td>
                                    <td v-text="orientadora.derivadopor"></td>
                                    <td v-text="orientadora.motivo"></td>
                                    <td v-text="orientadora.fechaderivacion"></td>
                                    <td>
                                        <button   type="button" @click="abrirModalDerivacion('alumna','actualizar',orientadora)" class="btn btn-Info btn-sm text-center"  title="Ver Detalle">
                                            <i align="center" class="fas fa-eye"></i>
                                        </button>
            
                                    </td>
                                    <!-- <td>
                                        <button v-if="orientadora.condicion===1" type="button" class="btn btn-Info btn-sm"  title="Ingresar Observación">
                                            <i class="icon-paper-plane"></i>
                                        </button>
                                        <span v-if="orientadora.condicion===0" class="badge badge-danger" v-text="p" title="Fecha Retiro"></span>
                                    </td>
                                    <td>
                                        <span v-if="orientadora.condicion===1" class="badge badge-success">Activa</span>
                                        <span v-if="orientadora.condicion===0" class="badge badge-danger">Retirada</span>
                                    </td> -->
                                </tr>

                            </tbody>

                        </table>
                        

                        <nav>
                            <ul class="pagination">
                                <li class="page-item" v-if="pagination.current_page > 1">
                                    <a class="page-link" href="#" @click.prevent="cambiarPagina(pagination.current_page - 1)" >Ant</a>
                                </li>
                                <li class="page-item" v-for="page in pagesNumber" :key="page" :class="[page == isActived?'active':'']">
                                    <a class="page-link" href="#" @click.prevent="cambiarPagina(page)" v-text="page"></a>
                                </li>
                                <li class="page-item" v-if="pagination.current_page < pagination.last_page">
                                    <a class="page-link" href="#" @click.prevent="cambiarPagina(pagination.current_page + 1)">Sig</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <!-- Fin ejemplo de tabla Listado -->
            </div>
            <!-- FIN DE LA PANTALLA PRINCIPAL CON TABLA DE DATOS -->

            <!-- CUANDO SE DE CLICK EN LA ALUMNA MOSTRARÁ LOS DATOS -->
            <div v-else>
                <div class="form-group row">
                    <button @click="volverListado()" class="btn btn-info">Volver..</button>
                </div>
                <h1 class="text-center">Terapeuta Ocupacional | Entrevista Alumna</h1>
                <label for=""></label>
                <label for=""></label>
                <label for=""></label>
                <label for=""></label>

                <div class="row"> 
                    <div class="form-group col-6">
                        <h3 class="form-control-label text-center">Nombre Alumna</h3>
                        <h4 class="form-control-label text-center" v-text="nombres+' '+apellidos"></h4> 
                    </div>
                    <div class="form-group col-6">
                        <h3 class="form-control-label text-center">Curso</h3>
                        <h4 class="form-control-label text-center" v-text="curso+' '+letra"></h4> 
                    </div>

                    <div class="form-group col-12">
                        <label for=""></label>
                        <label for=""></label>
                        <h3 class="form-control-label text-center">Motivo Derivación</h3>
                        <h6 class="form-control-label text-justify" v-text="motivo"></h6> 
                        <label for=""></label>
                        <label for=""></label>
                    </div>

                    <div class="form-group col-12">
                        <label for=""></label>
                        <label for=""></label>
                        <h3 class="form-control-label text-center">Seguimiento</h3>
                        <h6 class="form-control-label text-justify" v-text="antecedentes"></h6> 
                        <label for=""></label>
                        <label for=""></label>
                    </div>
                    <div class="row">
                        <div  class="form-group col-6 text-left">
                            <button type="button" @click="mostrarDetalle()" class="btn btn-primary">Nueva Atención</button>  
                        </div>
                    </div>
                </div> 
                <div v-if="cuadro==1">

                    <div class=" form-group row border">
                        <div  class="form-group col-3">
                            <h6 class="form-control-label" for="text-input">Fecha</h6>
                            <input type="date" v-model="fechaAtencion" class="form-control">
                        </div>
                     
                        <div   class="form-group col-5">
                            <h6  class="form-control-label" for="text-input">Observación</h6>
                            <textarea v-model="observacion" cols="60" rows="2"></textarea>
                        </div> 
                        <div   class="form-group col-2">
                            <div class="form-check">
                              <label class="form-check-label">
                                  <br><br>
                                <input type="checkbox" class="form-check-input" v-model="reservado">Reservado</label>
                            </div>
                        </div> 
                        <div  class="form-group col-2 form-inline">
                            <br>
                            <button type="button" class="form-control-label btn btn-success text-rigth" title="Agregar Observación" @click="ocultarDetalle()">Agregar</button>
                            <button type="button" class="form-control-label btn btn-danger text-rigth" title="Cancelar Observación" @click="ocultarCuadro()">Cancelar</button>
                            <br>
                        </div> 
                        <div  v-show="errorAlumna" class="form-group row div-error">
                        <div class="text-center text-error">
                            <div v-for="error in errorMsgAlumna" :key="error" v-text="error">

                            </div>
                        </div>
                    </div>
                    </div>        
                </div>

                
                
                <div class="form-group col-12 text-left">
                    <table class="table table-bordered table-striped table-sm fle">
                        <thead >
                            
                            <tr >
                                <th width="15%" >Fecha</th>
                                <th  width="75%" >Observación</th>
                                <th  width="10%">Visibilidad</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr v-for="detalle in arrayDetalle" :key="detalle.id">  
                                <template v-if="detalle.idorientadora==orientadora_id">
                                    <td v-if="detalle.idalumna===alumna_id" v-text="detalle.fecha"></td>
                                    <td v-if="detalle.idalumna===alumna_id" v-text="detalle.observacion"></td>
                                    <td v-if="detalle.visible===1 && detalle.idalumna===alumna_id" class="badge badge-warning">Privado</td>
                                    <td v-if="detalle.visible===0 && detalle.idalumna===alumna_id" class="badge badge-success">Público</td>
                                </template>
                              </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
            <!-- FINALIZACIÓN MUESTRA DE DATOS -->

    </main>
</template>

<script>
    
    export default {
        /* props: ['ruta'], */
        data (){
            return {
                
                reserv : 0,
                reservado : 0,
                visible : 1,
                cuadro : 0,
                orientadora_id : 0,
                observacion : '',
                fechaAtencion : 0,
                idalumna : 0,
                alumna_id : 0,
                curso : '',
                letra : '',
                apellidos : '',
                nombres : '',
                derivadopor : '',
                motivo : '',
                antecedentes : '',
                arrayOrientadora : [],
                arrayDetalle : [],
                modal : 0,
                modalRetiro : 0,
                tituloModal : '',
                tipoAccion : 0,
                errorAlumna : 0,
                errorMsgAlumna : [],
                fecharetiro : 0,
                opcionAlumna : '',
                pagination : {
                    'total' : 0,
                    'current_page' : 0,
                    'per_page' : 0,
                    'last_page' : 0,
                    'from' : 0,
                    'to' : 0,
                },
                offset : 5,
                criterio : 'apellidos',
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
            mostrarDetalle(){
                this.cuadro=1;
               // this.listarDetalleOrientadora();
            },
            volverListado(){
                this.visible=1;
                this.listarOrientadora();
                this.fechaAtencion= 0 ;
                this.observacion='';
                this.reservado = 0 ;
            },

            ocultarDetalle(id){
                if (this.validarAlumna()){
                    return;
                }
                let me =this;
                if(this.reservado){
                    this.reserv = 1;
                }else{
                    this.reserv = 0;
                };
                
                axios.post( '/det_terapeuta/registrar',{
                    'idorientadora' : this.orientadora_id,
                    'fecha' : this.fechaAtencion,
                    'idalumna' : this.alumna_id,
                    'observacion' : this.observacion,
                    'reservado' : this.reserv,
                }).then(function (response){
                    me.listarDetalleOrientadora();
                    me.ocultarCuadro();
                    
                }).catch(function(error){
                    console.log(error);
                                      
                });
            },

            ocultarCuadro(){
                this.fechaAtencion= 0 ;
                this.observacion='';
                this.reservado = 0 ;
                this.cuadro=0;
                
                },

            listarOrientadora(page,buscar,criterio){
                let me=this;
                url = '/terapeuta?page=' + page + '&buscar='+buscar+'&criterio='+criterio;
                 axios.get(url).then(function (response) {
                     var respuesta = response.data;
                     me.arrayOrientadora = respuesta.terapeutas.data;
                     me.pagination = respuesta.pagination;
                })
                .catch(function (error) {
                    console.log(error);
                });
            },
            listarDetalleOrientadora(page){
                let me=this;
                url =  '/det_terapeuta?page=' + page;
                 axios.get(url).then(function (response) {
                     var respuesta = response.data;
                     me.arrayDetalle = respuesta.det_terapeutas.data;
                     me.pagination = respuesta.pagination;
                })
                .catch(function (error) {
                    console.log(error);
                });

            },
            cambiarPagina(page){
                let me = this;
                me.pagination.current_page = page;
                me.listarOrientadora(page);
            },
            registrarAlumna(){
                if (this.validarAlumna()){
                    return;
                }
                let me  =this;
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
                    'letra' : this.letra,
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

                if (!this.fechaAtencion) this.errorMsgAlumna.push("Fecha no puede estar en Blanco");
                if (!this.observacion) this.errorMsgAlumna.push("observacion no puede estar en Blanco");

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
            limpiarBusqueda(){
                let me = this;
                this.buscar = '';
                this.criterio = 'apellidos';
                this.listarOrientadora(1,this.buscar,this.criterio);
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

            abrirModalDerivacion(modelo, accion, data=[]){
                switch(modelo){
                    case "alumna":
                    {
                        switch(accion){
                            case 'actualizar':
                            {
                                //console.log(data);
                                this.visible = 0;
                                this.tituloModal = "Atención Alumna...";
                                this.tipoAccion = 2;
                                this.orientadora_id = data['id'];
                                this.alumna_id = data['idalumna'];
                                this.nombres = data['nombres'];
                                this.apellidos = data['apellidos'];
                                this.curso = data['curso'];
                                this.motivo = data['motivo'];
                                this.antecedentes = data['antecedentes'];
                                this.listarDetalleOrientadora();
                                break;
                           }
                        }
                    }
                }
            }
        },
        mounted() {
            this.listarOrientadora(1,this.buscar,this.criterio);
            //this.listarDetalleOrientadora();
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


