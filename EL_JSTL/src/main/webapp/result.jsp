<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>result</title>
</head>
<body>
	
	<!-- 
		��ũ��Ʈ���� ǥ������ ����ؼ� input�� �Է��� �����ϴ� ������ ���������� ǥ���Ͻÿ�
	 -->
	
	<% 
		request.setCharacterEncoding("EUC_KR");
		String food = request.getParameter("food");
		
	%>
	<%= food %>
	${param.food}
	${param["food"]}
	
	<br>
	${paramValues.fish[0]}
	${paramValues.fish[1]}
	${paramValues.fish[2]}
	${paramValues.fish[3]}
	
</body>
</html>