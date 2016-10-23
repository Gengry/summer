<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>线缆行业进销存</title>
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link
	href="http://cdn.bootcss.com/font-awesome/4.6.3/css/font-awesome.min.css"
	rel="stylesheet">
<link href="http://cdn.bootcss.com/ionicons/2.0.1/css/ionicons.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/AdminLTE.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/_all-skins.min.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<!--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to get the
desired effect
|---------------------------------------------------------|
| SKINS         | skin-blue                               |
|               | skin-black                              |
|               | skin-purple                             |
|               | skin-yellow                             |
|               | skin-red                                |
|               | skin-green                              |
|---------------------------------------------------------|
|LAYOUT OPTIONS | fixed                                   |
|               | layout-boxed                            |
|               | layout-top-nav                          |
|               | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<!-- Main Header -->
		<header class="main-header">

			<!-- Logo -->
			<a href="#" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
				<span class="logo-mini"><b>线缆管理</b></span> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>线缆管理</b>系统</span>
			</a>

			<!-- Header Navbar -->
			<nav class="navbar navbar-static-top" role="navigation">
				<!-- Sidebar toggle button-->
				<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
					role="button"> <span class="sr-only"></span>
				</a>
				<!-- Navbar Right Menu -->
				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						<!-- Control Sidebar Toggle Button -->
						<!-- <li><a href="#" data-toggle="control-sidebar"><i
								class="fa fa-gears"></i></a></li> -->
					</ul>
				</div>
			</nav>
		</header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">

			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">

				<!-- Sidebar user panel (optional) -->
				<div class="user-panel">
					<div class="pull-left image">
						<img src="${pageContext.request.contextPath}/img/user1-128x128.jpg" class="img-circle"
							alt="User Image">
					</div>
					<div class="pull-left info">
						<p>${user.nickName}</p>
						<!-- Status -->
						<a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
					</div>
				</div>
				<!-- Sidebar Menu -->
				<ul class="sidebar-menu">
					<li class="header">菜&nbsp;&nbsp;单</li>
					<!-- Optionally, you can add icons to the links -->
					<li class="treeview"><a href="#"><i class="fa fa-link"></i>
						<span>基础信息管理</span><span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
						</span></a>	
						<ul class="treeview-menu">
							<li><a href="#">Link in level 2</a></li>
							<li><a href="#">Link in level 2</a></li>
						</ul>
					</li>
					<li class="treeview"><a href="#"><i class="fa fa-link"></i>
						<span>采购管理</span><span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
						</span></a>	
						<ul class="treeview-menu">
							<li><a href="#">Link in level 2</a></li>
							<li><a href="#">Link in level 2</a></li>
						</ul>
					</li>
					<li class="treeview"><a href="#"><i class="fa fa-link"></i>
						<span>销售管理</span><span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
						</span></a>	
						<ul class="treeview-menu">
							<li><a href="#">Link in level 2</a></li>
							<li><a href="#">Link in level 2</a></li>
						</ul>
					</li>
					<li class="treeview"><a href="#"><i class="fa fa-link"></i>
						<span>仓库管理</span> <span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
						</span></a>
						<ul class="treeview-menu">
							<li><a href="#">Link in level 2</a></li>
							<li><a href="#">Link in level 2</a></li>
						</ul>
					</li>
					<li class="treeview"><a href="#"><i class="fa fa-link"></i>
						<span>报表</span> <span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
						</span></a>
						<ul class="treeview-menu">
							<li><a href="#">Link in level 2</a></li>
							<li><a href="#">Link in level 2</a></li>
						</ul>
					</li>
					<li class="treeview"><a href="#"><i class="fa fa-link"></i>
						<span>系统设置</span> <span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
						</span></a>
						<ul class="treeview-menu">
							<li><a href="#">Link in level 2</a></li>
							<li><a href="#">Link in level 2</a></li>
						</ul>
					</li>
				</ul>
				<!-- /.sidebar-menu -->
			</section>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					Summer 进销存管理系统 <small>专为线缆行业设计</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
					<li class="active">Here</li>
				</ol>
			</section>
			
			<!-- Main content -->

          		<p>123123123</p>
          		<p>123123123</p>
          		<p>123123123</p>
          		<p>123123123</p>
          		<p>123123123</p>
          		<p>123123123</p>
          		<p>123123123</p>
          		<p>123123123</p>
          		<p>123123123</p>
          		<p>123123123</p>
          		<p>123123123</p>
          		<p>123123123</p>
          		<p>123123123</p>
          		<p>123123123</p>
          		<p>123123123</p>
          		<p>123123123</p>
          		<p>123123123</p>
          		<p>123123123</p>
          		<p>123123123</p>
          		<p>123123123</p>
          		<p>123123123</p>
          		<p>123123123</p>
          		<p>123123123</p>
          		<p>123123123</p>
          		<p>123123123</p>
          		<p>123123123</p>
          		<p>123123123</p>
          		<p>123123123</p>
          		<p>123123123</p>
          		<p>123123123</p>
          		<p>123123123</p>

			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

		<!-- Main Footer -->
		<footer class="main-footer">
			<!-- To the right -->
			<div class="pull-right hidden-xs">Anything you want</div>
			<!-- Default to the left -->
			<strong>Copyright &copy; 2016 <a href="#">Company</a>.
			</strong> All rights reserved.
		</footer>
		<!-- /.control-sidebar -->
		<!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>
	</div>
	<!-- ./wrapper -->

	<!-- REQUIRED JS SCRIPTS -->

	<!-- jQuery 2.2.3 -->
	<script src="${pageContext.request.contextPath}/js/jquery-2.2.3.min.js"></script>
	<!-- Bootstrap 3.3.6 -->
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<!-- AdminLTE App -->
	<script src="${pageContext.request.contextPath}/js/app.min.js"></script>

	<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. Slimscroll is required when using the
     fixed layout. -->
     <script type="text/javascript">
   
     </script>
</body>
</html>
