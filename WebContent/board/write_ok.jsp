<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>  
<%
	request.setCharacterEncoding("euc-kr");

	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String id = "c##idev";
	String pass = "1234";
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String f_title = request.getParameter("f_title");
	String f_content = request.getParameter("f_content");
	
	try {	
		Connection conn = DriverManager.getConnection(url,id,pass);
		
		String sql = "INSERT INTO board(USERNAME,PASSWORD,F_TITLE,F_CONTENT) VALUES(?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, name);
		pstmt.setString(2, password);
		pstmt.setString(3, f_title);
		pstmt.setString(4, f_content);
		
		pstmt.execute();
		pstmt.close();
		
		conn.close();
} catch(SQLException e) {
	out.println( e.toString() );
	}
%>
  <script language=javascript>
   self.window.alert("입력한 글을 저장하였습니다.");
   location.href="list.jsp";   </script>
출처: https://seinarin.tistory.com/5?category=452459 [행복을 찾아서:티스토리]