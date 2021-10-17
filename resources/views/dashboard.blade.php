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

		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />		<!-- TITLE -->
		<title>Dashboard</title>

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
		<style>
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
								<h3 style="font-weight: bold;margin-left:50px; margin-top: 13px">ARRIVEDJI</h3>
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
								<h1 class="page-title">Dashboard</h1>
							</div>
						</div>
						<!-- PAGE-HEADER END -->

						<!-- ROW-1 -->
						<div class="row">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xl-12">
								<div class="row">
									<div class="col-lg-6 col-md-12 col-sm-12 col-xl-3">
										<div class="card overflow-hidden">
											<div class="card-body">
												<div class="row">
													<div class="col">
														<h6 class="">Total des personnes</h6>
														<h3 class="mb-2 number-font">{{ $count }}</h3>
													</div>
													<div class="col col-auto">
														<div class="counter-icon bg-primary-gradient box-shadow-primary brround ms-auto">
															<i class="fe fe-user text-white mb-5 "></i>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-6 col-md-12 col-sm-12 col-xl-3">
										<div class="card overflow-hidden">
											<div class="card-body">
												<div class="row">
													<div class="col">
														<h6 class="">Nombres des personnes avec PCR négative</h6>
														<h3 class="mb-2 number-font">{{ $pcr }}</h3>
													</div>
													<div class="col col-auto">
														<div class="counter-icon bg-secondary-gradient box-shadow-secondary brround  ms-auto">
															<i class="fas fa-check text-white mb-5 "></i>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-6 col-md-12 col-sm-12 col-xl-3">
										<div class="card overflow-hidden">
											<div class="card-body">
												<div class="row">
													<div class="col">
														<h6 class="">Nombre des personnes vaccinés</h6>
														<h3 class="mb-2 number-font">{{ $vaccin }}</h3>
													</div>
													<div class="col col-auto">
														<div class="counter-icon bg-success-gradient box-shadow-success brround ms-auto">
															<i class="fas fa-syringe text-white mb-5 "></i>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-6 col-md-12 col-sm-12 col-xl-3">
										<div class="card overflow-hidden">
											<div class="card-body">
												<div class="row">
													<div class="col">
														<h6 class="">Nombre des personnes à risques</h6>
														<h3 class="mb-2 number-font">{{ $risque }}</h3>
													</div>
													<div class="col col-auto">
														<div class="counter-icon bg-danger-gradient box-shadow-danger brround  ms-auto">
															<i class="fas fa-head-side-cough text-white mb-5 "></i>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row row-sm">
							<div class="col-lg-12">
								<div class="card">
									<div class="card-header">
										<h3 class="card-title">Liste des personnes qui viendront à Djibouti</h3>
									</div>
									<div class="card-body">
										<div class="table-responsive export-table">
											<table id="file-datatable" class="table table-striped w-100 border-bottom">
												<thead>
													<tr>
														<th class="border-bottom-0">N°</th>
														<th class="border-bottom-0">Nom Complet</th>
														<th class="border-bottom-0">N° de passeport</th>
														<th class="border-bottom-0">Age</th>
														<th class="border-bottom-0">Vol</th>
														<th class="border-bottom-0">Nationalité</th>
														<th class="border-bottom-0">Venant</th>
														<th class="border-bottom-0">Allant</th>
														<th class="border-bottom-0">PCR</th>
														<th class="border-bottom-0">Vaccin</th>
													</tr>
												</thead>
												<tbody>
													@foreach ($lists as $key => $list)
														<tr class="border-bottom">
															<td>{{ $key + 1 }}</td>
															<td>{{ $list->nomcomplet }}</td>
															<td>{{ $list->numero_passeport }}</td>
															<td>{{ $list->age }}</td>
															<td>{{ $list->vol }}</td>
															<td>{{ $list->nationalite }}</td>
															<td>{{ $list->venant }}</td>
															<td>{{ $list->allant }}</td>
															<td>
																@if ($list->pcr == 'oui')
																	<span class="badge rounded-pill bg-danger">Positif</span>
																@else
																	<span class="badge rounded-pill bg-success text-dark">Négatif</span>
																@endif
															</td>
															<td>
																@if ($list->vaccin == 'oui')
																	<span class="badge rounded-pill bg-success text-dark">Vacciné</span>
																@else
																	<span class="badge rounded-pill bg-warning text-dark">Non Vacciné</span>
																@endif
															</td>
														</tr>
													@endforeach
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
				<!-- CONTAINER END -->
            </div>

			<!-- Sidebar-right -->
			<div class="sidebar sidebar-right sidebar-animate">
				<div class="panel panel-primary card mb-0 shadow-none border-0">
					<div class="tab-menu-heading border-0 d-flex p-3">
						<div class="card-title mb-0">Notifications</div>
						<div class="card-options ms-auto">
							<a href="#" class="sidebar-icon text-end float-end me-1" data-bs-toggle="sidebar-right" data-target=".sidebar-right"><i class="fe fe-x text-white"></i></a>
						</div>
					</div>
					<div class="panel-body tabs-menu-body latest-tasks p-0 border-0">
						<div class="tabs-menu border-bottom">
							<!-- Tabs -->
							<ul class="nav panel-tabs">
								<li class=""><a href="#side1" class="active" data-bs-toggle="tab"><i class="fe fe-user me-1"></i> Profile</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!--/Sidebar-right-->

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

		<!-- DATA TABLE JS-->
		<script src="{{asset('template/assets/plugins/datatable/js/jquery.dataTables.min.js')}}"></script>
		<script src="{{asset('template/assets/plugins/datatable/js/dataTables.bootstrap5.js')}}"></script>
		<script src="{{asset('template/assets/plugins/datatable/js/dataTables.buttons.min.js')}}"></script>
		<script src="{{asset('template/assets/plugins/datatable/js/buttons.bootstrap5.min.js')}}"></script>
		{{-- <script src="{{asset('template/assets/plugins/datatable/js/jszip.min.js')}}"></script> --}}
		{{-- <script src="{{asset('template/assets/plugins/datatable/pdfmake/pdfmake.min.js')}}"></script> --}}
		{{-- <script src="{{asset('template/assets/plugins/datatable/pdfmake/vfs_fonts.js')}}"></script> --}}
		{{-- <script src="{{asset('template/assets/plugins/datatable/js/buttons.html5.min.js')}}"></script> --}}
		{{-- <script src="{{asset('template/assets/plugins/datatable/js/buttons.print.min.js')}}"></script> --}}
		{{-- <script src="{{asset('template/assets/plugins/datatable/js/buttons.colVis.min.js')}}"></script> --}}
		<script src="{{asset('template/assets/plugins/datatable/dataTables.responsive.min.js')}}"></script>
		<script src="{{asset('template/assets/plugins/datatable/responsive.bootstrap5.min.js')}}"></script>
		<script src="{{asset('template/assets/js/table-data.js')}}"></script>

	</body>
</html>