<%@page import="com.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- JSTL을 사용하기 위한 taglib 추가 -->
<!-- 추가로 JSTL Lib를 프로젝트에 추가 -->    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		ArrayList<String> idol = new ArrayList<String>();
		idol.add("제이홉");
		idol.add("뷔");
		idol.add("진");
		idol.add("지민");
		idol.add("정국");
		pageContext.setAttribute("idol", idol);
	
	%>
	
	<c:forEach items="${idol}" var="name">
		${name}
	</c:forEach>
	
	<br>
	<%
		MemberDTO dto1 = new MemberDTO("pbk", "1234", "호두아빠", "광주");
		MemberDTO dto2 = new MemberDTO("iu", "5678", "아이유", "서울");
		MemberDTO dto3 = new MemberDTO("son", "7777", "흥민이", "영국");
		MemberDTO dto4 = new MemberDTO("jjy", "9999", "준용쌤", "전주");
		MemberDTO dto5 = new MemberDTO("imh", "4567", "명훈겅듀", "제주");
	
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		list.add(dto1);
		list.add(dto2);
		list.add(dto3);
		list.add(dto4);
		list.add(dto5);
	
		pageContext.setAttribute("list", list);
		
		int index = 1;
		%>
	
	<table border="1px">
		<tr>
			<td>번호</td>
			<td>아이디</td>
			<td>비밀번호</td>
			<td>닉네임</td>
			<td>주소</td>
		</tr>
		<!-- 여기 아래에 JSTL을 통해서 list안에 있는 회원의 정보를 출력  -->	
<%-- 		<c:set var="i" value="1" />  --%>
		<c:forEach items="${list}" var="dto" varStatus="i">
			<tr>
				<td>${i.count}</td>
				<td>${dto.id}</td>
				<td>${dto.pw}</td>
				<td>${dto.nick}</td>
				<td>${dto.addr}</td>
			</tr>
			<%-- <c:set var="i" value="${i+1}" />  --%>
		</c:forEach>
		

	</table>
</body>
</html>