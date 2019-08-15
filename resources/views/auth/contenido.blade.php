<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="csrf-token" content="{‌{ csrf_token() }}">

  <title>Programa de Atención Individual</title>

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link href="css/plantilla.css" rel="stylesheet">
</head>

<body class="app flex-row align-items-center">
  <div class="container">
           @yield('login')
  </div>

    <!-- Bootstrap and necessary plugins -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
    <script src="js/app.js"></script>
    <script src="js/plantilla.js"></script>

</body>
</html>