@extends('layouts.app')
@section('content')
<style>
    .btn-generate-db-backup{
        margin-bottom: 10px;
    }
</style>
<div class="row">
    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-database"></i>
                Back Up List
            </div>
            <div class="panel-body">

                <a class="btn btn-success btn-md btn-generate-db-backup">
                    <i class="fa fa-plus"></i>
                    Generate New Back Up
                </a>
  
                <div class="table-responsive">
                    <table class="table table-condensed table-stripped tbl-db-backupfiles">
                        <thead>
                            <tr>
                                <td>#</td>
                                <th>Name</th>
                                <th>Date Created</th>
               
                            </tr>
                        </thead>
                        <tbody>
                            @php
                                $ctr =1;
                            @endphp
                            @foreach($backup_list as $list)
                            
                                <tr>
                                    <td>{{$ctr++}}</td>
                                    <td>{{basename($list)}}</td>
                                    <td>{{date("F d Y H:i:s", filectime($list))}}</td>
                                     
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
