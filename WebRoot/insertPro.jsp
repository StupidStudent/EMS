<%@page contentType="text/html;charset=utf-8"%>
<%@page import="java.sql.*"%>

<%
    request.setCharacterEncoding("utf-8");
    String proId = request.getParameter("proId");
    String name = request.getParameter("name");
	String introduction = request.getParameter("introduction");
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
	conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433; DatabaseName=EMS","sa","123456");
	pst = conn.prepareStatement("insert into profession(proId,name,introduction,teachPlan)values("+proId+",'"+name+"','"+introduction+"','"+teachPlan+"')");
	pst.executeUpdate();
	response.sendRedirect("professionInfo.jsp");
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