<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<head>
<jsp:include page="header.jsp"></jsp:include>
<script src="js/jquery.min.js"></script>
<script src="js/teachPlan.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<!--main-container-part-->
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a href="index" class="tip-bottom" data-original-title="Go to Home"><i class="icon-home"></i>首页</a> <a href="teachPlan1">教学任务</a></div>
  </div>
  <!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
    <div class="widget-box" id="courseList">
      <div class="widget-title"> <span class="icon"> <i class="icon-list"></i></span>
        <h5>${profession.name }
        </h5>
        	  <button class="btn btn-success btn-mini button" id="add">添加</button>
      </div>
       <div class="widget-content nopadding">
            <table class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>学年</th>
                  <th>学期</th>
                  <th>课程名称</th>
                  <th>学分</th>
                  <th>课时</th>
                  <th style="width:70px;">操作</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach items="${syllabuses }" var="syllabus">
	                <tr class="even gradeC" syllabusId="${syllabus.syllabusId}">
	                  <td>第<font class="year">${syllabus.year}</font>学年</td>
	                  <td>第<font class="term">${syllabus.term}</font>学期</td>
	                  <td class="courseName" courseId="${syllabus.course.courseId}">${syllabus.course.name }</td>
	                  <td class="center credit">${syllabus.course.credit}</td>
	                  <td class="center hour">${syllabus.hour }</td>
	                  <td class="center">
	                  	<button class="btn btn-warning btn-mini edit">修改</button>
	                  	<button class="btn btn-danger btn-mini delete">删除</button>
	                  </td>
	                </tr>
                </c:forEach>
              </tbody>
            </table>
          </div>
      <!-- ueditor start -->
      <!-- uediter start -->
    </div>
  	
  	<div class="widget-box" id="addCourse" style="display:none;">
    <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i></span>
      <h5>添加课程</h5>
    </div>
    <div class="widget-content nopadding">
      <form action="saveOrUpdateSyllabus" method="post" class="form-horizontal">
        <div class="control-group">
          <label class="control-label">选择课程</label>
          <div class="controls">
          	<select name="teachPlanId" id="course" >
          		<c:forEach items="${teachPlans }" var="teachPlan">
          			<option value="${teachPlan.syllabusId }">${teachPlan.course.name}</option>
          		</c:forEach>
            </select>
          </div>
        </div>
        
        <div class="control-group">
          <label class="control-label">选择教材</label>
          <div class="controls">
          	<select name="book.bookId" id="book" >
          		<c:forEach items="${books }" var="book">
          			<option value="${book.bookId }">${book.name}</option>
          		</c:forEach>
            </select>
          </div>
        </div>
    
        <div class="control-group">
          <label class="control-label">任课教师</label>
          <div class="controls">
          	<select name="teacher.teaId" id="teacher" >
          		<c:forEach items="${teachers }" var="teacher">
          			<option value="${teacher.teaId }">${teacher.name}</option>
          		</c:forEach>
            </select>
          </div>
        </div>
       
        <div class="form-actions">
          <input type="submit" class="btn btn-success" value="确定">
          <input type="button" class="btn" value="取消" id="cancel">
          <input type="hidden" value="${classId}" name="classteam.classId">
          <input type="hidden" name="syllabusId">
        </div>
      </form>
    </div>
  </div>
  	
  </div>
</div>

<!--end-main-container-part-->
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
