@extends('layouts.app')

@section('content')
    <h3 class="page-title">Change password</h3>

    @if(session('success'))
        <!-- If password successfully show message -->
        <div class="row">
            <div class="alert alert-success">
                {{ session('success') }}
            </div>
        </div>
    @else
    <form method="POST" action="{{ route('auth.change_password') }}">
        @csrf
        @method('PATCH')

        <!-- If no success message in flash session show change password form  -->
        <div class="panel panel-default">
            <div class="panel-heading">
                Edit Account Details
            </div>

            <div class="panel-body">
                <div class="row">
                    <div class="col-xs-12 form-group">
                        <label for="current_password" class="control-label">Current password*</label>
                        <input type="password" name="current_password" id="current_password" class="form-control" placeholder="">

                        @if($errors->has('current_password'))
                            <p class="help-block text-danger">
                                {{ $errors->first('current_password') }}
                            </p>
                        @endif
                    </div>
                </div>

                <div class="row">
                    <div class="col-xs-12 form-group">
                        <label for="new_password" class="control-label">New password*</label>
                        <input type="password" name="new_password" id="new_password" class="form-control" placeholder="">

                        @if($errors->has('new_password'))
                            <p class="help-block text-danger">
                                {{ $errors->first('new_password') }}
                            </p>
                        @endif
                    </div>
                </div>

                <div class="row">
                    <div class="col-xs-12 form-group">
                        <label for="new_password_confirmation" class="control-label">New password confirmation*</label>
                        <input type="password" name="new_password_confirmation" id="new_password_confirmation" class="form-control" placeholder="">

                        @if($errors->has('new_password_confirmation'))
                            <p class="help-block text-danger">
                                {{ $errors->first('new_password_confirmation') }}
                            </p>
                        @endif
                    </div>
                </div>

                <button type="submit" class="btn btn-primary">
                    Save
                </button>
            </div>
        </div>
    </form>
    @endif
@stop
