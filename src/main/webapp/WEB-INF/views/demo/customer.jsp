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
<body class="hold-transition skin-red sidebar-mini"> -->
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
					<small><i class="fa fa-dashboard"></i> 基础信息管理/客户信息管理</small>
				</h1>
			</section>
			<section class="content">
				<div class="box box-primary">
            	<div class="box-header with-border">
              	<h3 class="box-title">Quick Example</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form role="form" >
              <div class="box-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Email address</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Password</label>
                  <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                </div>
                <div class="form-group">
                  <label for="exampleInputFile">File input</label>
                  <input type="datetime" id="exampleInputFile">

                  <p class="help-block">Example block-level help text here.</p>
                </div>
                <div class="checkbox">
                  <label>
                    <input type="checkbox"> Check me out
                  </label>
                </div>
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <button type="submit" class="btn btn-primary">Submit</button>
              </div>
            </form>
          </div>
          
          <div class="box box-danger">
            <div class="box-header with-border">
              <h3 class="box-title">Different Width</h3>
            </div>
            <form class="form-horizontal">
            <div class="box-body">
              <div class="row">
              <label for="inputEmail3" class="col-sm-1 control-label">Email</label>
                <div class="col-sm-2">
                  <input type="text" class="form-control" placeholder=".col-xs-3">
                </div>
                <label for="inputEmail3" class="col-sm-1 control-label">Email</label>
                <div class="col-sm-2">
                  <input type="text" class="form-control" placeholder=".col-xs-3">
                </div>
                <label for="inputEmail3" class="col-sm-1 control-label">Email</label>
                <div class="col-sm-2">
                  <input type="text" class="form-control" placeholder=".col-xs-3">
                </div>
              </div>
            </div>
              </form>
            <!-- /.box-body -->
          </div>
          
          
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Horizontal Form</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form class="form-horizontal">
              <div class="box-body">
                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-2 control-label">Email</label>

                  <div class="col-sm-10">
                    <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputPassword3" class="col-sm-2 control-label">Password</label>

                  <div class="col-sm-10">
                    <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-offset-2 col-sm-10">
                    <div class="checkbox">
                      <label>
                        <input type="checkbox"> Remember me
                      </label>
                    </div>
                  </div>
                </div>
              </div>
              <!-- /.box-body -->
              <div class="box-footer">
                <button type="submit" class="btn btn-default">Cancel</button>
                <button type="submit" class="btn btn-info pull-right">Sign in</button>
              </div>
              <!-- /.box-footer -->
            </form>
          </div>
          
          
     	<a href="#myModal" role="button" class="btn btn-success" data-toggle="modal" data-backdrop="static" onclick="test()">查看演示案例</a>
 		<div class="modal fade" id="myModal">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span></button>
                <h4 class="modal-title">Default Modal</h4>
              </div>
              <div class="modal-body">
                <p>One fine body…</p>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
        
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
   			var h=window.innerHeight
   			|| document.documentElement.clientHeight
   			|| document.body.clientHeight;
   			if(w>800){
   				$(".content-header").css("display","");
   			}
   			var hh = $(".modal-content").height();
   			$("modal-content").css("top","100px");
   		});
   		function test(){
   			$(".modal-content").css("top","100px");
   		}	
    </script>
</body>
</html>