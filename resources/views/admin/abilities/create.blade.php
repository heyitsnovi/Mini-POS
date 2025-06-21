@extends('layouts.app')

@section('content')
    <h3 class="page-title">Create Ability</h3>

    <form method="POST" action="{{ route('admin.abilities.store') }}">
        @csrf

        <div class="panel panel-default">
            <div class="panel-heading">
                Create
            </div>

            <div class="panel-body">
                <div class="row">
                    <div class="col-xs-12 form-group">
                        <label for="name" class="control-label">Name*</label>
                        <input 
                            type="text" 
                            name="name" 
                            id="name" 
                            class="form-control" 
                            value="{{ old('name') }}" 
                            required
                        >
                        @if($errors->has('name'))
                            <p class="help-block text-danger">
                                {{ $errors->first('name') }}
                            </p>
                        @endif
                    </div>
                </div>
            </div>
        </div>

        <button type="submit" class="btn btn-danger">
          Save
        </button>
    </form>
@stop
