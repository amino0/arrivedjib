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
		{{-- <link rel="shortcut icon" type="image/x-icon" href="{{ asset('template/assets/images/brand/favicon.ico') }}" /> --}}

		<!-- TITLE -->
		<title>Scan Qr Code </title>

		<!-- BOOTSTRAP CSS -->
		<link href="{{ asset('template/assets/plugins/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet" />

		<!-- STYLE CSS -->
		<link href="{{ asset('template/assets/css/style.css')}}" rel="stylesheet"/>
		<link href="{{ asset('template/assets/css/dark-style.css')}}" rel="stylesheet"/>
		<link href="{{ asset('template/assets/css/skin-modes.css')}}" rel="stylesheet" />

		<!--C3 CHARTS CSS -->
		<link href="{{ asset('template/assets/plugins/charts-c3/c3-chart.css')}}" rel="stylesheet"/>

		<!-- P-scroll bar css-->
		<link href="{{ asset('template/assets/plugins/p-scroll/perfect-scrollbar.css')}}" rel="stylesheet" />

		<!--- FONT-ICONS CSS -->
		<link href="{{ asset('template/assets/css/icons.css')}}" rel="stylesheet"/>

		<!-- SIDEBAR CSS -->
		<link href="{{ asset('template/assets/plugins/sidebar/sidebar.css')}}" rel="stylesheet">

		<!-- SELECT2 CSS -->
		<link href="{{ asset('template/assets/plugins/select2/select2.min.css')}}" rel="stylesheet"/>

		<!-- INTERNAL Data table css -->
		<link href="{{ asset('template/assets/plugins/datatable/css/dataTables.bootstrap5.css')}}" rel="stylesheet" />
		<link href="{{ asset('template/assets/plugins/datatable/responsive.bootstrap5.css')}}" rel="stylesheet" />

		<!-- COLOR SKIN CSS -->
		<link id="theme" rel="stylesheet" type="text/css" media="all" href="{{ asset('template/assets/colors/color1.css')}}" />

		<script type="text/javascript" src="https://webqr.com/llqrcode.js"></script>
		<script type="text/javascript" src="https://apis.google.com/js/plusone.js"></script>
		<script type="text/javascript" src="https://webqr.com/webqr.js"></script>
		<style>
			#outdiv
			{
				width:640px;
				height:480px;
				border: solid;
				border-width: 3px 3px 3px 3px;
			}
			#result
			{
				border: solid;
				border-width: 1px 1px 1px 1px;
				padding:20px;
				width:70%;
			}
			#mp1
			{
				text-align:center;
				font-size:35px;
			}
			@media only screen and (max-width: 991px){
				.mediarrive{
					margin-left: 50px;
				}
			}
		</style>
	</head>

	<body>

		<!-- GLOBAL-LOADER -->
		<div id="global-loader">
			<img src="{{ asset('template/assets/images/loader.svg')}}" class="loader-img" alt="Loader">
		</div>
		<!-- /GLOBAL-LOADER -->

		<!-- PAGE -->
		<div class="page">
			<div class="page-main">

				<!-- HEADER -->
				<div class="header hor-header">
					<div class="container">
						<div class="d-flex">
							<a class="animated-arrow hor-toggle horizontal-navtoggle"><span></span></a>
							<a class="header-brand1">
								<h2 class="mediarrive" style="font-weight: bold;margin-top: 13px;">ARRIVEDJIB</h2>
							</a><!-- LOGO -->
							<div class="d-flex order-lg-2 ms-auto header-right-icons">
								<div class="dropdown d-lg-none d-md-block d-none">
									<a href="#" class="nav-link icon" data-bs-toggle="dropdown">
										<i class="fe fe-search"></i>
									</a>
									<div class="dropdown-menu header-search dropdown-menu-start">
										<div class="input-group w-100 p-2">
											<input type="text" class="form-control" placeholder="Search....">
											<div class="input-group-text btn btn-primary">
												<i class="fa fa-search" aria-hidden="true"></i>
											</div>
										</div>
									</div>
								</div><!-- SEARCH -->
								<button class="navbar-toggler navresponsive-toggler d-md-none ms-auto" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent-4" aria-controls="navbarSupportedContent-4" aria-expanded="false" aria-label="Toggle navigation">
									<span class="navbar-toggler-icon fe fe-more-vertical text-dark"></span>
								</button>
								<div class="dropdown d-none d-md-flex">
									<a class="nav-link icon theme-layout nav-link-bg layout-setting">
										<span class="dark-layout" data-bs-placement="bottom" data-bs-toggle="tooltip" title="Dark Theme"><i class="fe fe-moon"></i></span>
										<span class="light-layout" data-bs-placement="bottom" data-bs-toggle="tooltip" title="Light Theme"><i class="fe fe-sun"></i></span>
									</a>
								</div><!-- Theme-Layout -->
								<div class="dropdown d-none d-md-flex">
									<a class="nav-link icon full-screen-link nav-link-bg">
										<i class="fe fe-minimize fullscreen-button"></i>
									</a>
								</div><!-- FULL-SCREEN -->
								
								<div class="dropdown d-none d-md-flex profile-1">
									<a href="#" data-bs-toggle="dropdown" class="nav-link icon pe-2 leading-none d-flex">
										<span>
											<i class="fe fe-menu"></i>
										</span>
									</a>
									<div class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<div class="drop-heading">
											<div class="text-center">
												<h5 class="text-dark mb-0">{{ Auth::user()->name }}</h5>
												<small class="text-muted">Administrateur</small>
											</div>
										</div>
										<div class="dropdown-divider m-0"></div>
										<a class="dropdown-item" href="{{ route('deconnexion') }}">
											<i class="dropdown-icon fe fe-log-out"></i> Deconnexion
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- End HEADER -->

				<!-- Mobile Header -->
				<div class="mobile-header hor-mobile-header">
					<div class="container">
						<div class="d-flex">
							<a class="animated-arrow hor-toggle horizontal-navtoggle"><span></span></a>
							<a class="header-brand">
								<h3 style="font-weight: bold; margin-left: 50px;margin-top: 13px">ARRIVEDJIB</h3>
							</a>
							
							<div class="d-flex order-lg-2 ms-auto header-right-icons">
								<div class="dropdown d-lg-none d-md-block d-none">
									
								</div><!-- SEARCH -->
								<button class="navbar-toggler navresponsive-toggler d-md-none ms-auto" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent-4" aria-controls="navbarSupportedContent-4" aria-expanded="false" aria-label="Toggle navigation">
									<span class="navbar-toggler-icon fe fe-more-vertical text-dark"></span>
								</button>
								<div class="dropdown d-none d-md-flex">
									<a class="nav-link icon theme-layout nav-link-bg layout-setting">
										<span class="dark-layout" data-bs-placement="bottom" data-bs-toggle="tooltip" title="Dark Theme"><i class="fe fe-moon"></i></span>
										<span class="light-layout" data-bs-placement="bottom" data-bs-toggle="tooltip" title="Light Theme"><i class="fe fe-sun"></i></span>
									</a>
								</div><!-- Theme-Layout -->
								<div class="dropdown d-none d-md-flex">
									<a class="nav-link icon full-screen-link nav-link-bg">
										<i class="fe fe-minimize fullscreen-button"></i>
									</a>
								</div><!-- FULL-SCREEN -->
								<div class="dropdown d-none d-md-flex profile-1">
									<a href="#" data-bs-toggle="dropdown" class="nav-link icon pe-2 leading-none d-flex">
										<span>
											<i class="fe fe-menu"></i>
										</span>
									</a>
									<div class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<div class="drop-heading">
											<div class="text-center">
												<h5 class="text-dark mb-0">{{ Auth::user()->name }}</h5>
												<small class="text-muted">Administrateur</small>
											</div>
										</div>
										<div class="dropdown-divider m-0"></div>
										<a class="dropdown-item" href="{{ route('deconnexion') }}">
											<i class="dropdown-icon fe fe-log-out"></i> Deconnexion
										</a>
									</div>
								</div>
								<div class="dropdown d-none d-md-flex header-settings">
									<a href="#" class="nav-link icon " data-bs-toggle="sidebar-right" data-target=".sidebar-right">
										<i class="fe fe-menu"></i>
									</a>
								</div><!-- SIDE-MENU -->
							</div>
						</div>
					</div>
				</div>
				<div class="mb-1 navbar navbar-expand-lg  responsive-navbar navbar-dark d-md-none bg-white">
					<div class="collapse navbar-collapse" id="navbarSupportedContent-4">
						<div class="d-flex order-lg-2 ms-auto">
							
							<div class="dropdown d-md-flex">
								<a class="nav-link icon theme-layout nav-link-bg layout-setting">
									<span class="dark-layout" data-bs-placement="bottom" data-bs-toggle="tooltip" title="Dark Theme"><i class="fe fe-moon"></i></span>
									<span class="light-layout" data-bs-placement="bottom" data-bs-toggle="tooltip" title="Light Theme"><i class="fe fe-sun"></i></span>
								</a>
							</div><!-- Theme-Layout -->
							<div class="dropdown d-md-flex">
								<a class="nav-link icon full-screen-link nav-link-bg">
									<i class="fe fe-minimize fullscreen-button"></i>
								</a>
							</div><!-- FULL-SCREEN -->
							<div class="dropdown d-md-flex profile-1">
								<a href="#" data-bs-toggle="dropdown" class="nav-link icon pe-2 leading-none d-flex">
									<span>
										<i class="fe fe-menu"></i>
									</span>
								</a>
								<div class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
									<div class="drop-heading">
										<div class="text-center">
											<h5 class="text-dark mb-0">{{ Auth::user()->name }}</h5>
											<small class="text-muted">Administrateur</small>
										</div>
									</div>
									<div class="dropdown-divider m-0"></div>
									<a class="dropdown-item" href="{{ route('deconnexion') }}">
										<i class="dropdown-icon fe fe-log-out"></i> Deconnexion
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /Mobile Header -->

				<!--/Horizontal-main -->
				<div class="sticky">
					<div class="horizontal-main hor-menu clearfix">
						<div class="horizontal-mainwrapper container clearfix">
							<!--Nav-->
							<nav class="horizontalMenu clearfix">
								<ul class="horizontalMenu-list">
									<li aria-haspopup="true"><a href="{{ route('dashboard') }}"><i class="fe fe-home"></i> Dashboard</a></li>
									<li aria-haspopup="true"><a href="{{ route('liste') }}"><i class="fe fe-list"></i>Liste</a>
									</li>
									<li aria-haspopup="true"><a href="{{ route('qrcode') }}"><i class="mdi mdi-qrcode-scan"></i> Scan QrCode</a></li>
								</ul>
							</nav>
							<!--Nav-->
						</div>
					</div>
				</div>
				<!--/Horizontal-main -->

                <!--app-content open-->
				<div class="app-content hor-content">
					<div class="container">

						<!-- PAGE-HEADER -->
						<div class="page-header">
							<div>
								<h1 class="page-title">Scan QrCode</h1>
							</div>
						</div>
						<!-- PAGE-HEADER END -->

						<!-- ROW-5 -->
						<div class="row row-sm">
							<div class="col-lg-12">
								<div class="card">
									<div class="card-body">
										<div class="table-responsive export-table">
											<table id="file-datatable" class="table table-bordered text-nowrap key-buttons w-100">
												<div id="mainbody">
													<table class="tsel" border="0" width="100%">
														<tr>
															<td valign="top" align="center" width="50%">
																<table class="tsel" border="0">
																	<tr>
																		<td><img class="selector" id="webcamimg" src="https://webqr.com/vid.png" onclick="setwebcam()" align="left" /></td>
																		<td><img class="selector" id="qrimg" src="https://webqr.com/cam.png" onclick="setimg()" align="right"/></td></tr>
																		<tr><td colspan="2" align="center"><div id="outdiv"></div></td>
																	</tr>
																</table>
															</td>
														</tr>		
														<tr>
															<td colspan="3" align="center">
																<div id="result"></div>
															</td>
														</tr>
													</table>
												</div>
												<canvas id="qr-canvas" style="display: none"></canvas>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- ROW-5 END -->
					</div>
				</div>
				<!-- CONTAINER END -->
            </div>
			<!-- FOOTER -->
			<footer class="footer">
				<div class="container">
					<div class="row align-items-center flex-row-reverse">
						<div class="col-md-12 col-sm-12 text-center">
							<strong>©Développé par ANSIE</strong>
						</div>
					</div>
				</div>
			</footer>
			<!-- FOOTER END -->
		</div>

		<!-- BACK-TO-TOP -->
		<a href="#top" id="back-to-top"><i class="fa fa-angle-up"></i></a>

		<!-- JQUERY JS -->
		<script src="{{ asset('template/assets/js/jquery.min.js')}}"></script>

		<!-- BOOTSTRAP JS -->
		<script src="{{ asset('template/assets/plugins/bootstrap/js/popper.min.js')}}"></script>
		<script src="{{ asset('template/assets/plugins/bootstrap/js/bootstrap.min.js')}}"></script>

		<!-- SPARKLINE JS-->
		<script src="{{ asset('template/assets/js/jquery.sparkline.min.js')}}"></script>

		<!-- CHART-CIRCLE JS-->
		<script src="{{ asset('template/assets/js/circle-progress.min.js')}}"></script>

		<!-- CHARTJS CHART JS-->
		<script src="{{ asset('template/assets/plugins/chart/Chart.bundle.js')}}"></script>
		<script src="{{ asset('template/assets/plugins/chart/utils.js')}}"></script>

		<!-- PIETY CHART JS-->
		<script src="{{ asset('template/assets/plugins/peitychart/jquery.peity.min.js')}}"></script>
		<script src="{{ asset('template/assets/plugins/peitychart/peitychart.init.js')}}"></script>

		<!-- INTERNAL SELECT2 JS -->
		<script src="{{ asset('template/assets/plugins/select2/select2.full.min.js')}}"></script>

		<!-- INTERNAL Data tables js-->
		<script src="{{ asset('template/assets/plugins/datatable/js/jquery.dataTables.min.js')}}"></script>
		<script src="{{ asset('template/assets/plugins/datatable/js/dataTables.bootstrap5.js')}}"></script>
		<script src="{{ asset('template/assets/plugins/datatable/dataTables.responsive.min.js')}}"></script>

		<!-- ECHART JS-->
		<script src="{{ asset('template/assets/plugins/echarts/echarts.js')}}"></script>

		<!--HORIZONTAL JS-->
		<script src="{{ asset('template/assets/plugins/horizontal-menu/horizontal-menu.js')}}"></script>

		<!-- STICKY JS -->
		<script src="{{ asset('template/assets/js/stiky.js')}}"></script>

		<!-- SIDEBAR JS -->
		<script src="{{ asset('template/assets/plugins/sidebar/sidebar.js')}}"></script>

		<!-- Perfect SCROLLBAR JS-->
		<script src="{{ asset('template/assets/plugins/p-scroll/perfect-scrollbar.js')}}"></script>
		<script src="{{ asset('template/assets/plugins/p-scroll/pscroll-1.js')}}"></script>

		<!-- APEXCHART JS -->
		<script src="{{ asset('template/assets/js/apexcharts.js')}}"></script>

		<!-- INDEX JS -->
		<script src="{{ asset('template/assets/js/index1.js')}}"></script>

		<!-- CUSTOM JS -->
		<script src="{{ asset('template/assets/js/custom.js')}}"></script>

		<script>
			load();
			var _gaq = _gaq || [];
			_gaq.push(['_setAccount', 'UA-24451557-1']);
			_gaq.push(['_trackPageview']);
			
			(function() {
				var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
				ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
				var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
			})();
		</script>
	</body>
</html>