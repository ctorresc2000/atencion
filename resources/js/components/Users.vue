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
                    <i class="fa fa-align-justify"></i> Usuarios
                    <button type="button" @click="abrirModal('usuario','registrar')" class="btn btn-secondary">
                        <i class="icon-plus"></i>&nbsp;Nuevo
                    </button>
                </div>
                <div class="card-body">
                    <div class="form-group row">
                        <div class="col-md-8">
                            <div class="input-group">
                                <select class="form-control col-md-3" v-model="criterio">
                                    <option value="nombreusuario">Nombre</option>
                                    <option value="email">Correo</option>
                                </select>
                                <input type="text" v-model="buscar" @keyup.enter="listarUsuarios(1,buscar,criterio)" class="form-control" placeholder="Texto a buscar">
                                <button type="submit" @click="listarUsuarios(1,buscar,criterio)" class="btn btn-primary"><i class="fa fa-search"></i> Buscar</button>&nbsp;&nbsp;
                                <button type="submit" @click="limpiarBusqueda()" class="btn btn-success"><i class="fas fa-broom"></i> Limpiar Búsqueda</button>
                            </div>
                        </div>
                    </div>
                    <table class="table table-bordered table-striped table-sm">
                        <thead >
                            <tr >
                                <th width="15%">Opciones</th>
                                <th width="5%">Id</th>
                                <th width="20%">Usuario</th>
                                <th width="35%">Nombre</th>
                                <th width="20%">Rol</th>
                                <th width="45%">Email</th>
                                <th width="15%">Estado</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr v-for="usuarios in arrayUser" :key="usuarios.id">
                                <td>
                                    <button type="button" @click="abrirModal('usuario','actualizar',usuarios)" class="btn btn-warning btn-sm" title="Editar">
                                        <i class="icon-pencil"></i>
                                    </button> &nbsp;
                                    <button type="button" @click="abrirModal('usuario','password',usuarios)" class="btn btn-primary btn-sm" title="Cambiar Contraseña">
                                        <i class="fas fa-key"></i>
                                    </button> &nbsp;
                                    <template v-if="usuarios.condicion">
                                        <button type="button" @click="abrirModalRetiro('usuario','desactivar',usuarios)" class="btn btn-danger btn-sm" title="Desactivar">
                                        <i class="icon-trash"></i>
                                    </button>
                                    </template>
                                    <template v-else>
                                        <button type="button" @click="abrirModalRetiro('usuario','activar',usuarios)"  class="btn btn-info btn-sm" title="Activar">
                                        <i class="icon-check"></i>
                                    </button>
                                    </template>
                                    
                                </td>
                                <td v-text="usuarios.id"></td>
                                <td v-text="usuarios.usuario"></td>
                                <td v-text="usuarios.nombreusuario"></td>
                                <td v-text="usuarios.nombre"></td>
                                <td v-text="usuarios.email"></td>
                                <td>
                                    <span v-if="usuarios.condicion===1" class="badge badge-success">Activo</span>
                                    <span v-if="usuarios.condicion===0" class="badge badge-danger">Inactivo</span>
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
                        <form action="" method="post" enctype="multipart/form-data" class="form-horizontal">

                            <div class="form-group row">
                                <label class="col-md-3 form-control-label" for="text-input">Nombre Usuario</label>
                                <div class="col-md-4">
                                    <input type="text" v-model="usuario" class="form-control" placeholder="Usuario">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-md-3 form-control-label" for="text-input">Nombre Completo</label>
                                <div class="col-md-6">
                                    <input type="text" v-model="nombreusuario" class="form-control" placeholder="Nombre Usuario">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-md-3">Tipo Rol</label>
                                <div class="col-md-4">
                                    <select class="form-control" v-model="idrol">
                                        <option value="0">Seleccione Rol</option>
                                        <option v-for="roles in arrayRol" :key="roles.id" :value="roles.id" v-text="roles.nombre"></option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-md-3 form-control-label" for="text-input">Email</label>
                                <div class="col-md-4">
                                    <input type="email" v-model="email" class="form-control">
                                </div>
                            </div>

                            <div v-if="tipoAccion==1" class="form-group row">
                                <label class="col-md-3 form-control-label" for="text-input">Password</label>
                                <div class="col-md-4">
                                    <input type="password" v-model="password" class="form-control">
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
                        <button type="button" v-if="tipoAccion==1" @click="registrarUsuario()" class="btn btn-primary">Guardar</button>
                        <button type="button" v-if="tipoAccion==2" @click="actualizarUsuario()" class="btn btn-primary">Actualizar</button>
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
                        <div v-if="tipoAccion==3">
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

                        <button type="button" v-if="tipoAccion==3" @click="retirarAlumna()" class="btn btn-danger">Deactivar</button>
                        <button type="button" v-if="tipoAccion==4" @click="reincorporarAlumna()" class="btn btn-danger">Activar</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>

        <!-- Inicio del modal Password -->
        <div class="modal fade" tabindex="-1" :class="{'mostrar' : modalPasword}" role="dialog" aria-labelledby="myModalLabel" style="display: none;" aria-hidden="true">
            <div class="modal-dialog modal-danger" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" v-text="tituloModal"></h4>
                        <button type="button" class="close" @click="cerrarModalPassword()" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>

                    <div class="form-group col-12 text-center" >
                        <div>
                            <h3 v-text="opcionAlumna"></h3>
                            <h5></h5>
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" v-model="password" class="form-control" placeholder="Password">
                        </div>
                        <div class="form-group">
                            <label>Reingrese Password</label>
                            <input type="password" v-model="rpass" class="form-control" placeholder="Password">
                        </div>
                     
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" @click="cerrarModalPassword()">Cerrar</button>
                        <button type="button" class="btn btn-danger" @click="guardarPassword()" >Guardar</button>
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
        /* props: ['ruta'], */
        data (){
            return {
                usuario_id : 0,
                usuario : '',
                idrol : 0,
                nombreRol : '',
                nombreusuario : '',
                rpass: '',
                email : '',
                password : '',
                arrayUser : [],
                arrayRol : [],
                modal : 0,
                modalRetiro : 0,
                modalPasword : 0,
                modalDerivacion : 0,
                tituloModal : '',
                tipoAccion : 0,
                errorAlumna : 0,
                errorMsgAlumna : [],
                fecharetiro : 0,
                opcionAlumna : '',
                quienDeriva : '',
                motivoDerivacion : '',
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
            guardarPassword(password,rpass){
                if (this.password!=this.rpass) {
                    Swal.fire({
                    type: 'error',
                    title: 'Oops...',
                    text: 'Contraseñas no Coinciden!',
                    
                    })
                }else{
                    let me  =this;
                    axios.put( '/user/CambiarPassword',{
                        'id' : this.usuario_id,
                        'password' : this.password,
                    }).then(function (response){
                        Swal.fire({
                            position: 'center',
                            type: 'success',
                            title: 'Pasword Guardada',
                            showConfirmButton: false,
                            timer: 2000
                        })   
                        me.cerrarModalPassword();

                    }).catch(function(error){
                        console.log(error);
                    });
                };
                
            },         
            listarUsuarios(page,buscar,criterio){
                let me=this;
                url =  '/user?page=' + page + '&buscar='+buscar+'&criterio='+criterio;
                 axios.get(url).then(function (response) {
                     var respuesta = response.data;
                     me.arrayUser = respuesta.usuarios.data;
                     me.pagination = respuesta.pagination;
                     me.listarRoles(1);
                })
                .catch(function (error) {
                    console.log(error);
                });
            },
            listarRoles(page){
                let me=this;
                url =  '/rol?page=' + page;
                axios.get(url).then(function (response) {
                     var respuesta = response.data;
                     me.arrayRol = respuesta.roles.data;
                     me.pagination = respuesta.pagination;
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

            registrarUsuario(){
                if (this.validarAlumna()){
                    return;
                }
                let me  =this;
                axios.post( '/user/registrar',{
                    'usuario' : this.usuario,
                    //'nombre' : this.nombreRol,
                    'idrol' : this.idrol,
                    'nombreusuario' : this.nombreusuario,
                    'password' : this.password,
                    'email' : this.email,
                }).then(function (response){
                    me.cerrarModal();
                    me.listarUsuarios(1);
                }).catch(function(error){
                    console.log(error);
                });
            },
            actualizarUsuario(){
                if (this.validarAlumna()){
                    return;
                }
                let me  =this;
                axios.put( '/user/actualizar',{
                    'id' : this.usuario_id,
                    'usuario' : this.usuario,
                    'nombreusuario' : this.nombreusuario,
                    'idrol' : this.idrol,
                    'email' : this.email,
                }).then(function (response){
                    me.cerrarModal();
                    me.listarUsuarios(1);
                }).catch(function(error){
                    console.log(error);
                });
            },
            validarAlumna(){
                this.errorAlumna=0;
                this.errorMsgAlumna=[];

                if (!this.nombreusuario) this.errorMsgAlumna.push("Nombre usuario no pueden estar en Blanco");
                if (!this.usuario) this.errorMsgAlumna.push("Datos del usuario no pueden estar en Blanco");
                if (!this.idrol) this.errorMsgAlumna.push("Debe Seleccionar un Rol");
                if (!this.email) this.errorMsgAlumna.push("Debe Ingresar Email");

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
                    case "usuario":
                    {
                        switch(accion){
                            case 'desactivar':
                            {
                                this.tipoAccion = 3;
                                this.modalRetiro = 1;
                                this.usuario_id = data['id'];
                                this.apellidos = data['apellidos'];
                                this.nombres = data['nombres'];
                                this.tituloModal = "Desactivar Usuario";
                                this.opcionAlumna = "Desactiva al Usuario?"
                                break;

                            }
                            case 'activar':
                            {
                                this.tipoAccion = 4;
                                this.modalRetiro = 1;
                                this.usuario_id = data['id'];
                                this.tituloModal = "Activar Usuario";
                                this.apellidos = data['apellidos'];
                                this.nombres = data['nombres'];
                                this.opcionAlumna = "Activar al Usuario?"
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
                this.criterio = '';
                this.listarUsuarios(1,this.buscar,this.criterio);
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
                axios.put( '/user/activar',{
                    'id' : this.usuario_id,
                    'fecharetiro' : 0,
                }).then(function (response){
                    Swal.fire({
                        position: 'center',
                        type: 'success',
                        title: 'Usuario Activado',
                        showConfirmButton: false,
                        timer: 2000
                    })    
                    me.cerrarModalRetiro();
                    me.listarUsuarios(1);

                }).catch(function(error){
                    console.log(error);
                });
            },
            retirarAlumna(){
                if (this.validarAlumnaRetirada()){
                    return;
                }
                let me  =this;
                axios.put( '/user/desactivar',{
                    'id' : this.usuario_id,
                    'fecharetiro' : this.fecharetiro,
                }).then(function (response){
                    Swal.fire({
                        position: 'center',
                        type: 'success',
                        title: 'Usuario Desactivado',
                        showConfirmButton: false,
                        timer: 2000
                    })    
                    me.cerrarModalRetiro();
                    me.listarUsuarios(1);

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
                    case "usuario":
                    {
                        switch(accion){
                            case 'registrar':
                            {
                                this.tipoAccion = 1;
                                this.modal = 1;
                                this.usuario = '';
                                this.idrol = '';
                                this.nombreRol = '';
                                this.nombreusuario = '';
                                this.password = '';
                                this.tituloModal = "Agregar Nuevo Usuario";
                                break;

                            }
                            case 'actualizar':
                            {
                                this.modal = 1;
                                this.tituloModal = "Actualizar Datos Usuario";
                                this.tipoAccion = 2;
                                this.usuario_id = data['id'];
                                this.usuario = data['usuario'];
                                this.nombreusuario = data['nombreusuario']
                                this.idrol = data['idrol'];
                                this.email = data['email'];
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
            this.listarUsuarios(1,this.buscar,this.criterio);
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


