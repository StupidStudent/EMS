<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>教学管理系统</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="css/fullcalendar.css" />
<link rel="stylesheet" href="css/matrix-style.css" />
<link rel="stylesheet" href="css/matrix-media.css" />
<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" href="css/jquery.gritter.css" />
<link href='http://fonts.useso.com/css?family=Open+Sans:400,700,800'
	rel='stylesheet' type='text/css'>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>

	<!--Header-part-->
	<div id="header">
		<h1>
			<a href="dashboard.html">教学管理系统</a>
		</h1>
	</div>
	<!--close-Header-part-->


	<!--top-Header-menu-->
	<div id="user-nav" class="navbar navbar-inverse">
		<ul class="nav">
			<li class="dropdown" id="profile-messages"><a title="" href="#"
				data-toggle="dropdown" data-target="#profile-messages"
				class="dropdown-toggle"><i class="icon icon-user"></i> <span
					class="text">Welcome User</span><b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a href="#"><i class="icon-user"></i> My Profile</a></li>
					<li class="divider"></li>
					<li><a href="#"><i class="icon-check"></i> My Tasks</a></li>
					<li class="divider"></li>
					<li><a href="login.html"><i class="icon-key"></i> Log Out</a></li>
				</ul></li>
			<li class="dropdown" id="menu-messages"><a href="#"
				data-toggle="dropdown" data-target="#menu-messages"
				class="dropdown-toggle"><i class="icon icon-envelope"></i> <span
					class="text">Messages</span> <span class="label label-important">5</span>
					<b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a class="sAdd" title="" href="#"><i class="icon-plus"></i>
							new message</a></li>
					<li class="divider"></li>
					<li><a class="sInbox" title="" href="#"><i
							class="icon-envelope"></i> inbox</a></li>
					<li class="divider"></li>
					<li><a class="sOutbox" title="" href="#"><i
							class="icon-arrow-up"></i> outbox</a></li>
					<li class="divider"></li>
					<li><a class="sTrash" title="" href="#"><i
							class="icon-trash"></i> trash</a></li>
				</ul></li>
			<li class=""><a title="" href="#"><i class="icon icon-cog"></i>
					<span class="text">Settings</span></a></li>
			<li class=""><a title="" href="login.html"><i
					class="icon icon-share-alt"></i> <span class="text">Logout</span></a></li>
		</ul>
	</div>
	<!--close-top-Header-menu-->
	<!--start-top-serch-->
	<div id="search">
		<input type="text" placeholder="Search here..." />
		<button type="submit" class="tip-bottom" title="Search">
			<i class="icon-search icon-white"></i>
		</button>
	</div>
	<!--close-top-serch-->
	<div class="copyrights">
		Collect from <a href="http://www.cssmoban.com/">免费模板</a>
	</div>
	<!--sidebar-menu-->
	<div id="sidebar">
		<a href="#" class="visible-phone"><i class="icon icon-home"></i>
			Dashboard</a>
		<ul>
			<li class="active"><a href="index.jsp"><i
					class="icon icon-home"></i> <span>首页</span></a></li>
			<li class="submenu"><a href="#"><i class="icon icon-th-list"></i>
					<span>基础数据管理</span> </a>
				<ul>
					<li><a href="professionInfo.jsp">专业信息</a></li>
					<li><a href="classInfo.jsp">班级信息</a></li>
					<li><a href="studentInfo.jsp">学生信息</a></li>
					<li><a href="teacherInfo.jsp">教师信息</a></li>
					<li><a href="courseInfo.jsp">课程基本信息</a></li>
					<li><a href="teachingInfo.jsp">课程教学内容信息</a></li>
					<li><a href="classroomInfo.jsp">教室信息</a></li>
					<li><a href="laboratoryInfo.jsp">实验室信息</a></li>
				</ul></li>
			<li class="submenu"><a href="#"><i class="icon icon-th-list"></i>
					<span>教务管理</span> </a>
				<ul>
					<li><a href="teachPlan1.jsp">教学计划</a></li>
					<li><a href="teachPlan2.jsp">教学任务</a></li>
					<li><a href="schedule.jsp">课表管理</a></li>
					<li><a href="bookManage.jsp">教材征订</a></li>
					<li><a href="experiment.jsp">实验项目</a></li>
				</ul></li>
			<li class="submenu"><a href="#"><i class="icon icon-th-list"></i>
					<span>考务成绩管理</span> </a>
				<ul>
					<li><a href="examSchema.jsp">考试方案</a></li>
					<li><a href="examArrange.jsp">考试安排</a></li>
					<li><a href="examInfo.jsp">考务信息</a></li>
					<li><a href="mark.jsp">成绩管理</a></li>
				</ul></li>
		</ul>
	</div>
	<!--sidebar-menu-->


	<!--main-container-part-->
	<div id="content">
		<!--breadcrumbs-->
		<div id="content-header">
			<div id="breadcrumb">
				<a href="#" class="tip-bottom" data-original-title="Go to Home"><i
					class="icon-home"></i>首页</a> <a href="#">教务管理</a> <a href="#"
					class="current">教材征订</a>
			</div>
		</div>
		<!--End-breadcrumbs-->

		<!--Action boxes-->
		<div class="container-fluid">
			<div class="widget-box">
				<div class="widget-title">
					<span class="icon"> <i class="icon-align-justify"></i>
					</span>
					<h5>添加教材</h5>
				</div>
				<div class="widget-content nopadding">
					<form action="saveBook" method="post" class="form-horizontal">
						<div class="control-group">
							<label class="control-label">选择对应课程</label>
							<div class="controls">
								<select name="courseId" id="course">
								<c:forEach items="${courses }" var="course">
									<option value="${course.getCourseId() }">${course.getName() }</option>
								</c:forEach>
								</select>
							</div>
						</div>

						<div class="control-group">
							<label class="control-label">教材名称:</label>
							<div class="controls">
								<input type="text" name="name" placeholder="教材名称">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">作者:</label>
							<div class="controls">
								<input type="text" name="author" placeholder="作者">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">版次:</label>
							<div class="controls">
								<input type="text" name="version" placeholder="版次">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">价格:</label>
							<div class="controls">
								<input type="text" name="price" placeholder="0.00">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">出版社:</label>
							<div class="controls">
								<input type="text" name="publish" placeholder="出版社">
							</div>
							<div class="form-actions">
								<button type="submit" class="btn btn-success">添加</button>
							</div>
							<input type="hidden" name="classId" value="${classId }">
					</form>
				</div>
			</div>

		</div>
	</div>

	<!--end-main-container-part-->

	<!--Footer-part-->

	<div class="row-fluid">
		<div id="footer" class="span12">
			2013 &copy; Matrix Admin. More Templates <a
				href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a>
			- Collect from <a href="http://www.cssmoban.com/" title="网页模板"
				target="_blank">网页模板</a>
		</div>
	</div>
	<!--end-Footer-part-->


	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/matrix.js"></script>
	<script src="js/select2.min.js"></script>
	<script src="js/select.js"></script>
	<script type="text/javascript">
		// This function is called from the pop-up menus to transfer to
		// a different page. Ignore if the value returned is a null string:
		function goPage(newURL) {

			// if url is empty, skip the menu dividers and reset the menu selection to default
			if (newURL != "") {

				// if url is "-", it is this page -- reset the menu:
				if (newURL == "-") {
					resetMenu();
				}
				// else, send page to designated URL            
				else {
					document.location.href = newURL;
				}
			}
		}

		// resets the menu selection upon entry to this page:
		function resetMenu() {
			document.gomenu.selector.selectedIndex = 2;
		}
	</script>
</body>
</html>
