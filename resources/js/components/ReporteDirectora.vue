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
                        <i class="fa fa-align-justify"></i> Reporte Atenciones
                        <!-- <button type="button" @click="abrirModal('alumna','registrar')" class="btn btn-secondary">
                            <i class="icon-plus"></i>&nbsp;Nuevo
                        </button> -->
                    </div>
                    <div class="card-body">
                        <table class="table table-bordered table-striped table-sm">
                            <thead >
                                <tr >
                                   <!--  <th>Opciones</th> -->
                              <!--       <th>ID</th> -->
                                    <th width="3%">Curso</th>
                                    <th width="35%">Alumna</th>
                                    <th width="15%">Reporte</th>
                                    <!-- <th width="39%">Motivo Derivación</th>
                                    <th width="3%">Ant.</th> -->
                                    <!-- <th>Detalle</th>
                                    <th>Estado</th> -->
                                </tr>
                            </thead>
                            <tbody>
                                <tr v-for="reporte in arrayReporte" :key="reporte.id">
                                    <!-- <td v-text="reporte.id"></td> -->
                                    <td v-text="reporte.curso+' '+reporte.letra"></td>
                                    <td v-text="reporte.apellidos +' '+ reporte.nombres"></td>
                                    <td>
                                        <button type="button" @click="abrirModalDerivacion('alumna','actualizar',reporte)" class="btn btn-success btn-sm text-center"  title="Ver Detalle">
                                            <i class="far fa-eye "></i>
                                        </button>
                                        <button type="button" class="btn btn-primary btn-sm text-center" @click="pdfReporte(reporte.id)" title="Descargar Detalle">
                                            <i class="fas fa-file-download"></i>
                                        </button>
            
                                    </td>
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
                <h1 class="text-center">Reporte Entrevista Alumna</h1>
                <br><br><br>
                <div class="form-group row ">
                    <div class="form-group col-9 form-inline border">
                        <label for="" class="form-label-group"><h5>Nombre :</h5> </label>
                        <h6 for="" v-text="' '+nombres+' '+apellidos"></h6>
                    </div>
                    <div class="form-group col-3 form-inline border">
                        <label for="" class="form-label-group"><h5>Curso :</h5> </label>
                        <h6 for="" v-text="' '+curso+' '+letra"></h6>
                        <!-- <label v-text="orientadora_id"></label> -->
                    </div>
<!--                     <div class="form-group row col-12 border">
                        <label for="" class="form-label-group text-center"><h5>Seguimiento</h5> </label>
                        <h6 for="" class="text-center" v-text="antecedentes"></h6>

                    </div> -->
                </div>

                

                <!-- BootStrap -->
                <div class="accordion card-columns" id="accordionExample">
                    <template v-if="arrayOrientadora.length>0">
                        <div class="card">
                            <div class="card-header" id="headingOne">
                            <h2 class="mb-0">
                                <template v-if="contenido==0"><button  class="btn btn-link" type="button"  aria-expanded="false" aria-controls="collapseOne" @click="(contenido=1)">
                                    <!-- data-toggle="collapse" data-target="#collapseOne" -->
                                <h3>Orientadora</h3>
                                </button></template>
                                <template v-if="contenido==1"><button class="btn btn-link " type="button"  aria-expanded="false" aria-controls="collapseOne" @click="(contenido=0)">
                                    <!-- data-toggle="collapse" data-target="#collapseOne" -->
                                <h3>Orientadora</h3>
                                </button></template>
                            </h2>
                            </div>


                            <div v-if="contenido==1"  aria-labelledby="headingOne" data-parent="toogle">
                                <div class="card-body">
                                    <h4 class="text-center">Entrevistas Orientadora</h4>
                                    <div class="form-group col-12 border">
                                            
                                            <table class="table table-bordered table-striped ">
                                                <thead>
                                                    <tr>
                                                        <th width="15%">Fecha</th>
                                                        <th>Observación</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr v-for="orientadora in arrayOrientadora" :key="orientadora.id">
                                                        
                                                            <!-- <td v-if="orientadora.idorientadora===orientadora_id" v-text="orientadora.idorientadora"></td> -->
                                                            <td v-if="orientadora.idalumna===orientadora_id" v-text="orientadora.fecha"></td>
                                                            <td v-if="orientadora.idalumna===orientadora_id" v-text="orientadora.observacion"></td>
                                                        
                                                    </tr>
                                                </tbody>
                                            </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </template>
                    <template v-if="arrayPsicologa.length>0">
                        <div class="card">
                            <div class="card-header" id="headingTwo">
                            <h2 class="mb-0">
                                <template v-if="contenido2==1"><button  class="btn btn-link" type="button"  aria-expanded="false" aria-controls="collapseOne" @click="(contenido2=0)">
                                    <!-- data-toggle="collapse" data-target="#collapseOne" -->
                                <h3>Psicóloga</h3>
                                </button></template>
                                <template v-if="contenido2==0"><button class="btn btn-link" type="button"  aria-expanded="false" aria-controls="collapseOne" @click="(contenido2=1)">
                                    <!-- data-toggle="collapse" data-target="#collapseOne" -->
                                <h3>Psicóloga</h3>
                                </button></template>
                            </h2>
                            </div>

                            <div v-if="contenido2==1" aria-labelledby="headingTwo" data-parent="toogle">
                                <div class="card-body">
                                    <h4 class="text-center">Entrevistas Psicóloga</h4>
                                    <div class="form-group col-12 border">
                                            
                                            <table class="table table-bordered table-striped">
                                                <thead>
                                                    <tr>
                                                        <th width="15%">Fecha</th>
                                                        <th>Observación</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr v-for="psicologa in arrayPsicologa" :key="psicologa.id">
                                                        
                                                        <!--  <td v-if="psicologa.idorientadora===orientadora_id" v-text="psicologa.idorientadora"></td> -->
                                                            <td v-if="psicologa.idalumna===orientadora_id" v-text="psicologa.fecha"></td>
                                                            <td v-if="psicologa.idalumna===orientadora_id" v-text="psicologa.observacion"></td>
                                                        
                                                    </tr>
                                                </tbody>
                                            </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </template>
                    <template v-if="arrayVisitadora.length>0">
                        <div class="card">
                            <div class="card-header" id="headingThree">
                            <h2 class="mb-0">
                                <template v-if="contenido3==1"><button  class="btn btn-link" type="button"  aria-expanded="false" aria-controls="collapseOne" @click="(contenido3=0)">
                                    <!-- data-toggle="collapse" data-target="#collapseOne" -->
                                <h3>Trabajadora Social</h3>
                                </button></template>
                                <template v-if="contenido3==0"><button class="btn btn-link" type="button"  aria-expanded="false" aria-controls="collapseOne" @click="(contenido3=1)">
                                    <!-- data-toggle="collapse" data-target="#collapseOne" -->
                                <h3>Trabajadora Social</h3>
                                </button></template>
                            </h2>
                            </div>

                            <div v-if="contenido3==1" aria-labelledby="headingTwo" data-parent="toogle">
                                <div class="card-body">
                                <h4 class="text-center">Visitadora Social</h4>
                                    <div class="form-group col-12 border">
                                            
                                            <table class="table table-bordered table-striped">
                                                <thead>
                                                    <tr>
                                                        <th width="15%">Fecha</th>
                                                        <th>Observación</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr v-for="visitadora in arrayVisitadora" :key="visitadora.id">
                                                        
                                                            <!-- <td v-if="visitadora.idorientadora===orientadora_id" v-text="visitadora.idorientadora"></td> -->
                                                            <td v-if="visitadora.idalumna===orientadora_id" v-text="visitadora.fecha"></td>
                                                            <td v-if="visitadora.idalumna===orientadora_id" v-text="visitadora.observacion"></td>
                                                    
                                                    </tr>
                                                </tbody>
                                            </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </template>

                    <template v-if="arrayConvivencia.length>0">
                        <div class="card">
                            <div class="card-header" id="headingFour">
                            <h2 class="mb-0">
                                <template v-if="contenido4==1"><button  class="btn btn-link" type="button"  aria-expanded="false" aria-controls="collapseOne" @click="(contenido4=0)">
                                    <!-- data-toggle="collapse" data-target="#collapseOne" -->
                                <h3>Convivencia Escolar</h3>
                                </button></template>
                                <template v-if="contenido4==0"><button class="btn btn-link" type="button"  aria-expanded="false" aria-controls="collapseOne" @click="(contenido4=1)">
                                    <!-- data-toggle="collapse" data-target="#collapseOne" -->
                                <h3>Convivencia Escolar</h3>
                                </button></template>
                            </h2>
                            </div>

                            <div v-if="contenido4==1" aria-labelledby="headingTwo" data-parent="toogle">
                                <div class="card-body">
                                    <h4 class="text-center">Convivencia Escolar</h4>
                                    <div class="form-group col-12 border">
                                            
                                            <table class="table table-bordered table-striped">
                                                <thead>
                                                    <tr>
                                                        <th width="15%">Fecha</th>
                                                        <th>Observación</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr v-for="convivencia in arrayConvivencia" :key="convivencia.id">
                                                        
                                                            <!-- <td v-if="convivencia.idorientadora===orientadora_id" v-text="convivencia.idorientadora"></td> -->
                                                            <td v-if="convivencia.idalumna===orientadora_id" v-text="convivencia.fecha"></td>
                                                            <td v-if="convivencia.idalumna===orientadora_id" v-text="convivencia.observacion"></td>
                                                        
                                                    </tr>
                                                </tbody>
                                            </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </template>

                    <template v-if="arrayGestion.length>0">
                        <div class="card">
                            <div class="card-header" id="headingThree">
                                <h2 class="mb-0">
                                <template v-if="contenido5==1"><button  class="btn btn-link" type="button"  aria-expanded="false" aria-controls="collapseOne" @click="(contenido5=0)">
                                    <!-- data-toggle="collapse" data-target="#collapseOne" -->
                                <h3>Gestión Curricular</h3>
                                </button></template>
                                <template v-if="contenido5==0"><button class="btn btn-link" type="button"  aria-expanded="false" aria-controls="collapseOne" @click="(contenido5=1)">
                                    <!-- data-toggle="collapse" data-target="#collapseOne" -->
                                <h3>Gestión Curricular</h3>
                                </button></template>
                            </h2>
                            </div>

                            <div v-if="contenido5==1" aria-labelledby="headingTwo" data-parent="toogle">
                                <div class="card-body">
                                    <h4 class="text-center">Entrevistas Gestión Curricular</h4>
                                        <div class="form-group col-12 border">
                                                
                                                <table class="table table-bordered table-striped">
                                                    <thead>
                                                        <tr>
                                                            <th width="15%">Fecha</th>
                                                            <th>Observación</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr v-for="gestion in arrayGestion" :key="gestion.id">
                                                        
                                                            <!-- <td v-if="gestion.idorientadora===orientadora_id" v-text="gestion.idorientadora"></td> -->
                                                            <td v-if="gestion.idalumna===orientadora_id" v-text="gestion.fecha"></td>
                                                            <td v-if="gestion.idalumna===orientadora_id" v-text="gestion.observacion"></td>
                                                        
                                                    </tr>
                                                    </tbody>
                                                </table>
                                        </div>
                                </div>
                            </div>
                        </div>
                    </template>
                    <template v-if="arrayTerapeuta.length>0">
                        <div class="card">
                            <div class="card-header" id="headingThree">
                                <h2 class="mb-0">
                                <template v-if="contenido6==1"><button  class="btn btn-link" type="button"  aria-expanded="false" aria-controls="collapseOne" @click="(contenido6=0)">
                                    <!-- data-toggle="collapse" data-target="#collapseOne" -->
                                <h3>Terapeuta Ocupacional</h3>
                                </button></template>
                                <template v-if="contenido6==0"><button class="btn btn-link" type="button"  aria-expanded="false" aria-controls="collapseOne" @click="(contenido6=1)">
                                    <!-- data-toggle="collapse" data-target="#collapseOne" -->
                                <h3>Terapeuta Ocupacional</h3>
                                </button></template>
                            </h2>
                            </div>

                            <div v-if="contenido6==1" aria-labelledby="headingTwo" data-parent="toogle">
                                <div class="card-body">
                                    <h4 class="text-center">Entrevistas Terapeuta Ocupacional</h4>
                                    <div class="form-group col-12 border">
                                            
                                            <table class="table table-bordered table-striped">
                                                <thead>
                                                    <tr>
                                                        <th width="15%">Fecha</th>
                                                        <th>Observación</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr v-for="terapeuta in arrayTerapeuta" :key="terapeuta.id">
                                                        
                                                            <!-- <td v-if="terapeuta.idorientadora===orientadora_id" v-text="terapeuta.idorientadora"></td> -->
                                                            <td v-if="terapeuta.idalumna===orientadora_id" v-text="terapeuta.fecha"></td>
                                                            <td v-if="terapeuta.idalumna===orientadora_id" v-text="terapeuta.observacion"></td>
                                                        
                                                    </tr>
                                                </tbody>
                                            </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </template>                    
                    <template v-if="arrayEducadora.length>0">
                    <div class="card">
                        <div class="card-header" id="headingSeven">
                            <h2 class="mb-0">
                            <template v-if="contenido7==1"><button  class="btn btn-link" type="button"  aria-expanded="false" aria-controls="collapseOne" @click="(contenido7=0)">
                                <!-- data-toggle="collapse" data-target="#collapseOne" -->
                            <h3>Educadora Diferencial</h3>
                            </button></template>
                            <template v-if="contenido7==0"><button class="btn btn-link" type="button"  aria-expanded="false" aria-controls="collapseOne" @click="(contenido7=1)">
                                <!-- data-toggle="collapse" data-target="#collapseOne" -->
                            <h3>Educadora Diferencial</h3>
                            </button></template>
                        </h2>
                        </div>

                        <div v-if="contenido7==1" aria-labelledby="headingTwo" data-parent="toogle">
                            <div class="card-body">
                                <h4 class="text-center">Educadora Diferencial</h4>
                                <div class="form-group col-12 border">
                                        
                                        <table class="table table-bordered table-striped">
                                            <thead>
                                                <tr>
                                                    <th>Fecha</th>
                                                    <th>Observación</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr v-for="educadora in arrayEducadora" :key="educadora.id">
                                                   
                                                        <!-- <td v-if="educadora.idorientadora===orientadora_id" v-text="educadora.idorientadora"></td> -->
                                                        <td v-if="educadora.idalumna===orientadora_id" v-text="educadora.fecha"></td>
                                                        <td v-if="educadora.idalumna===orientadora_id" v-text="educadora.observacion"></td>
                                                    
                                                </tr>
                                            </tbody>
                                        </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    </template>
                </div> 
                <div class="form-group row "> 
                    <div class="col-10"></div>
                    <div class="form-group-inline col-2 border">
                        <button class="btn btn-warning" @click="volverListado()">Volver</button>
                        <!-- <button @click="pdfReporte(reporte.id)" class="btn btn-primary">Imprimir</button>   -->
                    </div>
                    
                </div>          
                <!-- Fin Bootstrap -->


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
                contenido : 0,
                contenido2 : 0,
                contenido3 : 0,
                contenido4 : 0,
                contenido5 : 0,
                contenido6 : 0,
                contenido7 : 0,
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

                arrayReporte : [],
                arrayOrientadora : [],
                arrayPsicologa : [],
                arrayVisitadora : [],
                arrayConvivencia : [],
                arrayGestion : [],
                arrayTerapeuta : [],
                arrayEducadora : [],

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
            /* MuestraContenido(contenido){
                this.contenido=contenido;
            },
            OcultaContenido(contenido){
                this.contenido=contenido;
            },
             */
            mostrarDetalle(){
                this.cuadro=1;
               // this.listarDetalleOrientadora();
            },
            volverListado(){
                this.visible=1;
                this.listarOrientadora(1);
                this.fechaAtencion= 0 ;
                this.observacion='';
                this.reservado = 0 ;
            },
            pdfReporte(id){
                window.open( '/reporte/reportePdf/'+ id + ',' + '_blank');
            },
            volverListado(){
                this.visible=1;
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
                
                axios.post( '/det_orientadora/registrar',{
                    'idorientadora' : this.orientadora_id,
                    'fecha' : this.fechaAtencion,
                    'idalumna' : this.alumna_id,
                    'observacion' : this.observacion,
                    'reservado' : this.reserv,
                }).then(function (response){
                    me.listarDetalleOrientadora(1);
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

            listarReporte(page){
                let me=this;
                url =  '/reporte?page=' + page; // + '&buscar='+buscar+'&criterio='+criterio;
                 axios.get(url).then(function (response) {
                     var respuesta = response.data;
                     me.arrayReporte = respuesta.reportes.data;
                     me.pagination = respuesta.pagination;
                })
                .catch(function (error) {
                    console.log(error);
                });
            },


            listarDetalleOrientadora(page){
                let me=this;
                url =  '/det_orientadora?page=' + page;
                 axios.get(url).then(function (response) {
                     var respuesta = response.data;
                     me.arrayOrientadora = respuesta.det_orientadoras.data;
                     me.pagination = respuesta.pagination;
                })
                .catch(function (error) {
                    console.log(error);
                });

            },
            
            listarDetallePsicologa(page){
                let me=this;
                url =   '/det_psicologa?page=' + page;
                 axios.get(url).then(function (response) {
                     var respuesta = response.data;
                     me.arrayPsicologa= respuesta.det_psicologas.data;
                     me.pagination = respuesta.pagination;
                })
                .catch(function (error) {
                    console.log(error);
                });

            },

            
            listarDetalleVisitadora(page){
                let me=this;
                url = '/det_visitadora?page=' + page;
                 axios.get(url).then(function (response) {
                     var respuesta = response.data;
                     me.arrayVisitadora = respuesta.det_visitadoras.data;
                     me.pagination = respuesta.pagination;
                })
                .catch(function (error) {
                    console.log(error);
                });

            },

            
            listarDetalleConvivencia(page){
                let me=this;
                url =  '/det_convivencia?page=' + page;
                 axios.get(url).then(function (response) {
                     var respuesta = response.data;
                     me.arrayConvivencia = respuesta.det_convivencias.data;
                     me.pagination = respuesta.pagination;
                })
                .catch(function (error) {
                    console.log(error);
                });

            },

            
            listarDetalleGestion(page){
                let me=this;
                url =  '/det_equipo?page=' + page;
                 axios.get(url).then(function (response) {
                     var respuesta = response.data;
                     me.arrayGestion = respuesta.det_equipos.data;
                     me.pagination = respuesta.pagination;
                })
                .catch(function (error) {
                    console.log(error);
                });

            },

            
            listarDetalleTerapeuta(page){
                let me=this;
                url = '/det_terapeuta?page=' + page;
                 axios.get(url).then(function (response) {
                     var respuesta = response.data;
                     me.arrayTerapeuta = respuesta.det_terapeutas.data;
                     me.pagination = respuesta.pagination;
                })
                .catch(function (error) {
                    console.log(error);
                });

            },

            
            listarDetalleEducadora(page){
                let me=this;
                url =  '/det_educadora?page=' + page;
                 axios.get(url).then(function (response) {
                     var respuesta = response.data;
                     me.arrayEducadora = respuesta.det_educadoras.data;
                     me.pagination = respuesta.pagination;
                })
                .catch(function (error) {
                    console.log(error);
                });

            },



            cambiarPagina(page){
                let me = this;
                me.pagination.current_page = page;
                me.listarReporte(page);
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
                //this.buscar = '';
                this.criterio = 'rut';
                this.listarReporte(1);
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
                                this.letra = data['letra'];
                                this.antecedentes = data['antecedentes'];
                                this.listarDetalleOrientadora(1);
                                this.listarDetallePsicologa(1);
                                this.listarDetalleVisitadora(1);
                                this.listarDetalleConvivencia(1);
                                this.listarDetalleGestion(1);
                                this.listarDetalleTerapeuta(1);
                                this.listarDetalleEducadora(1);

                                break;
                           }
                        }
                    }
                }
            }
        },
        mounted() {
            this.listarReporte(1);
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


