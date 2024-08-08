@extends('layouts.admin', [
    'page_header' => 'Quiz',
    'dash' => '',
    'quiz' => 'active',
    'users' => '',
    'questions' => '',
    'top_re' => '',
    'all_re' => '',
    'sett' => '',
])

@section('content')
    <div class="margin-bottom">
        <button type="button" class="btn btn-wave" data-toggle="modal" data-target="#createModal">Add Paper</button>
    </div>
    <!-- Create Modal -->
    <div id="createModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Add Paper</h4>
                </div>
                {!! Form::open(['method' => 'POST', 'action' => 'TopicController@store']) !!}
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group{{ $errors->has('title') ? ' has-error' : '' }}">
                                {!! Form::label('title', 'Paper Title') !!}
                                <span class="required">*</span>
                                {!! Form::text('title', null, ['class' => 'form-control', 'placeholder' => 'Please Enter Paper Title', 'required' => 'required']) !!}
                                <small class="text-danger">{{ $errors->first('title') }}</small>
                            </div>
                            <div class="form-group{{ $errors->has('per_q_mark') ? ' has-error' : '' }}">
                                {!! Form::label('per_q_mark', 'Per Question Mark') !!}
                                <span class="required">*</span>
                                {!! Form::number('per_q_mark', null, ['class' => 'form-control', 'placeholder' => 'Please Enter Per Question Mark', 'required' => 'required']) !!}
                                <small class="text-danger">{{ $errors->first('per_q_mark') }}</small>
                            </div>
                            <div class="form-group{{ $errors->has('type') ? ' has-error' : '' }}">

                                {!! Form::label('Paper Type') !!}
                                <span class="required">*</span>
                                <select name="type" id="type" class="select2 form-control">
                                    <option value="">Select Paper type</option>
                                    <option value="past_papers">Past Papers</option>
                                    <option value="challenges">Challenges</option>
                                    <option value="model_papers">Model Papers</option>
                                </select>
                                <small class="text-danger">{{ $errors->first('type') }}</small>
                            </div>
                            <div class="form-group{{ $errors->has('subject_id') ? ' has-error' : '' }}">
                                {!! Form::label('subject_id', 'Subject') !!}
                                <span class="required">*</span>
                                <select name="subject_id" id="subject_id" class="select2 form-control">
                                    <option value="">Select Subject</option>
                                    @foreach ($subjects as $subject)
                                        <option value="{{ $subject->id }}">{{ $subject->title }}</option>
                                    @endforeach
                                </select>
                                <small class="text-danger">{{ $errors->first('subject_id') }}</small>
                            </div>
                            <div class="form-group{{ $errors->has('timer') ? ' has-error' : '' }}">
                                {!! Form::label('timer', 'Paper Time (in minutes)') !!}
                                {!! Form::number('timer', null, ['class' => 'form-control', 'placeholder' => 'Please Enter Paper Total Time (In Minutes)']) !!}
                                <small class="text-danger">{{ $errors->first('timer') }}</small>
                            </div>
                            <div class="form-group{{ $errors->has('explanation') ? ' has-error' : '' }}">
                                {!! Form::label('title', 'Paper Explanation') !!}
                                {{-- <span class="required">*</span> --}}
                                {!! Form::text('explanation', null, ['class' => 'form-control', 'placeholder' => 'Please Enter Paper Explanation Link', 'required' => 'required']) !!}
                                <small class="text-danger">{{ $errors->first('explanation') }}</small>
                            </div>
                            {{-- <div class="form-group{{ $errors->has('attempts') ? ' has-error' : '' }}">
                                {!! Form::label('attempts', 'No of attepmts for the exam') !!}
                                {!! Form::number('attempts', null, ['class' => 'form-control', 'placeholder' => 'No of attemts Students can write answers']) !!}
                                <small class="text-danger">{{ $errors->first('attempts') }}</small>
                            </div> --}}

                            <div class="form-group{{ $errors->has('attempts') ? ' has-error' : '' }}">
                                {!! Form::label('attempts', 'Number of attempts for the exam') !!}
                                {!! Form::select('attempts', [1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 10 => '10', 50 => '50', 999 => 'Infinite'], null, ['class' => 'form-control', 'placeholder' => 'Select number of attempts']) !!}
                                <small class="text-danger">{{ $errors->first('attempts') }}</small>
                            </div>
                            

                            {{-- <label for="married_status">Paper Price:</label> --}}
                            {{-- <select name="married_status" id="ms" class="form-control">
                  <option value="no">Free</option>
                  <option value="yes">Paid</option>
                </select> --}}

                            {{-- <input type="checkbox" class="quizfp toggle-input" name="quiz_price" id="toggle">
                            <label for="toggle"></label>

                            <div style="display: none;" id="doabox">
                                <br>
                                <label for="dob">Choose Paper Price: </label>
                                <div class="form-group{{ $errors->has('amount') ? ' has-error' : '' }}">
                                    <input value="" name="amount" id="doa" type="text" class="form-control" placeholder="Please Enter Paper Price">
                                    <small class="text-danger">{{ $errors->first('amount') }}</small>
                                </div>
                            </div> --}}
                            <br>
                            <div class="form-group {{ $errors->has('show_ans') ? ' has-error' : '' }}">
                                <label for="">Enable Show Answer: </label>
                                <input type="checkbox" class="toggle-input" name="show_ans" id="toggle2">
                                <label for="toggle2"></label>
                                <br>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group{{ $errors->has('description') ? ' has-error' : '' }}">
                                {!! Form::label('description', 'Description') !!}
                                {!! Form::textarea('description', null, ['class' => 'form-control', 'placeholder' => 'Please Enter Paper Description', 'rows' => '8']) !!}
                                <small class="text-danger">{{ $errors->first('description') }}</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <div class="btn-group pull-right">
                        {!! Form::reset('Reset', ['class' => 'btn btn-default']) !!}
                        {!! Form::submit('Add', ['class' => 'btn btn-wave']) !!}
                    </div>
                </div>
                {!! Form::close() !!}
            </div>
        </div>
    </div>
    <div class="box">
        <div class="box-body table-responsive">
            <table id="topicsTable" class="table table-hover table-striped">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Paper Title</th>
                        <th>Subject</th>
                        <th>Description</th>
                        <th>Per Question Mark</th>
                        <th>Time</th>
                        <th>Attempts</th>
                        <th>Actions</th>
                    </tr>
                </thead>
            </table>
        </div>
    </div>
@endsection
@section('scripts')
    <script type="text/javascript">
        $(function() {
            $('#fb_check').change(function() {
                $('#fb').val(+$(this).prop('checked'))
            })
        })

        $(document).ready(function() {

            $('.quizfp').change(function() {

                if ($('.quizfp').is(':checked')) {
                    $('#doabox').show('fast');
                } else {
                    $('#doabox').hide('fast');
                }

            });

        });


        $('#priceCheck').change(function() {
            alert('hi');
        });

        function showprice(id) {
            if ($('#toggle2' + id).is(':checked')) {
                $('#doabox2' + id).show('fast');
            } else {

                $('#doabox2' + id).hide('fast');
            }
        }

        $(function() {

            var table = $('#topicsTable').DataTable({
                processing: true,
                serverSide: true,
                responsive: true,
                autoWidth: false,
                scrollCollapse: true,

                ajax: "{{ route('topics.index') }}",
                columns: [

                    {
                        data: 'DT_RowIndex',
                        name: 'DT_RowIndex',
                        orderable: false,
                        searchable: false
                    },
                    {
                        data: 'title',
                        name: 'title'
                    },
                    {
                        data: 'subject',
                        name: 'subject'
                    },
                    {
                        data: 'description',
                        name: 'description'
                    },
                    {
                        data: 'per_q_mark',
                        name: 'per_q_mark'
                    },
                    {
                        data: 'timer',
                        name: 'timer'
                    },
                    {
                        data: 'attempts',
                        name: 'attempts'
                    },
                    //   {data: 'type', name: 'type'},
                    {
                        data: 'action',
                        name: 'action',
                        searchable: false
                    }

                ],
                dom: 'lBfrtip',
	  			sDom: "<'row'><'row'<'col-md-4'l><'col-md-4'B><'col-md-4'f>r>t<'row'<'col-md-6'i><'col-md-6'p>>",
                buttons: [
                    // 'csv', 'excel', 'pdf', 'print'
                ],
                order: [
                    [0, 'desc']
                ]
            });

        });
    </script>
@endsection
