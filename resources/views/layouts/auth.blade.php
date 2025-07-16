<!DOCTYPE html>
<html lang="en">

<head>
    @include('partials.head')
</head>
<style>
    .login-background {
    background: url('/adminlte/img/abstract-material.jpg') no-repeat center center fixed;
    background-size: cover;

}
</style>

<body class="page-header-fixed login-background">

    <div style="margin-top: 10%;"></div>

    <div class="container-fluid">
        @yield('content')
    </div>

    <div class="scroll-to-top"
         style="display: none;">
        <i class="fa fa-arrow-up"></i>
    </div>

    @include('partials.javascripts')

</body>
</html>