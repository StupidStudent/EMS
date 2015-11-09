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
<link rel="stylesheet" href="css/matrix-login.css" />
<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
<link href='http://fonts.useso.com/css?family=Open+Sans:400,700,800'
	rel='stylesheet' type='text/css'>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

</head>
<body>
	<div id="loginbox">
		<form id="loginform" class="form-vertical" action="loginCheck" method="post">
			<div class="control-group normal_text">
				<h4>
					<img src="img/logo2.png" alt="Logo" /> 教 学 管 理 系 统
				</h4>
			</div>
			<div class="control-group">
				<div class="controls">
					<div class="main_input_box">
						<span class="add-on bg_lg"><i class="icon-user"></i></span><input
							type="text" placeholder="用户名" name="username" id="username" />
					</div>
				</div>
			</div>
			<div class="control-group">
				<div class="controls">
					<div class="main_input_box">
						<span class="add-on bg_ly"><i class="icon-lock"></i></span><input
							type="password" placeholder="密码" name="password" id="password" />
					</div>
				</div>
			</div>
			<div class="form-actions">
				<span class="pull-left"><a href="#"
					class="flip-link btn btn-info" id="to-recover">忘记密码?</a></span> <span
					class="pull-right"><button type="button" onclick="check()"
						class="btn btn-success">登录</button></span>
			</div>
		</form>
		<form id="recoverform" action="#" class="form-vertical">
			<p class="normal_text">输入你的邮箱地址</p>

			<div class="controls">
				<div class="main_input_box">
					<span class="add-on bg_lo"><i class="icon-envelope"></i></span><input
						type="text" placeholder="邮箱地址" />
				</div>
			</div>

			<div class="form-actions">
				<span class="pull-left"><a href="#"
					class="flip-link btn btn-success" id="to-login">&laquo; 返回登录</a></span> <span
					class="pull-right"><a class="btn btn-info" />找回</a></span>
			</div>

		</form>
	</div>
	<!-- 弹出框 start -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="false">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="false">&times;</button>
					<h4 class="modal-title" id="myModalLabel">提示</h4>
				</div>
				<div class="modal-body" id="modal-body">
					<c:if test="${null != message}"><p id="message">${message}<p></c:if>
				</div>
			</div>
		</div>
	</div>
	<!-- 弹出框 end -->
	<script src="js/jquery.min.js"></script>
	<script src="js/matrix.login.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(function() {
			if($('#message').text() !=  "")
			{
				$('#myModal').modal();
			}
		});
		
		function check() {
			if ($('#username').val() == "" || $('#password').val() == "") {
				$('.modal-body').text("用户名和密码不能为空！");
				$('#myModal').modal();
			} else {
				$('#loginform').submit();
			}
		}
	</script>
</body>

</html>
