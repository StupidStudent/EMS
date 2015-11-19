<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>	
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<!--main-container-part-->
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a href="#" class="tip-bottom" data-original-title="Go to Home"><i class="icon-home"></i>首页</a> <a href="#">教务管理</a> <a href="#" class="current">教学计划</a></div>
  </div>
  <div class="container-fluid">
  <div class="widget-box">
    <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i></span>
      <h5>教学计划</h5>
    </div>
    <div class="widget-content nopadding">
      <form action="getTeachPlan" method="post" class="form-horizontal">
        <div class="control-group">
          <label class="control-label">选择专业</label>
          <div class="controls">
            <select name="proId" id="profession" required="true">
            	<c:forEach items="${professions}" var="profession">
            		<option id="${profession.getProId() }" value="${profession.getProId() }">${profession.getName() }</option>
            	</c:forEach>
            </select>
          </div>
        </div>
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
</div>
<!--end-main-container-part-->
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
