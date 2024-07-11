@extends('layouts.admin', [
  'page_header' => 'Subjects',
  'dash' => '',
  'quiz' => '',
  'subjects' => 'active',
  'users' => '',
  'questions' => '',
  'top_re' => '',
  'all_re' => '',
  'sett' => ''
])

@section('content')
  <div class="margin-bottom">
    <button type="button" class="btn btn-wave" data-toggle="modal" data-target="#createModal">Add Subject</button>
  </div>
  <!-- Create Modal -->
  <div id="createModal" class="modal fade" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Add Subject</h4>
        </div>
        {!! Form::open(['method' => 'POST', 'action' => 'SubjectController@store']) !!}
          <div class="modal-body">
            <div class="row">
              <div class="col-md-6">
                <div class="form-group{{ $errors->has('title') ? ' has-error' : '' }}">
                  {!! Form::label('title', 'Subject Title') !!}
                  <span class="required">*</span>
                  {!! Form::text('title', null, ['class' => 'form-control', 'placeholder' => 'Please Enter Subject Title', 'required' => 'required']) !!}
                  <small class="text-danger">{{ $errors->first('title') }}</small>
                </div>
              </div>
              {{-- <div class="col-md-6">
                <div class="form-group{{ $errors->has('description') ? ' has-error' : '' }}">
                  {!! Form::label('description', 'Description') !!}
                  {!! Form::textarea('description', null, ['class' => 'form-control', 'placeholder' => 'Please Enter Subject Description', 'rows' => '8']) !!}
                  <small class="text-danger">{{ $errors->first('description') }}</small>
                </div>
              </div> --}}
            </div>
          </div>
          <div class="modal-footer">
            <div class="btn-group pull-right">
              {!! Form::reset("Reset", ['class' => 'btn btn-default']) !!}
              {!! Form::submit("Add", ['class' => 'btn btn-wave']) !!}
            </div>
          </div>
        {!! Form::close() !!}
      </div>
    </div>
  </div>
  <div class="content-block box">
    <div class="box-body table-responsive">
      <table id="subjectsTable" class="table table-striped">
        <thead>
          <tr>
            <th>#</th>
            <th>Subject Title</th>
            <th>Actions</th>
          </tr>
        </thead>
      </table>
    </div>
  </div>
@endsection
@section('scripts')
<script type="text/javascript">
$(function () {

    var table = $('#subjectsTable').DataTable({
      processing: true,
      serverSide: true,
      responsive: true,
      autoWidth: false,
      scrollCollapse: true,

      ajax: "{{ route('subjects.index') }}",
      columns: [

      {data: 'DT_RowIndex', name: 'DT_RowIndex',orderable: false, searchable: false},
      {data: 'title', name: 'title'},
      {data: 'action', name: 'action',searchable: false}

      ],
      dom : 'lBfrtip',
      buttons : [
      'csv','excel','pdf','print'
      ],
      order : [[0,'desc']]
    });

  });

</script>
@endsection
