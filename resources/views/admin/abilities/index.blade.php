@inject('request', 'Illuminate\Http\Request')
@extends('layouts.app')

@section('content')
    <h3 class="page-title">Abilities</h3>
    <p>
        <a href="{{ route('admin.abilities.create') }}" class="btn btn-success">Add New</a>
    </p>

    <div class="panel panel-default">
        <div class="panel-heading">
            List
        </div>

        <div class="panel-body table-responsive">
            <table class="table table-bordered table-striped {{ count($abilities) > 0 ? 'datatable' : '' }} dt-select">
                <thead>
                    <tr>
                        <th style="text-align:center;"><input type="checkbox" id="select-all" /></th>
                        <th>@lang('global.abilities.fields.name')</th>
                        <th>&nbsp;</th>
                    </tr>
                </thead>
                
                <tbody>
                    @if (count($abilities) > 0)
                        @foreach ($abilities as $ability)
                            <tr data-entry-id="{{ $ability->id }}">
                                <td></td>
                                <td>{{ $ability->name }}</td>
                                <td>
                                    <a href="{{ route('admin.abilities.edit', [$ability->id]) }}" class="btn btn-xs btn-info">
                                        Edit
                                    </a>

                                    <form action="{{ route('admin.abilities.destroy', $ability->id) }}" method="POST" style="display: inline-block;" onsubmit="return confirm('{{ trans('global.app_are_you_sure') }}');">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-xs btn-danger">
                                            Delete
                                        </button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    @else
                        <tr>
                            <td colspan="3">@lang('global.app_no_entries_in_table')</td>
                        </tr>
                    @endif
                </tbody>
            </table>
        </div>
    </div>
@stop

@section('javascript') 
    <script>
        window.route_mass_crud_entries_destroy = '{{ route('admin.abilities.mass_destroy') }}';
    </script>
@endsection
