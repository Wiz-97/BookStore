<%@page import="vo.BookListVo"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="dao.BookListDao"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = "";

BookListDao bdao = BookListDao.getInstance();
int size = 20 * 1024 * 1024;

out.print("<script>");
try {
	MultipartRequest multi_request = new MultipartRequest(request, path, size, "UTF-8", new DefaultFileRenamePolicy());

	String title = multi_request.getParameter("title");
	String b_writer = multi_request.getParameter("b_writer");
	String publisher = multi_request.getParameter("publisher");
	String b_date = multi_request.getParameter("b_date");
	int b_price = Integer.parseInt(multi_request.getParameter("b_price"));
	String cgno = multi_request.getParameter("cgno");
	String b_img = multi_request.getFilesystemName("b_img");

	BookListVo rlist = new BookListVo(0, title, b_date, b_price, cgno, b_writer, publisher, b_img);

	bdao.insert(rlist);

	out.print("alert('책을 등록했습니다.');");
	out.print("location.href='bookregist.jsp';");
} catch (Exception e) {

	out.print("alert('책 등록을 실패했습니다.');");
	out.print("location.href='bookregist.jsp';");
}
out.print("</script>");
%>