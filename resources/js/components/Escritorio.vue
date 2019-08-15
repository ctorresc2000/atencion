<template>
<main class="main">
    <!-- Breadcrumb -->
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/">Escritorio</a></li>
    </ol>
    <div class="container-fluid">
        <h1 class="text-center">Cantidad De Alumnas Derivadas:</h1><br>
        <div class="card-columns">
            <div class="card bg-primary">
                <div class="card-body text-center">
                    <h5 class="card-text">Orientadora</h5>
                        <h3 class="card-text" v-text="orient.length+' Alumnas'" ></h3>
                </div>
            </div>
            <div class="card bg-warning">
                <div class="card-body text-center">
                    <h5 class="card-text">Psicóloga</h5>
                    <h3 class="card-text" v-text="psicol.length+' Alumnas'" ></h3>
                </div>
            </div>
            <div class="card bg-success">
                <div class="card-body text-center">
                    <h5 class="card-text">Trabajadora Social</h5>
                    <h3 class="card-text" v-text="trabaj.length+' Alumnas'" ></h3>
                </div>
            </div>
            <div class="card bg-danger">
                <div class="card-body text-center">
                    <h5 class="card-text">Conv. Escolar</h5>
                    <h3 class="card-text" v-text="conviv.length+' Alumnas'" ></h3>
                </div>
            </div>  
            <div class="card bg-light">
                <div class="card-body text-center">
                    <h5 class="card-text">Equipo Gestión</h5>
                    <h3 class="card-text" v-text="gestio.length+' Alumnas'" ></h3>
                </div>
            </div>
            <div class="card bg-info">
                <div class="card-body text-center">
                    <h5 class="card-text">Ed. Diferencial</h5>
                    <h3 class="card-text" v-text="educad.length+' Alumnas'" ></h3>
                </div>
            </div>
            <div class="card bg-success">
                <div class="card-body text-center">
                    <h5 class="card-text">Terapeuta Ocupacional</h5>
                   <h3 class="card-text" v-text="terape.length+' Alumnas'" ></h3>
                </div>
            </div> 
        </div>
    </div>

</main>
</template>
<script>
    export default {
        /* props : ['ruta'], */
        data (){
            return {
                orient:[],
                psicol:[],
                conviv:[],
                trabaj:[],
                gestio:[],
                educad:[],
                terape:[]
            }
        },
        methods : {
            getOrientadoras(){
                let me=this;
                var url= '/escritorio';
                axios.get(url).then(function(response){
                    console.log(url);
                    var respuesta=response.data;
                    me.orient=respuesta.orientadoras;
                    me.psicol=respuesta.psicologas;
                    me.conviv=respuesta.convivencia;
                    me.trabaj=respuesta.trabajadora;
                    me.gestio=respuesta.gestion;
                    me.educad=respuesta.educadora;
                    me.terape=respuesta.terapeuta;

                })
            },
        },
        mounted() {
            this.getOrientadoras();
        }
    }
</script>