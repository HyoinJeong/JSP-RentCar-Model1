<%@page import="db.RentcarDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
	int no= Integer.parseInt(request.getParameter("no"));
	
	RentcarDAO rdao = new RentcarDAO();
	// 에약삭제 메소드 호출
	rdao.carRemoveReserve(no);
	
	response.sendRedirect("RentcarMain.jsp");

%>

</body>
</html>