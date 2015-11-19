<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html>
<body>
<jsp:include page="header.jsp"></jsp:include>

<!--main-container-part-->
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a href="index.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> 首页</a></div>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
   <div class="widget-box">
          <div class="widget-title">
            <ul class="nav nav-tabs">
              <li class="active"><a data-toggle="tab" href="#tab1">基础数据管理</a></li>
              <li><a data-toggle="tab" href="#tab2">教务管理</a></li>
              <li><a data-toggle="tab" href="#tab3">考务成绩管理</a></li>
            </ul>
          </div>
          <div class="widget-content tab-content">
            <div id="tab1" class="tab-pane active">
              <p>
                         专业信息（录入、维护、查询、导入导出）
班级信息（录入、维护、查询、导入导出）
学生信息（录入、维护、查询、导入导出）
科室信息（录入、维护、查询、导入导出）
教师信息（录入、维护、查询、导入导出）
课程基本信息（录入、维护、查询、导入导出）
课程教学内容信息（教学大纲、教学进程、教材：录入、维护、查询、导入导出）
教室信息（录入、维护、查询、导入导出）
实验室信息（录入、维护、查询、导入导出）
              
              </p>
              </div>
            <div id="tab2" class="tab-pane">
              <p>
                 教学计划管理（编制、修订、查询）
     教学任务管理（生成班级学期开课表、教学班编排、填报教学班主讲教师、教学任务查询、统计、填报实验教师）
     课表管理（排课，调课，课表查询-班级、教师、教室，课表打印）
     教材征订管理（教材基本信息录入、维护，教材征订，调整教材，查询、汇总统计）
     实验项目管理（实验项目录入、修改、查询、汇总统计、打印）
教学进程（教学班教学进程生成，调整，查询、打印）
              
              </p>
            </div>
            <div id="tab3" class="tab-pane">
              <p>
               考试方案管理（方案制定、审批、打印）
考试安排（考试时间、地点安排，监考人员安排）
     考务信息查询（班级、课程考试信息查询、监考信息查询，打印）
     试卷审批（试卷审批、审批表生成、打印）
     成绩管理（成绩录入、试卷分析、成绩分析、成绩查询、成绩统计）
              
              </p>
          </div>
          </div>
        </div>

  </div>
</div>

<!--end-main-container-part-->

<jsp:include page="footer.jsp"></jsp:include>
</body></html>
