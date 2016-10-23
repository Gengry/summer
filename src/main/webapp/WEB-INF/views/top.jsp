<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<meta charset="utf-8" />
	<title>Summer</title>
	<link rel="shortcut icon" href="/img/favicon.png" type="image/x-icon">
	<meta name="description" content="线缆行业进销存" />
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
	<link href="http://cdn.bootcss.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
	<link href="http://cdn.bootcss.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/AdminLTE.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/_all-skins.min.css">
	<!-- fastclick -->
	<script type='application/javascript' src="${pageContext.request.contextPath}/js/fastclick.min.js"></script>
	<script type="text/javascript">
		var attachFastClick = Origami.fastclick;
		attachFastClick(document.body);
	</script>
	</head>
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
						<li><a href="${pageContext.request.contextPath}/LoginController/logout"><small>退出登录</small></a></li>
					</ul>
				</div>
			</nav>
		</header>