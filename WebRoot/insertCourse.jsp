<%@page contentType="text/html;charset=utf-8"%>
<%@page import="java.sql.*"%>

<%
    request.setCharacterEncoding("utf-8");
    String courseId = request.getParameter("courseId");
    String name = request.getParameter("name");
	String instruction = request.getParameter("instruction");
	String teachPlan = request.getParameter("teachPlan");
	
	Connection conn = null;
	PreparedStatement pst = null;

try{
	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
}
catch(ClassNotFoundException ce){
	out.println(ce.getMessage());
}

try{
	conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433; DatabaseName=EMS","sa","");
	pst = conn.prepareStatement("insert into course(courseId,name,instruction,teachPlan)values("+courseId+",'"+name+"','"+instruction+"','"+teachPlan+"')");
	pst.executeUpdate();
	response.sendRedirect("courseInfo.jsp");
}
catch(SQLException e){
	System.out.println(e.getMessage());
	out.println("插入数据失败");
}
finally{
	pst.close();
	conn.close();
}
%>
<html>

<body>

</body></html>