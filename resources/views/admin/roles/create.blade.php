@extends('layouts.app')

@section('content')
    <h3 class="page-title">New Role</h3>

    <form method="POST" action="{{ route('admin.roles.store') }}">
        @csrf

        <div class="panel panel-default">
            <div class="panel-heading">
              Create
            </div>

            <div class="panel-body">
                <div class="row">
                    <div class="col-xs-12 form-group">
                        <label for="name" class="control-label">Name*</label>
                        <input type="text" name="name" id="name" class="form-control" value="{{ old('name') }}" required>
                        @error('name')
                            <p class="help-block text-danger">{{ $message }}</p>
                        @enderror
                    </div>
                </div>

                <div class="row">
                    <div class="col-xs-12 form-group">
                        <label for="abilities" class="control-label">Abilities</label>
                        <select name="abilities[]" id="abilities" class="form-control select2" multiple>
                            @foreach($abilities as $key => $label)
                                <option value="{{ $key }}" {{ in_array($key, old('abilities', [])) ? 'selected' : '' }}>
                                    {{ $label }}
                                </option>
                            @endforeach
                        </select>
                        @error('abilities')
                            <p class="help-block text-danger">{{ $message }}</p>
                        @enderror
                    </div>
                </div>

            </div>
        </div>

        <button type="submit" class="btn btn-danger">Add New Role</button>
    </form>
@endsection