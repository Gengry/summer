<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<%-- <base href="<%=basePath%>"> --%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/dataTables.bootstrap.css">
<%@ include file="/WEB-INF/views/top.jsp"%>
<!-- </head>
<body class="hold-transition skin-red sidebar-mini"> -->
	<%@ include file="/WEB-INF/views/left.jsp"%>
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header" style="display: none">
			<h1>
				<small><i class="fa fa-dashboard"></i> 系统管理/用户信息管理</small>
			</h1>
		</section>
		<div class="content">
			<div class="box box-info">
				<div class="box-header with-border">
					<a href="#myModal" role="button" class="btn btn-info btn-xs"
				data-toggle="modal" data-backdrop="static">添加用户</a>
				</div> 
				<form class="form-horizontal" action="">
					<div class="box-body">
						<div class="row">
							<label for="inputEmail3" class="col-sm-1 control-label">用户名</label>
							<div class="col-sm-2">
								<input type="text" class="form-control" name = "username">
							</div>
							<label for="inputEmail3" class="col-sm-1">
								<input type="submit" class="btn btn-info" value="查 询">
							</label>
							
						</div>
						
						
					</div>
				</form>
				<!-- /.box-body -->
			</div>
			
			<!-- <div class="table-responsive">
	              <table id="example" class="table table-bordered table-hover table-condensed table-striped display">
	                <thead>
	                <tr>
	                  <th>用户名</th>
	                  <th>昵称</th>
	                </tr>
	                </thead>
	                <tbody>
	                </tbody>
	              </table>
	             </div> -->
			
		 <div class="box">
            <div class="box-body ">
            <div class="table-responsive">
              <table id="example" class="table table-bordered table-hover table-condensed table-striped display">
                <thead>
                <tr>
                  <th><input type="checkbox" name="cb-check-all"></th>
                  <th>用户名</th>
                  <th>昵称</th>
                </tr>
                </thead>
                <tbody>
                </tbody>
              </table>
             </div>
            </div>
          </div> 
			
			

			<!-- <a href="#myModal" role="button" class="btn btn-success btn-xs"
				data-toggle="modal" data-backdrop="static" onclick="test()">查看演示案例</a> -->
			<div class="modal fade" id="myModal">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">×</span>
							</button>
							<h4 class="modal-title">添加用户</h4>
						</div>
						<div class="modal-body">
							
					            <!-- form start -->
					            <form action="${pageContext.request.contextPath}/Manager/addUser" id="form1" method="post" role="form" class="form-horizontal">
					              <div class="box-body">
					                <label for="exampleInputEmail1" class="col-sm-3">用户名</label>
					                <div class="form-group col-sm-9">
					                  <input type="text" class="form-control" id="username" placeholder="用户名" name="username">
					                </div>
					                <label for="exampleInputEmail1" class="col-sm-3">昵称</label>
					                <div class="form-group col-sm-9">
					                  <input type="text" class="form-control" id="nickname" placeholder="昵称" name="nickname">
					                </div>
					                <label for="exampleInputPassword1" class="col-sm-3">登录密码</label>
					                <div class="form-group col-sm-9">
					                  <input type="password" class="form-control" id="password" placeholder="登录密码" name="password">
					                </div>
					                <label for="exampleInputPassword1" class="col-sm-3">确认密码</label>
					                <div class="form-group col-sm-9">
					                  <input type="password" class="form-control" id="password2" placeholder="登录密码" name="password2">
					                </div>
					              </div>
					            </form>
							
							
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary pull-left" onclick="addUser()">保存</button>
							<button type="button" class="btn btn-danger" data-dismiss="modal">关闭</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/foot.jsp"%>
	<script src="${pageContext.request.contextPath}/js/jquery.dataTables.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/dataTables.bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.slimscroll.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/page/constant.js"></script>
</div>
<script type="text/javascript">
	/* $(function(){
		var h=window.innerHeight
		|| document.documentElement.clientHeight
		|| document.body.clientHeight;
		var hx = $("header").outerHeight()+$(".content-header").outerHeight()+$(".main-footer").outerHeight();
		$(".content").css({"height":h-hx,"padding":"0px","padding-top":"5px"});
	}); */
	$(function() {
		var w = window.innerWidth || document.documentElement.clientWidth
				|| document.body.clientWidth;
		var h = window.innerHeight || document.documentElement.clientHeight
				|| document.body.clientHeight;
		if (w > 800) {
			$(".content-header").css("display", "");
		}
	});
	
	function addUser(){
		var username = $('#username').val();
		var nickname = $('#nickname').val();
		var password = $('#password').val();
		var password2 = $('#password2').val();
		if(username == ''){
			alert("请输入用户名！");
			return;
		}
		if(nickname == ''){
			alert("请输入昵称！");
			return;
		}
		if(password == ''){
			alert("请输入密码！");
			return;
		}
		if(password != password2){
			alert("两次输入的密码必须相同！");
			return;
		}
		$("#form1").submit();
	}
	
	
	  /*  $(function () {
		    $('#example2').dataTable({
		    	'language': {  
	                'emptyTable': '没有数据' },
		      "paging": true,
		      "lengthChange": false,
		      "searching": false,
		      "ordering": true,
		      "info": true,
		      "scrollX": true
		    });
		  });  */
		  $(document).ready(function() {
			    $('#example').dataTable( {
			    	"bPaginate" : true,// 分页按钮
			    	"bLengthChange" : true,// 每行显示记录数  
		            "iDisplayLength" : 25,// 每页显示行数 
			    	"ajax": "${pageContext.request.contextPath}/data.txt",
			        "columns": [
			                    { "data": "name" },
			                    { "data": "position"}
			                   ],
			        "searching": false
			    } );
			} );
</script>
</body>
</html>