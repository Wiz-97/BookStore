<%@page import="vo.CommentVo"%>
<%@page import="dao.CommentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	CommentDao dao = CommentDao.getInstance();
	String del = request.getParameter("del");
	if(del !=null && del.equals("y")) {	
		//댓글 삭제
		int cno = Integer.parseInt(request.getParameter("cno"));
		int f_idx = Integer.parseInt(request.getParameter("f_idx"));
		dao.delete(cno);
		response.sendRedirect("FreeboardDetailAction.jsp?f_idx="+f_idx + "&page="+request.getParameter("page"));
	} else {
		//댓글 등록
		int mno = Integer.parseInt(request.getParameter("mno"));
		//회원 번호
		int f_idx = Integer.parseInt(request.getParameter("f_idx"));
		//글 번호
		String nickName = request.getParameter("nickName");
		String c_content = request.getParameter("c_content");
		
		CommentVo vo = new CommentVo(0,0,f_idx,nickName,c_content,null,0);
		dao.insert(vo);
		//댓글 등록 확인하기 위해 글상세보기 페이지로 이동
		response.sendRedirect("FreeboardDetailView.jsp?idx="+f_idx+"&page="+request.getParameter("page"));
	}
%>