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

	request.setCharacterEncoding("euc-kr");
	
	String id=request.getParameter("id");
	String pass=request.getParameter("pass");
	
	// 회원 아이디와 패스워드가 일치하는지 비교
	RentcarDAO rdao = new RentcarDAO();
	
	// 해당 회원이 있는지여부를 숫자로 표현
	int result=rdao.getMember(id,pass);
	
	if(result==0){
		%>
		<script>
			alert("회원 아이디 또는 패스워드가 틀립니다.");
			location.href='RentcarMain.jsp?center=MemberLogin.jsp';
		</script>
	<%
	}else{
		// 로그인 처리가 되었다면
		session.setAttribute("id", id);
		// 세션의 유지시간 설정
		session.setMaxInactiveInterval(60*30);
		response.sendRedirect("RentcarMain.jsp");
	}

	
%>

</body>
</html>