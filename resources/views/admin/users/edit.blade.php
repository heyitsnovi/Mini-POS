@extends('layouts.app')

@section('content')
    <h3 class="page-title">Edit User</h3>

    <form method="POST" action="{{ route('admin.users.update', $user->id) }}">
        @csrf
        @method('PUT')

        <div class="panel panel-default">
            <div class="panel-heading">
              Edit
            </div>

            <div class="panel-body">
                <div class="row">
                    <div class="col-xs-12 form-group">
                        <label for="name" class="control-label">Name*</label>
                        <input type="text" name="name" id="name" value="{{ old('name', $user->name) }}" class="form-control" required>
                        @error('name')
                            <p class="help-block text-danger">{{ $message }}</p>
                        @enderror
                    </div>
                </div>

                <div class="row">
                    <div class="col-xs-12 form-group">
                        <label for="email" class="control-label">Email*</label>
                        <input type="email" name="email" id="email" value="{{ old('email', $user->email) }}" class="form-control" required>
                        @error('email')
                            <p class="help-block text-danger">{{ $message }}</p>
                        @enderror
                    </div>
                </div>

                <div class="row">
                    <div class="col-xs-12 form-group">
                        <label for="password" class="control-label">Password</label>
                        <input type="password" name="password" id="password" class="form-control">
                        @error('password')
                            <p class="help-block text-danger">{{ $message }}</p>
                        @enderror
                    </div>
                </div>

                <div class="row">
                    <div class="col-xs-12 form-group">
                        <label for="roles" class="control-label">Roles*</label>
                        <select name="roles[]" id="roles" class="form-control select2" multiple required>
                            @foreach($roles as $role)
                                <option value="{{ $role }}"
                                    {{ in_array($role, old('roles', $user->roles->pluck('name')->toArray())) ? 'selected' : '' }}>
                                    {{ $role }}
                                </option>
                            @endforeach
                        </select>
                        @error('roles')
                            <p class="help-block text-danger">{{ $message }}</p>
                        @enderror
                    </div>
                </div>

            </div>
        </div>

        <button type="submit" class="btn btn-danger">Update User</button>
    </form>
@stop
