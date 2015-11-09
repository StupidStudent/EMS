<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
<link href='http://fonts.useso.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
</head>
<body>

<!--Header-part-->
<div id="header">
  <h1><a href="dashboard.html">教学管理系统</a></h1>
</div>
<!--close-Header-part--> 


<!--top-Header-menu-->
<div id="user-nav" class="navbar navbar-inverse">
  <ul class="nav">
    <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">用户名</span><b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a href="#"><i class="icon-user"></i>个人信息</a></li>
        <li class="divider"></li>
        <li><a href="#"><i class="icon-check"></i> 我的任务</a></li>
        <li class="divider"></li>
        <li><a href="login.html"><i class="icon-key"></i> 退出登录</a></li>
      </ul>
    </li>
    <li class="dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text">消息</span> <span class="label label-important">5</span> <b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a class="sAdd" title="" href="#"><i class="icon-plus"></i> 发邮件</a></li>
        <li class="divider"></li>
        <li><a class="sInbox" title="" href="#"><i class="icon-envelope"></i> 收件箱</a></li>
        <li class="divider"></li>
        <li><a class="sOutbox" title="" href="#"><i class="icon-arrow-up"></i> 草稿箱</a></li>
        <li class="divider"></li>
        <li><a class="sTrash" title="" href="#"><i class="icon-trash"></i> 清除</a></li>
      </ul>
    </li>
    <li class=""><a title="" href="#"><i class="icon icon-cog"></i> <span class="text">设置</span></a></li>
    <li class=""><a title="" href="logout"><i class="icon icon-share-alt"></i> <span class="text">退出登录</span></a></li>
  </ul>
</div>
<!--close-top-Header-menu-->
<!--start-top-serch-->
<div id="search">
  <input type="text" placeholder="Search here..."/>
  <button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
</div>
<!--close-top-serch-->
<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >免费模板</a></div>
<!--sidebar-menu-->
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
  <ul>
    <li class="active"><a href="index.jsp"><i class="icon icon-home"></i> <span>首页</span></a> </li>
   <li class="submenu"><a href="#"><i class="icon icon-th-list"></i> <span>基础数据管理</span> </a>
     <ul>
         <li><a href="professionInfo">专业信息</a></li>
        <li><a href="classInfo">班级信息</a></li>
        <li><a href="studentInfo.jsp">学生信息</a></li>
        <li><a href="teacherInfo.jsp">教师信息</a></li>
        <li><a href="courseInfo.jsp">课程基本信息</a></li>
        <li><a href="teachingInfo.jsp">课程教学内容信息</a></li>
        <li><a href="classroomInfo">教室信息</a></li>
        <li><a href="laboratoryInfo">实验室信息</a></li>
      </ul>
    </li>
     <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>教务管理</span> </a>
      <ul>
        <li><a href="teachPlan1">教学计划</a></li>
        <li><a href="schedule.jsp">课表管理</a></li>
		<li><a href="bookManage1">教材征订</a></li>
		<li><a href="experiment.jsp">实验项目</a></li>
      </ul>
    </li>
     <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>考务成绩管理</span> </a>
      <ul>
        <li><a href="examSchema.jsp">考试方案</a></li>
        <li><a href="examArrange.jsp">考试安排</a></li>
        <li><a href="examInfo.jsp">考务信息</a></li>
        <li><a href="mark.jsp">成绩管理</a></li>
      </ul>
    </li>
  </ul>
</div>
<!--sidebar-menu-->

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

<!--Footer-part-->

<div class="row-fluid">
  <div id="footer" class="span12"> 教学管理系统 </div>
</div>

<!--end-Footer-part-->

<script src="js/excanvas.min.js"></script> 
<script src="js/jquery.min.js"></script> 
<script src="js/jquery.ui.custom.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/jquery.flot.min.js"></script> 
<script src="js/jquery.flot.resize.min.js"></script> 
<script src="js/jquery.peity.min.js"></script> 
<script src="js/fullcalendar.min.js"></script> 
<script src="js/matrix.js"></script> 
<script src="js/matrix.dashboard.js"></script> 
<script src="js/jquery.gritter.min.js"></script> 
<script src="js/matrix.interface.js"></script> 
<script src="js/matrix.chat.js"></script> 
<script src="js/jquery.validate.js"></script> 
<script src="js/matrix.form_validation.js"></script> 
<script src="js/jquery.wizard.js"></script> 
<script src="js/jquery.uniform.js"></script> 
<script src="js/select2.min.js"></script> 
<script src="js/matrix.popover.js"></script> 
<script src="js/jquery.dataTables.min.js"></script> 
<script src="js/matrix.tables.js"></script> 

<script type="text/javascript">
  // This function is called from the pop-up menus to transfer to
  // a different page. Ignore if the value returned is a null string:
  function goPage (newURL) {

      // if url is empty, skip the menu dividers and reset the menu selection to default
      if (newURL != "") {
      
          // if url is "-", it is this page -- reset the menu:
          if (newURL == "-" ) {
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
