<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">
		<!-- Sidebar user panel (optional) -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src="${pageContext.request.contextPath}/img/user1-128x128.jpg"
					class="img-circle" alt="User Image">
			</div>
			<div class="pull-left info">
				<p>${suser.nickName}</p>
				<!-- Status -->
				<a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
			</div>
		</div>
		<!-- Sidebar Menu -->
		<ul class="sidebar-menu">
			<li class="header">菜&nbsp;&nbsp;单</li>
			<!-- Optionally, you can add icons to the links -->
			<li class="treeview"><a href="#"><i class="fa fa-link"></i>
				<span>系统管理</span><span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span></a>
				<ul class="treeview-menu">
					<li><a href="${pageContext.request.contextPath}/Manager/userManager">用户信息管理</a></li>
					<li><a href="#">商户信息管理</a></li>
					<li><a href="#">系统权限管理</a></li>
				</ul></li>
			<li class="treeview"><a href="#"><i class="fa fa-link"></i>
					<span>基础信息管理</span><span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span></a>
				<ul class="treeview-menu">
					<li><a href="${pageContext.request.contextPath}/LoginController/customer">客户信息</a></li>
					<li><a href="#">线缆信息</a></li>
					<li><a href="#">颜色信息</a></li>
					<li><a href="#">计量单位</a></li>
					<li><a href="#">质量标准</a></li>
				</ul></li>
			<li class="treeview"><a href="#"><i class="fa fa-link"></i>
					<span>采购管理</span><span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span></a>
				<ul class="treeview-menu">
					<li><a href="#">采购订单</a></li>
					<li><a href="#">采购退货</a></li>
					<li><a href="#">采购单列表</a></li>
				</ul></li>
			<li class="treeview"><a href="#"><i class="fa fa-link"></i>
					<span>销售管理</span><span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span></a>
				<ul class="treeview-menu">
					<li><a href="#">销售订单</a></li>
					<li><a href="#">销售退货</a></li>
					<li><a href="#">销售单列表</a></li>
				</ul></li>
			<li class="treeview"><a href="#"><i class="fa fa-link"></i>
					<span>仓库管理</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span></a>
				<ul class="treeview-menu">
					<li><a href="#">其它入库单</a></li>
					<li><a href="#">其它出库单</a></li>
					<li><a href="#">库存盘点</a></li>
				</ul></li>
			<li class="treeview"><a href="#"><i class="fa fa-link"></i>
					<span>报表</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span></a>
				<ul class="treeview-menu">
					<li><a href="#">销售额分析</a></li>
					<li><a href="#">规格分析</a></li>
				</ul></li>
			<li class="treeview"><a href="#"><i class="fa fa-link"></i>
					<span>系统设置</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span></a>
				<ul class="treeview-menu">
					<li><a href="#">个人信息设置</a></li>
					<li><a href="#">主题设置</a></li>
					<!-- <li><a href="#">Link in level 2</a></li> -->
				</ul></li>
		</ul>
		<!-- /.sidebar-menu -->
	</section>
	<!-- /.sidebar -->
</aside>