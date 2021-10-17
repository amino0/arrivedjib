<!doctype html>
<html lang="en" dir="ltr">
  <head>

		<!-- META DATA -->
		<meta charset="UTF-8">
		<meta name='viewport' content='width=device-width, initial-scale=1.0, user-scalable=0'>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="description" content="Zanex – Bootstrap  Admin & Dashboard Template">
		<meta name="author" content="Spruko Technologies Private Limited">
		<meta name="keywords" content="admin, dashboard, dashboard ui, admin dashboard template, admin panel dashboard, admin panel html, admin panel html template, admin panel template, admin ui templates, administrative templates, best admin dashboard, best admin templates, bootstrap 4 admin template, bootstrap admin dashboard, bootstrap admin panel, html css admin templates, html5 admin template, premium bootstrap templates, responsive admin template, template admin bootstrap 4, themeforest html">

		<!-- FAVICON -->
		{{-- <link rel="shortcut icon" type="image/x-icon" href="{{ asset('template/assets/images/brand/favicon.ico')}}" /> --}}

		<!-- TITLE -->
		<title>Connexion</title>

		<!-- BOOTSTRAP CSS -->
		<link href="{{ asset('template/assets/plugins/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet" />

		<!-- STYLE CSS -->
		<link href="{{ asset('template/assets/css/style.css')}}" rel="stylesheet"/>
		<link href="{{ asset('template/assets/css/dark-style.css')}}" rel="stylesheet"/>
		<link href="{{ asset('template/assets/css/skin-modes.css')}}" rel="stylesheet" />

		<!-- SIDE-MENU CSS -->
		<link href="{{ asset('template/assets/css/sidemenu.css')}}" rel="stylesheet" id="sidemenu-theme">

		<!-- SINGLE-PAGE CSS -->
		<link href="{{ asset('template/assets/plugins/single-page/css/main.css')}}" rel="stylesheet" type="text/css">

		<!--C3 CHARTS CSS -->
		<link href="{{ asset('template/assets/plugins/charts-c3/c3-chart.css')}}" rel="stylesheet"/>

		<!-- P-scroll bar css-->
		<link href="{{ asset('template/assets/plugins/p-scroll/perfect-scrollbar.css')}}" rel="stylesheet" />

		<!--- FONT-ICONS CSS -->
		<link href="{{ asset('template/assets/css/icons.css')}}" rel="stylesheet"/>

		<!-- COLOR SKIN CSS -->
		<link id="theme" rel="stylesheet" type="text/css" media="all" href="{{ asset('template/assets/colors/color1.css')}}" />

	</head>

	<body>

		<!-- BACKGROUND-IMAGE -->
		<div class="login-img">

			<!-- GLOABAL LOADER -->
			<div id="global-loader">
				<img src="{{ asset('template/assets/images/loader.svg')}}" class="loader-img" alt="Loader">
			</div>
			<!-- /GLOABAL LOADER -->

			<!-- PAGE -->
			<div class="page">
				<div class="">
				    <!-- CONTAINER OPEN -->
					<div class="col col-login mx-auto">
						<div class="text-center">
							<h2 style="color: white; font-weight: bold;">ARRIVEDJIB</h2>
						</div>
					</div>
					<div class="container-login100">
						<div class="wrap-login100 p-0">
							<div class="card-body">
								<form class="login100-form validate-form" action="/login" method="POST">
									@csrf
									<span class="login100-form-title">
										{{ __('Login') }}
									</span>
									<div class="wrap-input100 validate-input" >
										<input class="input100" type="text" name="email" placeholder="Email" value="{{ old('email') }}">
										<span class="focus-input100"></span>
										<span class="symbol-input100">
											<i class="zmdi zmdi-email" aria-hidden="true"></i>
										</span>
									</div>
									<div>
										@if($errors->has('email'))
											<p class="text-danger">{{ $errors->first('email') }}</p>
										@endif
									</div>
									<div class="wrap-input100 validate-input" data-bs-validate = "Password is required">
										<input class="input100" type="password" name="password" placeholder="{{ __('Password') }}">
										<span class="focus-input100"></span>
										<span class="symbol-input100">
											<i class="zmdi zmdi-lock" aria-hidden="true"></i>
										</span>
									</div>
									
									<div class="container-login100-form-btn">
										<input type="submit" class="login100-form-btn btn-primary" value="{{ __('Login') }}">
									</div>
									
								</form>
							</div>
						</div>
					</div>
					<!-- CONTAINER CLOSED -->
				</div>
			</div>
			<!-- End PAGE -->

		</div>
		<!-- BACKGROUND-IMAGE CLOSED -->

		<!-- JQUERY JS -->
		<script src="{{ asset('template/assets/js/jquery.min.js')}}"></script>

		<!-- BOOTSTRAP JS -->
		<script src="{{ asset('template/assets/plugins/bootstrap/js/popper.min.js')}}"></script>
		<script src="{{ asset('template/assets/plugins/bootstrap/js/bootstrap.min.js')}}"></script>

		<!-- SPARKLINE JS -->
		<script src="{{ asset('template/assets/js/jquery.sparkline.min.js')}}"></script>

		<!-- CHART-CIRCLE JS -->
		<script src="{{ asset('template/assets/js/circle-progress.min.js')}}"></script>

		<!-- Perfect SCROLLBAR JS-->
		<script src="{{ asset('template/assets/plugins/p-scroll/perfect-scrollbar.js')}}"></script>

		<!-- INPUT MASK JS -->
		<script src="{{ asset('template/assets/plugins/input-mask/jquery.mask.min.js')}}"></script>

		<!-- CUSTOM JS-->
		<script src="{{ asset('template/assets/js/custom.js')}}"></script>

	</body>
</html>
