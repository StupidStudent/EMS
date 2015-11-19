<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<body>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"/>
</head>

<!--main-container-part-->
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a href="#" class="tip-bottom" data-original-title="Go to Home"><i class="icon-home"></i>首页</a> <a href="#">教务管理</a> <a href="#" class="current">教材征订</a></div>
  </div>
  <div class="widget-box">
    <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i></span>
      <h5>选择班级</h5>
    </div>
    <div class="widget-content nopadding">
      <form action="getTeachTask" method="post" class="form-horizontal">
        <div class="control-group">
          <label class="control-label">选择专业</label>
          <div class="controls">
            <select name="proId" id="profession">
            	<option></option>
            	<c:forEach items="${professions}" var="profession">
            		<option id="${profession.getProId() }" value="${profession.getProId() }">${profession.getName() }</option>
            	</c:forEach>
            </select>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label">选择班级</label>
          <div class="controls">
  			<option></option>
            <select name="classId" id="class">
            </select>
          </div>
        </div>
 <!-- 
        <div class="control-group">
          <label class="control-label">选择课程</label>
          <div class="controls">
            <select name="select" id="course" >
            </select>
          </div>
        </div>
-->        
        <div class="form-actions">
          <button type="submit" class="btn btn-success">确定</button>
        </div>
      </form>
    </div>
  </div>
  <!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid"></div>
</div>

<!--end-main-container-part-->

<jsp:include page="footer.jsp" />
</body>
</html>
