@extends('layouts.app')

@section('content')
    <h3 class="page-title">New User</h3>

    <form method="POST" action="{{ route('admin.users.store') }}">
        @csrf

        <div class="panel panel-default">
            <div class="panel-heading">
               Create New User
            </div>

            <div class="panel-body">
                <div class="row">
                    <div class="col-xs-12 form-group">
                        <label for="name" class="control-label">Name*</label>
                        <input type="text" name="name" id="name" class="form-control" placeholder="" value="{{ old('name') }}" required>
                        <p class="help-block"></p>
                        @error('name')
                            <p class="help-block">{{ $message }}</p>
                        @enderror
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-xs-12 form-group">
                        <label for="email" class="control-label">Email*</label>
                        <input type="email" name="email" id="email" class="form-control" placeholder="" value="{{ old('email') }}" required>
                        <p class="help-block"></p>
                        @error('email')
                            <p class="help-block">{{ $message }}</p>
                        @enderror
                    </div>
                </div>

                <div class="row">
                    <div class="col-xs-12 form-group">
                        <label for="password" class="control-label">Password*</label>
                        <input type="password" name="password" id="password" class="form-control" placeholder="" required>
                        <p class="help-block"></p>
                        @error('password')
                            <p class="help-block">{{ $message }}</p>
                        @enderror
                    </div>
                </div>

                <div class="row">
                    <div class="col-xs-12 form-group">
                        <label for="roles" class="control-label">Roles*</label>
                        <select name="roles[]" id="roles" class="form-control select2" multiple required>
                            @foreach($roles as $id => $role)
                                <option value="{{ $id }}" {{ (collect(old('roles'))->contains($id)) ? 'selected' : '' }}>
                                    {{ $role }}
                                </option>
                            @endforeach
                        </select>
                        <p class="help-block"></p>
                        @error('roles')
                            <p class="help-block">{{ $message }}</p>
                        @enderror
                    </div>
                </div>
            </div>
        </div>

        <button type="submit" class="btn btn-danger">
            Add New User
        </button>
    </form>
@endsection
