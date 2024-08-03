<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="{{asset('/images/logo/'. $setting->favicon)}}" rel="icon" type="image/ico">
    <link href="{{asset('css/font-awesome.min.css')}}" rel="stylesheet">
    <link href="{{asset('css/custom-style.css')}}" rel="stylesheet">
    <!--[if IE]>
        <link rel="shortcut icon" href="/favicon.ico" type="image/vnd.microsoft.icon">
    <![endif]-->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>{{$setting->welcome_txt}}</title>
    {{-- <style>
        body {
            /* background-image: url('{{ asset('images/background.jpeg') }}'); Path to your background image */
            background-size: cover; /* Ensures the image covers the entire page */
            background-repeat: no-repeat; /* Prevents the background from repeating */
            background-attachment: fixed; /* Fixes the background image in place */
        }
    </style> --}}
    <!-- Styles -->
    @yield('head')

</head>
<body>
    <div id="app" style="position: relative;">
        @yield('top_bar')
        @yield('content')
        <br>
        <br>
    </div>
    @php
     $ct = App\copyrighttext::where('id','=',1)->first();
    @endphp

   <div class="front-footer">
        <div class="container" >
            <div class="row">
                <div class="col-md-6">
                    {{ $ct->name }}
                </div>
                <div class="col-md-6">
                    @php
                    $si = App\SocialIcons::all();
                    @endphp
                    @foreach($si as $s)
                    @if($s->status==1)
                        <a target="_blank" title="Visit {{ $s->title }}" href="{{ $s->url }}"><img width="32px" src="{{ asset('images/socialicons/'.$s->icon) }}" alt="{{ $s->title }}" title="{{ $s->title }}" style="margin-top:-5px;z-index:9999;"></a>
                    @endif
                    @endforeach
                </div>
            </div>
        </div>
    </div>
    <script src="{{ asset('js/app.js?v=2') }}"></script>
    <script src="{{ asset('js/custom-js.js') }}"></script>
    @yield('scripts')
</body>
</html>
