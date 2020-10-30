@extends('layouts.master')

@section('content')
    <div class="main">
        <div class="main-content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel">
                            <div class="panel-heading">
                                <h3 class="panel-title">Add New Post</h3>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-8">
                                    <form action="/siswa/create" method="POST" enctype="multipart/form-data">
                                        {{csrf_field()}}

                                        <div class="form-group{{$errors->has('title') ? ' has-error' : ''}}">
                                            <label for="exampleInputEmail1">Title</label>
                                            <input name="title" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Title" value="{{old('title')}}">
                                                @if($errors->has('title'))
                                                    <span class="help-block">{{$errors->first('title')}}</span>
                                                @endif
                                        </div>

                                        <div class="form-group">
                                            <label for="Content">Content</label>
                                            <textarea name="content" class="form-control" id="content" rows="3">{{old('content')}}</textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        Thumbnail
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop