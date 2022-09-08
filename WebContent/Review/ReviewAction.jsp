<%@page import="vo.ReviewVo"%>
<%@page import="dao.ReviewDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
	ReviewDao dao = ReviewDao.getInstance();
	String del = request.getParameter("del");
	if(del !=null && del.equals("y")) {	
		//후기 삭제
		int cno = Integer.parseInt(request.getParameter("rno"));
		int bno = Integer.parseInt(request.getParameter("bno"));
		dao.delete(cno);
		response.sendRedirect("detailAction.jsp?bno="+bno + "&page="+request.getParameter("page"));
	} else {
		//후기 등록
		int mno= Integer.parseInt(request.getParameter("mno"));
		//회원번호
		int bno = Integer.parseInt(request.getParameter("bno"));
		//책 번호
		String nickName = request.getParameter("nickName");
		String r_content = request.getParameter("r_content");
		
		ReviewVo vo = new ReviewVo(0,mno,bno,nickName,r_content,null,0);
		dao.insert(vo);
		//후기 등록 확인하기 위해 책 페이지로 이동
		response.sendRedirect("?.jsp?idx="+mno+"&page="+request.getParameter("page"));
	}
%>