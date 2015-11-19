<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<body>
<jsp:include page="header.jsp"/>
<!--main-container-part-->
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a href="#" class="tip-bottom" data-original-title="Go to Home"><i class="icon-home"></i>首页</a> <a href="#">教务管理</a> <a href="#" class="current">教学计划</a></div>
  </div>
  <!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
 <hr>
<!-- 课程表start -->    
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box widget-calendar">
          <div class="widget-title"> <span class="icon"><i class="icon-calendar"></i></span>
            <h5>课程表</h5>
            <div class="buttons"> <a id="add-event" data-toggle="modal" href="#modal-add-event" class="btn btn-inverse btn-mini"><i class="icon-plus icon-white"></i> Add new event</a>
              <div class="modal hide" id="modal-add-event">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">×</button>
                  <h3>Add a new event</h3>
                </div>
                <div class="modal-body">
                  <p>Enter event name:</p>
                  <p>
                    <input id="event-name" type="text" />
                  </p>
                </div>
                <div class="modal-footer"> <a href="#" class="btn" data-dismiss="modal">Cancel</a> <a href="#" id="add-event-submit" class="btn btn-primary">Add event</a> </div>
              </div>
            </div>
          </div>
          <div class="widget-content">
            <div class="panel-left">
              <div id="fullcalendar"></div>
            </div>
            <div id="external-events" class="panel-right">
              <div class="panel-title">
                <h5>Drag Events to the calander</h5>
              </div>
              <div class="panel-content">
                <div class="external-event ui-draggable label label-inverse">My Event 1</div>
                <div class="external-event ui-draggable label label-inverse">My Event 2</div>
                <div class="external-event ui-draggable label label-inverse">My Event 3</div>
                <div class="external-event ui-draggable label label-inverse">My Event 4</div>
                <div class="external-event ui-draggable label label-inverse">My Event 5</div>
              </div>
            </div>

<table class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>星期一</th>
                  <th>星期二</th>
                  <th>星期三</th>
                  <th>星期四</th>
                  <th>星期五</th>
                </tr>
              </thead>
              <tbody>
                <tr class="odd gradeX">
                	<td></td>
                	<td></td>
                	<td></td>
                	<td></td>
                	<td></td>
                </tr>
                <tr class="even gradeC">
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                </tr>
                <tr class="odd gradeA">
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                </tr>
                <tr class="even gradeA">
         			<td></td>
         			<td></td>
         			<td></td>
         			<td></td>
         			<td></td>
                </tr>
              </tbody>
            </table>

          </div>
        </div>
      </div>
    
    </div>
<!-- 课程表end -->
  </div>
</div>

<!--end-main-container-part-->
<jsp:include page="footer.jsp"/>
</body></html>