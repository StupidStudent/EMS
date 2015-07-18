<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String username = "zhongzone";
String password = "199406";
String code = "tes";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'eatj.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<form onsubmit="" method="post" action="http://s156.eatj.com/logonhandler1.jsp" id="login">
				<input type="hidden" value="1712651-14d1dd837fe-da4010d8a47ed800b447f4adde26bcd8" name="uuid" id="uuid">
			
				<div class="index_forgot_account">
					<a href="index.jsp?url=forgot.html"><img alt="Forgot your Username or Password?" src="images/index_login_forgot.gif"></a>
				</div>
				<div class="index_login_content">
					<table cellspacing="0" cellpadding="0" border="0" style="width: 299px;">
						<tbody><tr>
							<td style="width: 76px; height: 22px">Username</td>
							<td style="width: 145px; height: 22px">
								<input tabindex="1" value="zhongzone" class="index_login_textbox" size="20" name="username1">
							</td>
							<td style="width: 78px; height: 22px">&nbsp;</td>
						</tr>
						<tr>
							<td style="width:76px ; height: 24px">Password</td>
							<td style="width: 145px; height: 22px">
								<input type="password" value="199406" tabindex="2" class="index_login_textbox" size="20" name="password">
							</td>
							<td style="width: 78px; height: 22px">&nbsp;</td>
						</tr>
						<tr>
							<td style="width: 76px; height: 22px"><img alt="Please enter verification code" src=""></td>
							<td style="width:145px ; height: 24px">
								<!--<input name="captcha" size="8" class="index_login_textbox" />-->
								<input type="text" tabindex="3" value=""  onblur="this.value = this.value || this.defaultValue; this.style.color = '#999';" id="captcha2-2" maxlength="128" style="color: rgb(153, 153, 153);" size="15" name="captcha2-2"> 
							</td>
							<td style="width:78px ; height: 24px">
								<input type="submit" tabindex="4" value="Sign In">
								<!--<a href="javascript:submitForm('login');"><img src="images/button_login.gif" alt="Login" /></a>-->
							</td>
						</tr>
					</tbody></table>
				</div>
			</form>
  </body>
</html>
