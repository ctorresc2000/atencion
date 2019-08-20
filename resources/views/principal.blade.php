<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Programa Atención Individual">
    <meta name="author" content="ltsm.cl">
    <meta name="keyword" content="Sistema Programa Atención Individual">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="user" content="{{ Auth::user() }}">
    <link rel="shortcut icon" href="../public/img/favicon.png">
    <title>Programa Atención Individual</title>
    <!-- Icons -->
    
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.6/css/buttons.dataTables.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    
    
    <link href="css/plantilla.css" rel="stylesheet">

</head>

<body class="app header-fixed sidebar-fixed aside-menu-fixed aside-menu-hidden">
    <div id="app">
        <header class="app-header navbar">
            <button class="navbar-toggler mobile-sidebar-toggler d-lg-none mr-auto" type="button">
            <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="#"></a>
            <button class="navbar-toggler sidebar-toggler d-md-down-none" type="button">
            <span class="navbar-toggler-icon"></span>
            </button>
            <ul class="nav navbar-nav ml-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle nav-link" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                        <span class="d-md-down-none">{{ Auth::user()->nombreusuario}} </span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <div class="dropdown-header text-center">
                            <strong>Cuenta</strong>
                        </div>
                        <a class="dropdown-item" href="{{ route('logout') }}" 
                    onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                    <i class="fa fa-lock"></i> Cerrar sesión</a>
                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                        {{ csrf_field() }}
                    </form>
                    </div>
                </li>
            </ul>
        </header>

        <div class="app-body">

            <div class="sidebar">
                @if(Auth::check())
                    @if (Auth::user()->idrol == 1)
                        @include('plantilla.sidebarProfesor')
                    @elseif (Auth::user()->idrol == 2)
                        @include('plantilla.sidebarOrientador')
                    @elseif (Auth::user()->idrol == 3)
                        @include('plantilla.sidebarPsicologo')
                    @elseif (Auth::user()->idrol == 4)
                        @include('plantilla.sidebarTrabajadora')
                    @elseif (Auth::user()->idrol == 5)
                        @include('plantilla.sidebarConvivencia')
                    @elseif (Auth::user()->idrol == 6)
                        @include('plantilla.sidebarGestion')
                    @elseif (Auth::user()->idrol == 7)
                        @include('plantilla.sidebarTerapeuta')
                    @elseif (Auth::user()->idrol == 8)
                        @include('plantilla.sidebarEducadora')
                    @elseif (Auth::user()->idrol == 9)
                        @include('plantilla.sidebarDirectora')
                    @else
                    @endif
                @endif

                {{--  @include('plantilla.sidebar')  --}}
                
                <button class="sidebar-minimizer brand-minimizer" type="button"></button>
            </div>

            <!-- Contenido Principal -->
                @yield('contenido')
            <!-- /Fin del contenido principal -->
        </div>
    </div>
    

    <footer class="app-footer">
        <span><a href="https://www.ltsm.cl">Liceo Técnico San Miguel</a> &copy; 2019</span>
        <span class="ml-auto">Desarrollado por <a href="#">Christian Torres Cisterna</a></span>
    </footer>

    <!-- Bootstrap and necessary plugins -->

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
    <script src="js/app.js"></script>
    <script src="js/plantilla.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.6/js/dataTables.buttons.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.flash.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.html5.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.print.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
    






    <script>
        $(document).ready(function() {
        $(".dropdown-toggle").dropdown();
        });
    </script>


</body>

</html>