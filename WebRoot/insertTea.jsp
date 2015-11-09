<%@page contentType="text/html;charset=utf-8"%>
<%@page import="java.sql.*"%>

<%
    request.setCharacterEncoding("utf-8");
    String teaId = request.getParameter("teaId");
    String userId = request.getParameter("userId");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String rank = request.getParameter("rank");
	
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
	pst = conn.prepareStatement("insert into teacher(teaId,userId,name,age,rank)values("+teaId+","+userId+",'"+name+"',"+age+",'"+rank+"')");
	pst.executeUpdate();
	response.sendRedirect("teacherInfo.jsp");
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