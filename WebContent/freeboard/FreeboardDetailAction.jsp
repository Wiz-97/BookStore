<%@page import="vo.FreeboardVo"%>
<%@page import="dao.FreeboardDao"%>
<%@page import="vo.CommentVo"%>
<%@page import="java.util.List"%>
<%@page import="dao.CommentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    	int f_idx = Integer.parseInt(request.getParameter("f_idx"));
    //글 상세보기를 클릭한 페이지의 번호를 파라미터로 가져오는 이유 : 글 상세보기에서 다시 글목록으로 돌아갈때를 위해서.
    //						ㄴ 보고 있던 글 목록 페이지로 돌아가기. 
    	int pageNo = Integer.parseInt(request.getParameter("page"));
    	request.setAttribute("page", pageNo);

    	//메인글 idx의 댓글 목록을 애트리뷰트 저장(선처리: 댓글 개수 update)
    	CommentDao cmtdao = CommentDao.getInstance();
    	cmtdao.updateCmtCount(f_idx);		//idx값이 comment 테이블에서는 mref 값.
    	List<CommentVo> cmtlist = cmtdao.getComments(f_idx);
    	request.setAttribute("cmtlist", cmtlist);
    	
    	FreeboardDao freedao = FreeboardDao.getInstance();
    	freedao.readcountUp(f_idx);
    	FreeboardVo bean = freedao.getDetail(f_idx);
    	request.setAttribute("bean", bean);
    	
    	pageContext.forward("FreeboardDetailView.jsp");		//화면 페이지로 애트리뷰트와 함께 요청 전달.
    %>