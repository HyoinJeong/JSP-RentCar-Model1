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
	String center=request.getParameter("center");

	// 처음 실행시에는 center 값이 넘어오지 않기에
	if(center==null){
		center="Center.jsp";// 디폴트 center값을 부여
	}
%>

<center>
<table width="1000">
	<!-- Top 부분 -->
	<tr height="140" align="center">
		<td align="center" width="1000"><jsp:include page="Top.jsp"></jsp:include></td>
	</tr>
	
	<!-- Center 부분 -->
	<tr align="center">
		<td align="center" width="1000"><jsp:include page="<%=center %>"></jsp:include></td>
	</tr>
	
	<!-- Bottom 부분 -->
	<tr height="100" align="center">
		<td align="center" width="1000"><jsp:include page="Bottom.jsp"></jsp:include></td>
	</tr>
</table>
</center>

</body>
</html>