<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<body>
<jsp:include page="header.jsp"></jsp:include>

<!--main-container-part-->
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
  	<div id="breadcrumb"> <a href="#" class="tip-bottom" data-original-title="Go to Home"><i class="icon-home"></i>首页</a> <a href="#">基础数据管理</a> <a href="#" class="current">专业信息</a></div>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
<div class="widget-box">
      <div class="widget-title"> <span class="icon"> <i class="icon-file"></i> </span>
            <h5>专业信息</h5>
            <form action="insertlProfessionInfo.jsp"><button class="btn btn-warning btn-mini button">添加</button></form>
            <form action="updateProfessionInfo.jsp"><button class="btn btn-warning btn-mini button">更新</button></form>
            <form action="delProInfo.jsp"><button class="btn btn-warning btn-mini button">删除</button></form>
            

          </div>
          <div class="widget-content nopadding">
            <ul class="recent-posts">
              <li>
              <div class="widget-content nopadding">
          <form action="#" method="get" class="form-horizontal">
            <div class="control-group">
             
              <div class="controls">
                
              </div>
            </div></form></div>
            </li>
             <li> <form action="saveOrUpdateProfession" method="post">
             		<label>专业代号</label>
             	  	<input type="text" name="proId" id="profession"/><br>
             	  	<label>专业名称</label>
             	  	<input type="text" name="name" id="profession"/><br>
             	  	<label>专业介绍</label>
             	  	<input type="text" name="introduction" id="profession"/><br>
             	  	<label>教学计划</label>
             	  	<input type="text" name="teachPlan" id="profession"/><br>
             	  	
             	  <input type="submit" Style="width: 60px; height: 35px;background-color: #FF7F50;color:#F0F8FF;border-style:none;" value="添加">
             	  </form>
             </li>

  			 <li>
	
			 </li>

            </ul>
        </div>
        </div>

  </div>
</div>

<!--end-main-container-part-->

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
