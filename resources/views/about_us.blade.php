@extends('layouts.app')

@section('head')
    {{-- @if (env('PWA_ENABLE') == 1)
        @laravelPWA
        
    @endif --}}
    <meta name="theme-color" content="#6777EF">
    <link href="{{ asset('logo.png') }}" rel="apple-touch-icon">
    <link href="{{ asset('/manifest.json') }}" rel="manifest">
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('css/font-awesome.min.css') }}">
    <script>
        window.Laravel = <?php echo json_encode([
            'csrfToken' => csrf_token(),
        ]); ?>
    </script>
@endsection

@section('top_bar')
    @include('partials.top_bar')
@endsection

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="about-main-block">
                    <h1 class="main-block-heading text-center">About Us</h1>
                    <p>{!! $about_us_content !!}</p>
                    
                </div>
            </div>
        </div>
    </div>
@endsection

@section('scripts')
    @include('partials.scripts')
@endsection