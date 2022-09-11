<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String title = request.getParameter("title");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String content = request.getParameter("content");
	
	
	
	StringBuffer sql = new StringBuffer();
	sql.append("insert into pro_freeboard(f_idx, mno, nickName, f_subject, f_content, f_password, ,readcount, fdate, commentcount, f_heart)");
	sql.append("values(f_idx_seq.nextval, 0, ?, ?, ?, 0, sysdate, 0, 0) ");
	
	
	boolean result = false;
	
	try{
		Class.forName("oracle.jdbc.OracleDriver");
	} catch(Exception e){
		e.printStackTrace();
	}
	
	try(Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe","c##idev","1234");
			PreparedStatement ps = conn.prepareStatement(sql.toString())){
			ps.setString(1, title);
			ps.setString(2, name);
			ps.setString(3, password);
			ps.setString(4,content);
			ps.executeUpdate();
			result = true;

	} catch(Exception e){
		e.printStackTrace();
	}
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%= result %>
</body>
</html>