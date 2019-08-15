<template>
<main class="main">
    <!-- Breadcrumb -->
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/">Importar</a></li>
    </ol>
    <div class="container-fluid">
        <h1 class="text-center">Subir datos desde Excel</h1><br>
        <div class="card bg-ligth mt-3">
            <div class="card-header">
                Subir Archivos
            </div>
            <div class="card-body">
                <form action="" method="post">
                    
                    <!-- <input type="file" name="file"   > -->
                    <input type="file" class="form-control" ref="file" v-on:change="handleFileUpload()" required/>
                    <br>
                    <button class="btn btn-success" @click="Importar()">Importar</button>
                </form>
            </div>
        </div>
    </div>
</main>
</template>
<script>
    export default {
        data (){
            return {
                file :''
            }
        },
        methods : {
            
            Importar(){
                let formData = new FormData();
                formData.append('file', this.file);
                axios.post( '/alumna/import',formData,{
                    headers: {
                        'Content-Type': 'multipart/form-data'
                        }
                    }).then(function (response){
                        alert('Archivo Subido');
                        /* me.ArchivoSubido(); */
                    }).catch(function(error){
                        console.log(error);
                        alert('Error');

                    });
            },
            handleFileUpload(){
                this.file = this.$refs.file.files[0];
            },
        },
        mounted() {
        }
    }
</script>