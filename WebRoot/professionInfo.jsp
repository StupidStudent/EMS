<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	<!--main-container-part-->
	<div id="content">
		<!--breadcrumbs-->
		<div id="content-header">
			<div id="breadcrumb">
				<a href="#" class="tip-bottom" data-original-title="Go to Home"><i
					class="icon-home"></i>首页</a> <a href="#">基础数据管理</a> <a href="#"
					class="current">专业信息</a>
			</div>
		</div>
		<!--End-breadcrumbs-->

		<!--Action boxes-->
		<div class="container-fluid">
			<div class="widget-box">
				<div class="widget-title">
					<span class="icon"> <i class="icon-file"></i>
					</span>
					<h5>专业信息</h5>
					<form action="insertProfessionInfo.jsp">
						<button class="btn btn-warning btn-mini button">添加</button>
					</form>
					<form action="updateProfession.jsp">
						<button class="btn btn-warning btn-mini button">更新</button>
					</form>
					<form action="delProInfo.jsp">
						<button class="btn btn-warning btn-mini button">删除</button>
					</form>

				</div>
				<div class="widget-content nopadding">
					<ul class="recent-posts">
						<c:forEach items="${professions }" var="profession">
							<li>

								<div class="widget-box">
									<div class="widget-title">
										<span class="icon"> <i class="icon-list"></i>
										</span>
										<h5>${ profession.getName() }</h5>
									</div>
									<div class="widget-content">
										专业代号:${profession.getProId() }<br>
										<br> 专业介绍:${profession.getIntroduction() }<br>
										<br> 教学计划:${profession.getTeachPlan() }

									</div>
								</div>
							</li>
						</c:forEach>
						<li>

							<div class="widget-box">
								<div class="widget-title">
									<span class="icon"> <i class="icon-list"></i>
									</span>
								</div>
							</div>
						</li>
						<li>

							<div class="widget-box">
								<div class="widget-title">
									<span class="icon"> <i class="icon-list"></i>
									</span>
								</div>
							</div>
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
