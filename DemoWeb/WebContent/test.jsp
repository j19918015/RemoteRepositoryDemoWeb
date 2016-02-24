<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>



</head>


<body>
<H1 onclick="dofocus()" onmouseover="domover()" onmouseout="domout()">Test123123132</H1>
<H2><input type="button" value="test" id="data" onclick="test()">12312467489748</H2>
<img id ="img1" src="img/ajax-loader.gif" style="display:none">

<input type="button" value="enter" id="en"></input>
<input type="button" value="get"  onclick="click1()"></input>
	<input type="button" value="post"  onclick="click2()"></input>

<%@ page import="javax.naming.*" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="java.sql.*" %>
<%
Context ctx = new InitialContext();
DataSource dataSource = (DataSource) ctx.lookup("java:comp/env/jdbc/TestDB");
Connection conn = dataSource.getConnection();
Statement stmt = conn.createStatement();
ResultSet rset = stmt.executeQuery("select * from dept");
while(rset.next()) {
	String col1 = rset.getString(1);
	String col2 = rset.getString(2);
	out.println("<h1>"+col1+","+col2+"</h1>");
}
rset.close();
stmt.close();
conn.close();
%>
</body>
</html>
