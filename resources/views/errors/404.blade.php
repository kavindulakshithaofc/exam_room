<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>404 - Page Not Found </title>	
	<link href="https://fonts.googleapis.com/css?family=Montserrat:700,900" rel="stylesheet"><!-- Google font -->
	<link href="{{url('css/error.css')}}" rel="stylesheet" type="text/css"> <!-- Custom stlylesheet -->
</head>

<body>
	<div id="notfound">
		<div class="notfound">
			<div class="notfound-404">
				<img src="{{ asset('images/404.png') }}" alt="404 - Page Not Found" style="max-width: 100%; height: 160%; display: block; margin: 0 auto;">

				{{-- <h1>404</h1> --}}
				<h2></h2>
			</div>
			<a href={{url('/')}} title="Homepage">Homepage</a>
		</div>
	</div>
</body>
</html>
