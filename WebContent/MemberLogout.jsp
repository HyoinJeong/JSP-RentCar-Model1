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
	String id=(String)session.getAttribute("id");

	session.removeAttribute("id");
%>

<script>
		location.href='RentcarMain.jsp';
</script>

</body>
</html>