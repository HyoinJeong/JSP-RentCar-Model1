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
	
	// ȸ�� ���̵�� �н����尡 ��ġ�ϴ��� ��
	RentcarDAO rdao = new RentcarDAO();
	
	// �ش� ȸ���� �ִ������θ� ���ڷ� ǥ��
	int result=rdao.getMember(id,pass);
	
	if(result==0){
		%>
		<script>
			alert("ȸ�� ���̵� �Ǵ� �н����尡 Ʋ���ϴ�.");
			location.href='RentcarMain.jsp?center=MemberLogin.jsp';
		</script>
	<%
	}else{
		// �α��� ó���� �Ǿ��ٸ�
		session.setAttribute("id", id);
		// ������ �����ð� ����
		session.setMaxInactiveInterval(60*30);
		response.sendRedirect("RentcarMain.jsp");
	}

	
%>

</body>
</html>