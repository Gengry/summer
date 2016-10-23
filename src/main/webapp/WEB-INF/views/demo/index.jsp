<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<%-- <base href="<%=basePath%>"> --%>
<%@ include file="/WEB-INF/views/top.jsp"%>
<!-- </head>
<body class="hold-transition skin-yellow sidebar-mini"> -->
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
		<%@ include file="/WEB-INF/views/left.jsp"%>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header" style="display: none">
				<h1>
					Summer 进销存管理系统 <small>专为线缆行业设计</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i>首页</a></li>
				</ol>
			</section>
			<section class="content">
				
			</section>
		</div>
		<%@ include file="/WEB-INF/views/foot.jsp"%>
	</div>
	<script type="text/javascript">
   		/* $(function(){
   			var h=window.innerHeight
   			|| document.documentElement.clientHeight
   			|| document.body.clientHeight;
   			var hx = $("header").outerHeight()+$(".content-header").outerHeight()+$(".main-footer").outerHeight();
   			$(".content").css({"height":h-hx,"padding":"0px","padding-top":"5px"});
   		}); */
   		$(function(){
   			var w=window.innerWidth
   			|| document.documentElement.clientWidth
   			|| document.body.clientWidth;
   			if(w>800){
   				$(".content-header").css("display","");
   			}
   		});
    </script>
</body>
</html>