<%@page import="vo.CategoryVo"%>
<%@page import="dao.CategoryDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	CategoryDao cdao = CategoryDao.getCategory();

out.print("<script>");
	try {
		
		String cgno = request.getParameter("cgno");
		String cate = request.getParameter("cate");
		
		CategoryVo clist = new CategoryVo(cgno,cate);
		cdao.insert(clist);
		
		out.print("alert('카테고리를 등록했습니다.');");
		out.print("location.href='categoryregist.jsp';");
	} catch (Exception e) {
		out.print("alert('카테고리 등록을 실패했습니다.');");	
		out.print("location.href='categoryregist.jsp';");
	}
	out.print("</script>");
%>