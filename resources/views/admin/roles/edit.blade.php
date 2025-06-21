@extends('layouts.app')

@section('content')
    <h3 class="page-title">Edit Role</h3>

    <form method="POST" action="{{ route('admin.roles.update', $role->id) }}">
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
                        <input type="text" name="name" id="name"
                            class="form-control @error('name') is-invalid @enderror"
                            value="{{ old('name', $role->name) }}" required>

                        @error('name')
                            <p class="help-block text-danger">{{ $message }}</p>
                        @enderror
                    </div>
                </div>

                <div class="row">
                    <div class="col-xs-12 form-group">
                        <label for="abilities" class="control-label">Abilities</label>
                        <select name="abilities[]" id="abilities" class="form-control select2 @error('abilities') is-invalid @enderror" multiple>
                            @foreach ($abilities as $key => $label)
                                <option value="{{ $key }}"
                                    {{ in_array($key, old('abilities', $role->getAbilities()->pluck('name')->toArray())) ? 'selected' : '' }}>
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

        <button type="submit" class="btn btn-danger">
            {{ __('global.app_update') }}
        </button>
    </form>
@endsection
