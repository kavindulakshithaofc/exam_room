@extends('layouts.admin', [
  'page_header' => 'Subject',
  'dash' => '',
  'quiz' => 'active',
  'users' => '',
  'questions' => '',
  'top_re' => '',
  'all_re' => '',
  'sett' => ''
])

@section('content')
  <div class="box">
    <div class="box-body">
        <h3>Edit Subject: {{ $subject->title }}
          <a href="{{ route('subjects.index') }}" class="btn btn-gray pull-right" title="{{ __('Back')}}">
            <i class="fa fa-arrow-left"></i> {{ __('Back')}}
          </a>
        </h3>
      <hr>

      {!! Form::model($subject, ['method' => 'PATCH', 'action' => ['SubjectController@update', $subject->id]]) !!}

        <div class="row">
          <div class="col-md-6">
            <div class="form-group{{ $errors->has('title') ? ' has-error' : '' }}">
              {!! Form::label('title', 'Topic Title') !!}
              <span class="required">*</span>
              {!! Form::text('title', null, ['class' => 'form-control', 'placeholder' => 'Please Enter Quiz Title', 'required' => 'required']) !!}
              <small class="text-danger">{{ $errors->first('title') }}</small>
            </div>
          </div>
          {{-- <div class="col-md-6">
            <div class="form-group{{ $errors->has('description') ? ' has-error' : '' }}">
              {!! Form::label('description', 'Description') !!}
              {!! Form::textarea('description', null, ['class' => 'form-control', 'placeholder' => 'Please Enter Quiz Description']) !!}
              <small class="text-danger">{{ $errors->first('description') }}</small>
            </div>
          </div> --}}
        </div>
        <div class="btn-group pull-right">
          {!! Form::submit("Update", ['class' => 'btn btn-wave']) !!}
        </div>
      {!! Form::close() !!}
  </div>
</div>
@endsection
@section('scripts')
<script type="text/javascript">

  $(document).ready(function(){

  });


  </script>
@endsection
