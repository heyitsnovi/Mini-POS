<meta charset="utf-8">
<title>
    MINI POS
</title>

<meta http-equiv="X-UA-Compatible"
      content="IE=edge">
<meta content="width=device-width, initial-scale=1.0"
      name="viewport"/>
<meta http-equiv="Content-type"
      content="text/html; charset=utf-8">

<!-- Tell the browser to be responsive to screen width -->
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

<meta name="csrf-token" content="{{ csrf_token() }}">

<!-- Font Awesome -->
<link rel="stylesheet" href="{{url('css/font-awesome/css/font-awesome.min.css')}}">
<!-- Ionicons -->

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

<link href="{{ url('adminlte/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
<link rel="stylesheet"
      href="{{ url('adminlte/css') }}/select2.min.css"/>
<link href="{{ url('adminlte/css/AdminLTE.min.css') }}" rel="stylesheet">
<link href="{{ url('adminlte/css/skins/_all-skins.min.css') }}" rel="stylesheet">
<link rel="stylesheet"
      href="{{url('css/jquery-ui.css')}}">
<link rel="stylesheet" type="text/css" href="{{url('css/dataTables.bootstrap.min.css')}}">
<link rel="stylesheet"
      href="{{url('css/select.dataTables.min.css')}}"/>
<link rel="stylesheet"
      href="{{url('css/buttons.dataTables.min.css')}}"/>
<link rel="stylesheet"
      href="{{url('css/jquery-ui-timepicker-addon.min.css')}}"/>
<link rel="stylesheet"
      href="{{url('css/bootstrap-datepicker.standalone.min.css')}}"/>

<link rel="stylesheet" href="{{url('css/toastr.css')}}"/>
<link rel="stylesheet" href="{{url('css/dropzone.css')}}"/>
    @if(isset($custom_css))
      @foreach($custom_css as $customcss)
      <link rel="stylesheet" href="{{url('css/')}}/{{$customcss}}"/>
      @endforeach
   @endif

<style>
      .content-wrapper,body{
         background-color: #ecf0f5;
      }
</style>
