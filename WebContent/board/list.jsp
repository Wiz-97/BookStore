<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 	
	StringBuffer sql = new StringBuffer();
	sql.append("select f_idx, nickName, f_subject, fdate, readCount ");
	sql.append("from pro_freeboard ");
	sql.append("order by f_idx desc ");
	
	
	boolean result = false;
	
	try{
		Class.forName("oracle.jdbc.OracleDriver");
	} catch(Exception e){
		e.printStackTrace();
	}
	
	try(Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe","c##idev","1234");
			PreparedStatement ps = conn.prepareStatement(sql.toString())){
			try(ResultSet rs = ps.executeQuery()){
				
				
				

		
			

 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<thead>
		<tr>
			<td>번호</td>
			<td>제목</td>
			<td>이름</td>
			<td>날짜</td>
			<td>조회수</td>
		</tr>
	</thead>
	<tbody>
		
		<%

				while(rs.next()){
					int no;
					String title;
					String name;
					String regdate;
					String readcount;
					
					
					no = rs.getInt("no");
					title = rs.getString("title");
					name = rs.getString("name");
					regdate = rs.getString("regdate");
					readcount = rs.getString("readcount");
					
		%>
		<tr>
		<td><%=no%></td>
		<td><%=title %></td>
		<td><%=name %></td>
		<td><%=regdate %></td>
		<td><%=readcount %></td>
		<%		
				}
			}catch(Exception e){
				e.printStackTrace();
			}
		%>
		</tr>
	</tbody>
</table>
<%

} catch(Exception e){
e.printStackTrace();
}
%>
</body>
</html>