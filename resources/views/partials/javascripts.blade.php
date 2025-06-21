<script src="{{url('js/jquery-1.11.3.min.js')}}"></script>
<script src="{{url('js/jquery.dataTables.min.js')}}"></script>
<script src="{{url('js/dataTables.buttons.min.js')}}"></script>
<script type="text/javascript" src="//cdn.datatables.net/plug-ins/1.10.19/api/sum().js"></script>
<script src="{{url('js/buttons.flash.min.js')}}"></script>
<script src="{{url('js/jszip.min.js')}}"></script>
<script src="{{url('js/pdfmake.min.js')}}"></script>
<script src="{{url('js/vfs_fonts.js')}}"></script>
<script src="{{url('js/buttons.html5.min.js')}}"></script>
<script src="{{url('js/buttons.print.min.js')}}"></script>
<script src="{{url('js/buttons.colVis.min.js')}}"></script>
<script src="{{url('js/dataTables.select.min.js')}}"></script>
<script src="{{url('js/jquery-ui.min.js')}}"></script>
<script src="{{ url('adminlte/js') }}/bootstrap.min.js"></script>
<script src="{{ url('adminlte/js') }}/select2.full.min.js"></script>
<script src="{{ url('adminlte/js') }}/main.js"></script>
<script src="{{ url('adminlte/plugins/slimScroll/jquery.slimscroll.min.js') }}"></script>
<script src="{{ url('adminlte/plugins/fastclick/fastclick.js') }}"></script>
<script src="{{ url('adminlte/js/app.min.js') }}"></script>
<script src="{{url('js/dataTables.bootstrap.min.js')}}"></script>
<script src="{{url('js/bootbox.min.js')}}"></script>
<script src="{{url('js/toastr.js')}}"></script>
<script src="{{url('js/bootstrap-autocomplete.js')}}"></script>
<script src="{{url('js/shortcut.js')}}"></script>
<script src="{{url('js/dropzone.js')}}"></script>
 @if(Auth::check())
	 @if(isset($custom_js))
	 	@foreach($custom_js as $customjs)
		<script src="{{url('js/')}}/{{$customjs}}"></script>
		@endforeach
	@endif
 @endif

@yield('javascript')