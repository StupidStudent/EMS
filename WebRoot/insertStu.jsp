<%@page contentType="text/html;charset=utf-8"%>
<%@page import="java.sql.*"%>

<%
    request.setCharacterEncoding("utf-8");
    String stuId = request.getParameter("stuId");
    String classId = request.getParameter("classId");
	String userId = request.getParameter("userId");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String address = request.getParameter("address");
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
	pst = conn.prepareStatement("insert into student(stuId,classId,userId,name,age,address)values("+stuId+","+classId+","+userId+",'"+name+"',"+age+",'"+address+"')");
	pst.executeUpdate();
	response.sendRedirect("studentInfo.jsp");
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