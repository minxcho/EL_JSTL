<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
<!-- JSTL�� ����ϱ� ���� taglib �߰� -->
<!-- �߰��� JSTL Lib�� ������Ʈ�� �߰� -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>jstlTest</title>
</head>
<body>
	<!-- JSTL ����ϱ� -->
	<!-- JSTL�� ����Ͽ� page������ �� �ֱ� -->
	<%-- <% pageContext.setAttribute("num", 100) %> --%>
	
	<!--  c:set �⺻������ page������ ������ �ȴ�
		  Ư�� ������ �����ϰ� �ʹٸ� scope�Ӽ� Ȱ��
	 -->
	
	<c:set var="num" value="100" scope="session"/>
	

	
	<c:out value="${num}" />
	
	<!-- JSTL�� Ȱ���� ���ǹ� -->
	<!-- num�� ���� 100���� ũ�ų� ���ٸ� 100���� Ů�ϴ� �ƴϸ� �۽��ϴٸ� ��� -->
	
	<c:if test="${num ge 100}">
		100���� ũ�ų� �����ϴ�.
	</c:if>
	<c:if test="${num lt 100}">
		100���� �۽��ϴ�.
	</c:if>

	<c:set var="time" value="����" />
	<!-- time ���� 
		��ħ -> �佺Ʈ
		���� -> �����
		���� -> ����
		�׿� -> ���
	 -->

	<c:choose>
		<c:when test="${time == '��ħ'}">
			�佺Ʈ		
		</c:when>
		<c:when test="${time == '����'}">
			�����		
		</c:when>
		<c:when test="${time == '����'}">
			����		
		</c:when>
		<c:otherwise>
			���
		</c:otherwise>	
	</c:choose>

	<br>
	<!-- JSTL �ݺ��� -->
	<c:forEach var="i" begin="1" end="10" step="1">
		���� ${i} <br>
	</c:forEach>

	<br>
	
	<!-- 
		
	 -->
	
	<table border=1>
	
	<c:forEach var="j" begin="2" end="5" step="1">
		<tr>
		<c:forEach var="i" begin="1" end="9" step="1">
			<td>${j}*${i}=${j * i} </td>
		</c:forEach>
		</tr>		
	</c:forEach>
	</table>
	
	
	
	
	
	
	
	
	
</body>
</html>