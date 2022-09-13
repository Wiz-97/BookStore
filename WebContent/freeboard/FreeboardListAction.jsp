<%@page import="vo.PageVo"%>
<%@page import="java.time.LocalDate"%>
<%@page import="vo.FreeboardVo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="dao.FreeboardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int pageNo;
	//페이지 번호를 파라미터로
	if(request.getParameter("page")==null) pageNo=1;
	else pageNo = Integer.parseInt(request.getParameter("page"));

	FreeboardDao dao = FreeboardDao.getInstance();
	int pageSize=10;	//한페이지에 몇 개의 글?

	PageVo pages = new PageVo(pageNo,dao.getCount(),pageSize);		
			
			
	Map<String,Integer> map = new HashMap<>();
	map.put("startNo",pages.getStartNo());
	map.put("endNo",pages.getEndNo());
	
	List<FreeboardVo> list = dao.getPageList(map);
	request.setAttribute("list", list);
	request.setAttribute("today", LocalDate.now());
	//여기서 select 결과를 리스트에 저장하고 view.jsp로 가야해요.
	//페이지 번호를 애트리뷰트로 저장
	request.setAttribute("page", pageNo);
	request.setAttribute("pagelist", pages);
	pageContext.forward("FreeboardListView.jsp");
%>