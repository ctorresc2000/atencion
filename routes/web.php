<?php
use App\Http\Controllers\AlumnaController;

//use Illuminate\Routing\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::group(['middleware'=>['guest']], function() {
    Route::get('/','Auth\LoginController@showLoginForm');
    Route::post('/login', 'Auth\LoginController@login')->name('login');
    Route::get('/login', 'Auth\LoginController@showLoginForm');

});



Route::group(['middleware'=>['auth']], function() {
    Route::post('/logout','Auth\LoginController@logout')->name('logout');
    Route::get('/escritorio','EscritorioController');
    

    Route::get('/main', function () {
        return view('contenido/contenido');
    })->name('main');

    Route::group(['middleware'=>['Convivencia']], function() {
        Route::get('/alumna', 'AlumnaController@index');
        Route::post('/alumna/registrar', 'AlumnaController@store');
        Route::put('/alumna/actualizar', 'AlumnaController@update');
        Route::put('/alumna/retirar', 'AlumnaController@retirar');
        Route::put('/alumna/reincorporar', 'AlumnaController@reincorporar');
        Route::put('/alumna/derivar', 'AlumnaController@derivar');
        Route::put('/alumna/derivarP', 'AlumnaController@derivarP');
        Route::put('/alumna/derivarV', 'AlumnaController@derivarV');
        Route::put('/alumna/derivarC', 'AlumnaController@derivarC');
        Route::put('/alumna/derivarG', 'AlumnaController@derivarG');
        Route::put('/alumna/derivarT', 'AlumnaController@derivarT');
        Route::put('/alumna/derivarE', 'AlumnaController@derivarE');

        Route::get('/convivencia', 'ConvivenciaController@index');
        Route::post('/convivencia/registrar', 'ConvivenciaController@store');
        Route::put('/convivencia/actualizar', 'ConvivenciaController@update');
        Route::put('/convivencia/cerrar', 'ConvivenciaController@cerrar');
        Route::put('/convivencia/reabrir', 'ConvivenciaController@reabrir');
        Route::get('/convivencia/detalles', 'ConvivenciaController@mostrarDetalle');
        
        Route::post('/det_convivencia/registrar', 'Det_convivenciaController@store');
        Route::get('/det_convivencia', 'Det_convivenciaController@index');

        Route::get('/reporte', 'ReportesController@index');
        Route::get('/reporte/reportePdf/{id}','ReportesController@reportepdf')->name('reporte.pdf');
    });

    Route::group(['middleware'=>['Directora']], function() {

        Route::get('/alumna', 'AlumnaController@index');
        Route::post('/alumna/registrar', 'AlumnaController@store');
        Route::put('/alumna/actualizar', 'AlumnaController@update');
        Route::put('/alumna/retirar', 'AlumnaController@retirar');
        Route::put('/alumna/reincorporar', 'AlumnaController@reincorporar');
        Route::put('/alumna/derivar', 'AlumnaController@derivar'); 
        Route::put('/alumna/derivarP', 'AlumnaController@derivarP');
        Route::put('/alumna/derivarV', 'AlumnaController@derivarV');
        Route::put('/alumna/derivarC', 'AlumnaController@derivarC');
        Route::put('/alumna/derivarG', 'AlumnaController@derivarG');
        Route::put('/alumna/derivarT', 'AlumnaController@derivarT');
        Route::put('/alumna/derivarE', 'AlumnaController@derivarE');
        Route::get('alumna/cargar', 'AlumnaController@cargar')->name('cargar');

        Route::post('alumna/import', 'AlumnaController@importExcel')->name('subir');

        Route::get('/orientadora', 'OrientadoraController@index');
        Route::post('/orientadora/registrar', 'OrientadoraController@store');
        Route::put('/orientadora/actualizar', 'OrientadoraController@update');
        Route::put('/orientadora/cerrar', 'OrientadoraController@cerrar');
        Route::put('/orientadora/reabrir', 'OrientadoraController@reabrir');
        Route::get('/orientadora/detalles', 'OrientadoraController@mostrarDetalle');
        
        Route::post('/det_orientadora/registrar', 'Det_orientadoraController@store');
        Route::get('/det_orientadora', 'Det_orientadoraController@index');
        
        Route::get('/psicologa', 'PsicologaController@index');
        Route::post('/psicologa/registrar', 'PsicologaController@store');
        Route::put('/psicologa/actualizar', 'PsicologaController@update');
        Route::put('/psicologa/cerrar', 'PsicologaController@cerrar');
        Route::put('/psicologa/reabrir', 'PsicologaController@reabrir');
        Route::get('/psicologa/detalles', 'PsicologaController@mostrarDetalle');
        
        Route::post('/det_psicologa/registrar', 'Det_psicologaController@store');
        Route::get('/det_psicologa', 'Det_psicologaController@index');
        
        Route::get('/visitadora', 'VisitadoraController@index');
        Route::post('/visitadora/registrar', 'VisitadoraController@store');
        Route::put('/visitadora/actualizar', 'VisitadoraController@update');
        Route::put('/visitadora/cerrar', 'VisitadoraController@cerrar');
        Route::put('/visitadora/reabrir', 'VisitadoraController@reabrir');
        Route::get('/visitadora/detalles', 'VisitadoraController@mostrarDetalle');
        
        Route::post('/det_visitadora/registrar', 'Det_visitadoraController@store');
        Route::get('/det_visitadora', 'Det_visitadoraController@index');
        
        Route::get('/convivencia', 'ConvivenciaController@index');
        Route::post('/convivencia/registrar', 'ConvivenciaController@store');
        Route::put('/convivencia/actualizar', 'ConvivenciaController@update');
        Route::put('/convivencia/cerrar', 'ConvivenciaController@cerrar');
        Route::put('/convivencia/reabrir', 'ConvivenciaController@reabrir');
        Route::get('/convivencia/detalles', 'ConvivenciaController@mostrarDetalle');
        
        Route::post('/det_convivencia/registrar', 'Det_convivenciaController@store');
        Route::get('/det_convivencia', 'Det_convivenciaController@index');
        
        Route::get('/terapeuta', 'TerapeutaController@index');
        Route::post('/terapeuta/registrar', 'TerapeutaController@store');
        Route::put('/terapeuta/actualizar', 'TerapeutaController@update');
        Route::put('/terapeuta/cerrar', 'TerapeutaController@cerrar');
        Route::put('/terapeuta/reabrir', 'TerapeutaController@reabrir');
        Route::get('/terapeuta/detalles', 'TerapeutaController@mostrarDetalle');
        
        Route::post('/det_terapeuta/registrar', 'Det_terapeutaController@store');
        Route::get('/det_terapeuta', 'Det_terapeutaController@index');
        
        Route::get('/equipo', 'EquipoController@index');
        Route::post('/equipo/registrar', 'EquipoController@store');
        Route::put('/equipo/actualizar', 'EquipoController@update');
        Route::put('/equipo/cerrar', 'EquipoController@cerrar');
        Route::put('/equipo/reabrir', 'EquipoController@reabrir');
        Route::get('/equipo/detalles', 'EquipoController@mostrarDetalle');
        
        Route::post('/det_equipo/registrar', 'Det_equipoController@store');
        Route::get('/det_equipo', 'Det_equipoController@index');
        
        Route::get('/educadora', 'EducadoraController@index');
        Route::post('/educadora/registrar', 'EducadoraController@store');
        Route::put('/educadora/actualizar', 'EducadoraController@update');
        Route::put('/educadora/cerrar', 'EducadoraController@cerrar');
        Route::put('/educadora/reabrir', 'EducadoraController@reabrir');
        Route::get('/educadora/detalles', 'EducadoraController@mostrarDetalle');
        
        Route::post('/det_educadora/registrar', 'Det_educadoraController@store');
        Route::get('/det_educadora', 'Det_educadoraController@index');
        
        Route::get('/reporte', 'ReportesController@index');
        Route::get('/reporte/reportePdf/{id}','ReportesController@reportepdf')->name('reporte.pdf');
        
        Route::get('/rol', 'RolController@index');
        
        Route::get('/user', 'UserController@index');
        Route::post('/user/registrar', 'UserController@store');
        Route::put('/user/actualizar', 'UserController@update');
        Route::put('/user/activar', 'UserController@activar');
        Route::put('/user/desactivar', 'UserController@desactivar');
        Route::put('/user/CambiarPassword', 'UserController@asignarPassword');

        Route::get('/curso', 'CursoController@index');
        Route::post('/curso/registrar', 'CursoController@store');
        Route::put('/curso/actualizar', 'CursoController@update');
        Route::put('/curso/desactivar', 'CursoController@desactivar');
        Route::put('/curso/activar', 'CursoController@activar');
    });

    Route::group(['middleware'=>['Educadora']], function() {
        Route::get('/alumna', 'AlumnaController@index');
        Route::post('/alumna/registrar', 'AlumnaController@store');
        Route::put('/alumna/actualizar', 'AlumnaController@update');
        Route::put('/alumna/retirar', 'AlumnaController@retirar');
        Route::put('/alumna/reincorporar', 'AlumnaController@reincorporar');
        Route::put('/alumna/derivar', 'AlumnaController@derivar');
        Route::put('/alumna/derivarP', 'AlumnaController@derivarP');
        Route::put('/alumna/derivarV', 'AlumnaController@derivarV');
        Route::put('/alumna/derivarC', 'AlumnaController@derivarC');
        Route::put('/alumna/derivarG', 'AlumnaController@derivarG');
        Route::put('/alumna/derivarT', 'AlumnaController@derivarT');
        Route::put('/alumna/derivarE', 'AlumnaController@derivarE');

        Route::get('/educadora', 'EducadoraController@index');
        Route::post('/educadora/registrar', 'EducadoraController@store');
        Route::put('/educadora/actualizar', 'EducadoraController@update');
        Route::put('/educadora/cerrar', 'EducadoraController@cerrar');
        Route::put('/educadora/reabrir', 'EducadoraController@reabrir');
        Route::get('/educadora/detalles', 'EducadoraController@mostrarDetalle');
        
        Route::post('/det_educadora/registrar', 'Det_educadoraController@store');
        Route::get('/det_educadora', 'Det_educadoraController@index');
        
        Route::get('/reporte', 'ReportesController@index');
        
        Route::get('/reporte/reportePdf/{id}','ReportesController@reportepdf')->name('reporte.pdf');

    });

    Route::group(['middleware'=>['Gestion']], function() {
        Route::get('/alumna', 'AlumnaController@index');
        Route::post('/alumna/registrar', 'AlumnaController@store');
        Route::put('/alumna/actualizar', 'AlumnaController@update');
        Route::put('/alumna/retirar', 'AlumnaController@retirar');
        Route::put('/alumna/reincorporar', 'AlumnaController@reincorporar');
        Route::put('/alumna/derivar', 'AlumnaController@derivar');
        Route::put('/alumna/derivarP', 'AlumnaController@derivarP');
        Route::put('/alumna/derivarV', 'AlumnaController@derivarV');
        Route::put('/alumna/derivarC', 'AlumnaController@derivarC');
        Route::put('/alumna/derivarG', 'AlumnaController@derivarG');
        Route::put('/alumna/derivarT', 'AlumnaController@derivarT');
        Route::put('/alumna/derivarE', 'AlumnaController@derivarE');

        Route::get('/equipo', 'EquipoController@index');
        Route::post('/equipo/registrar', 'EquipoController@store');
        Route::put('/equipo/actualizar', 'EquipoController@update');
        Route::put('/equipo/cerrar', 'EquipoController@cerrar');
        Route::put('/equipo/reabrir', 'EquipoController@reabrir');
        Route::get('/equipo/detalles', 'EquipoController@mostrarDetalle');
        
        Route::post('/det_equipo/registrar', 'Det_equipoController@store');
        Route::get('/det_equipo', 'Det_equipoController@index');

        Route::get('/reporte', 'ReportesController@index');
        
        Route::get('/reporte/reportePdf/{id}','ReportesController@reportepdf')->name('reporte.pdf');

    });

    Route::group(['middleware'=>['Orientador']], function() {
        Route::get('/alumna', 'AlumnaController@index');
        Route::post('/alumna/registrar', 'AlumnaController@store');
        Route::put('/alumna/actualizar', 'AlumnaController@update');
        Route::put('/alumna/retirar', 'AlumnaController@retirar');
        Route::put('/alumna/reincorporar', 'AlumnaController@reincorporar');
        Route::put('/alumna/derivar', 'AlumnaController@derivar');
        Route::put('/alumna/derivarP', 'AlumnaController@derivarP');
        Route::put('/alumna/derivarV', 'AlumnaController@derivarV');
        Route::put('/alumna/derivarC', 'AlumnaController@derivarC');
        Route::put('/alumna/derivarG', 'AlumnaController@derivarG');
        Route::put('/alumna/derivarT', 'AlumnaController@derivarT');
        Route::put('/alumna/derivarE', 'AlumnaController@derivarE');

        Route::get('/orientadora', 'OrientadoraController@index');
        Route::post('/orientadora/registrar', 'OrientadoraController@store');
        Route::put('/orientadora/actualizar', 'OrientadoraController@update');
        Route::put('/orientadora/cerrar', 'OrientadoraController@cerrar');
        Route::put('/orientadora/reabrir', 'OrientadoraController@reabrir');
        Route::get('/orientadora/detalles', 'OrientadoraController@mostrarDetalle');
        
        Route::post('/det_orientadora/registrar', 'Det_orientadoraController@store');
        Route::get('/det_orientadora', 'Det_orientadoraController@index');

        Route::get('/reporte', 'ReportesController@index');
        
        Route::get('/reporte/reportePdf/{id}','ReportesController@reportepdf')->name('reporte.pdf');

    });

    Route::group(['middleware'=>['Profesor']], function() {
        Route::get('/alumna', 'AlumnaController@index');
        Route::post('/alumna/registrar', 'AlumnaController@store');
        Route::put('/alumna/actualizar', 'AlumnaController@update');
        Route::put('/alumna/retirar', 'AlumnaController@retirar');
        Route::put('/alumna/reincorporar', 'AlumnaController@reincorporar');
        Route::put('/alumna/derivar', 'AlumnaController@derivar');
        Route::put('/alumna/derivarP', 'AlumnaController@derivarP');
        Route::put('/alumna/derivarV', 'AlumnaController@derivarV');
        Route::put('/alumna/derivarC', 'AlumnaController@derivarC');
        Route::put('/alumna/derivarG', 'AlumnaController@derivarG');
        Route::put('/alumna/derivarT', 'AlumnaController@derivarT');
        Route::put('/alumna/derivarE', 'AlumnaController@derivarE');

        Route::get('/reporte', 'ReportesController@index');
        
        Route::get('/reporte/reportePdf/{id}','ReportesController@reportepdf')->name('reporte.pdf');
    });

    Route::group(['middleware'=>['Psicologo']], function() {
        Route::get('/alumna', 'AlumnaController@index');
        Route::post('/alumna/registrar', 'AlumnaController@store');
        Route::put('/alumna/actualizar', 'AlumnaController@update');
        Route::put('/alumna/retirar', 'AlumnaController@retirar');
        Route::put('/alumna/reincorporar', 'AlumnaController@reincorporar');
        Route::put('/alumna/derivar', 'AlumnaController@derivar');
        Route::put('/alumna/derivarP', 'AlumnaController@derivarP');
        Route::put('/alumna/derivarV', 'AlumnaController@derivarV');
        Route::put('/alumna/derivarC', 'AlumnaController@derivarC');
        Route::put('/alumna/derivarG', 'AlumnaController@derivarG');
        Route::put('/alumna/derivarT', 'AlumnaController@derivarT');
        Route::put('/alumna/derivarE', 'AlumnaController@derivarE');

        Route::get('/psicologa', 'PsicologaController@index');
        Route::post('/psicologa/registrar', 'PsicologaController@store');
        Route::put('/psicologa/actualizar', 'PsicologaController@update');
        Route::put('/psicologa/cerrar', 'PsicologaController@cerrar');
        Route::put('/psicologa/reabrir', 'PsicologaController@reabrir');
        Route::get('/psicologa/detalles', 'PsicologaController@mostrarDetalle');
        
        Route::post('/det_psicologa/registrar', 'Det_psicologaController@store');
        Route::get('/det_psicologa', 'Det_psicologaController@index');

        Route::get('/reporte', 'ReportesController@index');
        
        Route::get('/reporte/reportePdf/{id}','ReportesController@reportepdf')->name('reporte.pdf');

    });

    Route::group(['middleware'=>['Terapeuta']], function() {
        Route::get('/alumna', 'AlumnaController@index');
        Route::post('/alumna/registrar', 'AlumnaController@store');
        Route::put('/alumna/actualizar', 'AlumnaController@update');
        Route::put('/alumna/retirar', 'AlumnaController@retirar');
        Route::put('/alumna/reincorporar', 'AlumnaController@reincorporar');
        Route::put('/alumna/derivar', 'AlumnaController@derivar');
        Route::put('/alumna/derivarP', 'AlumnaController@derivarP');
        Route::put('/alumna/derivarV', 'AlumnaController@derivarV');
        Route::put('/alumna/derivarC', 'AlumnaController@derivarC');
        Route::put('/alumna/derivarG', 'AlumnaController@derivarG');
        Route::put('/alumna/derivarT', 'AlumnaController@derivarT');
        Route::put('/alumna/derivarE', 'AlumnaController@derivarE');

        Route::get('/terapeuta', 'TerapeutaController@index');
        Route::post('/terapeuta/registrar', 'TerapeutaController@store');
        Route::put('/terapeuta/actualizar', 'TerapeutaController@update');
        Route::put('/terapeuta/cerrar', 'TerapeutaController@cerrar');
        Route::put('/terapeuta/reabrir', 'TerapeutaController@reabrir');
        Route::get('/terapeuta/detalles', 'TerapeutaController@mostrarDetalle');
        
        Route::post('/det_terapeuta/registrar', 'Det_terapeutaController@store');
        Route::get('/det_terapeuta', 'Det_terapeutaController@index');

        Route::get('/reporte', 'ReportesController@index');
        
        Route::get('/reporte/reportePdf/{id}','ReportesController@reportepdf')->name('reporte.pdf');

    });

    Route::group(['middleware'=>['Trabajadora']], function() {
        Route::get('/alumna', 'AlumnaController@index');
        Route::post('/alumna/registrar', 'AlumnaController@store');
        Route::put('/alumna/actualizar', 'AlumnaController@update');
        Route::put('/alumna/retirar', 'AlumnaController@retirar');
        Route::put('/alumna/reincorporar', 'AlumnaController@reincorporar');
        Route::put('/alumna/derivar', 'AlumnaController@derivar');
        Route::put('/alumna/derivarP', 'AlumnaController@derivarP');
        Route::put('/alumna/derivarV', 'AlumnaController@derivarV');
        Route::put('/alumna/derivarC', 'AlumnaController@derivarC');
        Route::put('/alumna/derivarG', 'AlumnaController@derivarG');
        Route::put('/alumna/derivarT', 'AlumnaController@derivarT');
        Route::put('/alumna/derivarE', 'AlumnaController@derivarE');

        Route::get('/visitadora', 'VisitadoraController@index');
        Route::post('/visitadora/registrar', 'VisitadoraController@store');
        Route::put('/visitadora/actualizar', 'VisitadoraController@update');
        Route::put('/visitadora/cerrar', 'VisitadoraController@cerrar');
        Route::put('/visitadora/reabrir', 'VisitadoraController@reabrir');
        Route::get('/visitadora/detalles', 'VisitadoraController@mostrarDetalle');
        
        Route::post('/det_visitadora/registrar', 'Det_visitadoraController@store');
        Route::get('/det_visitadora', 'Det_visitadoraController@index');

        Route::get('/reporte', 'ReportesController@index');
        
        Route::get('/reporte/reportePdf/{id}','ReportesController@reportepdf')->name('reporte.pdf');

    });

});

/* Route::get('/home', 'HomeController@index')->name('home'); */
