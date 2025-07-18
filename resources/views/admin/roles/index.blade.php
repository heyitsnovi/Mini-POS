@inject('request', 'Illuminate\Http\Request')
@extends('layouts.app')

@section('content')
    <h3 class="page-title">Roles</h3>
    <p>
        <a href="{{ route('admin.roles.create') }}" class="btn btn-success">Add New</a>
    </p>

    <div class="panel panel-default">
        <div class="panel-heading">
            List
        </div>

        <div class="panel-body table-responsive">
            <table class="table table-bordered table-striped {{ count($roles) > 0 ? 'datatable' : '' }} dt-select">
                <thead>
                    <tr>
                        <th style="text-align:center;"><input type="checkbox" id="select-all" /></th>
                        <th>Name</th>
                        <th>Abilites</th>
                        <th>Actions</th>
                    </tr>
                </thead>

                <tbody>
                    @forelse ($roles as $role)
                        <tr data-entry-id="{{ $role->id }}">
                            <td></td>
                            <td>{{ $role->name }}</td>
                            <td>
                                @foreach ($role->abilities()->pluck('name') as $ability)
                                    <span class="label label-info label-many">{{ $ability }}</span>
                                @endforeach
                            </td>
                            <td>
                                <a href="{{ route('admin.roles.edit', $role->id) }}" class="btn btn-xs btn-info">
                                    Edit
                                </a>

                                <form action="{{ route('admin.roles.destroy', $role->id) }}" method="POST" style="display:inline-block;" onsubmit="return confirm('{{ trans('global.app_are_you_sure') }}');">
                                    @csrf
                                    @method('DELETE')
                                    <input type="submit" class="btn btn-xs btn-danger" value="Delete">
                                </form>
                            </td>
                        </tr>
                    @empty
                        <tr>
                            <td colspan="4">@lang('global.app_no_entries_in_table')</td>
                        </tr>
                    @endforelse
                </tbody>
            </table>
        </div>
    </div>
@stop

@section('javascript')
    <script>
        window.route_mass_crud_entries_destroy = '{{ route('admin.roles.mass_destroy') }}';
    </script>
@endsection
