<%@page contentType="text/html;charset=utf-8"%>
<%@page import="java.sql.*"%>

<%
    request.setCharacterEncoding("utf-8");
    String classId = request.getParameter("classId");
    String proId = request.getParameter("proId");
	String instructor = request.getParameter("instructor");
	String name = request.getParameter("name");
	String grade = request.getParameter("grade");
	
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
	pst = conn.prepareStatement("insert into classTeam(classId,proId,instructor,name,grade)values("+classId+","+proId+","+instructor+",'"+name+"',"+grade+")");
	pst.executeUpdate();
	response.sendRedirect("classInfo.jsp");
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