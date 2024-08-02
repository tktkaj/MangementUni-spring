<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form action="${path}/professor" method="get">
		<select name="department" id="department"
			onchange="this.form.submit()">
			<option value="COMP"  ${department=='COMP'? 'selected' :''}>컴퓨터공학과</option>
			<option value="CHEM" ${department =='CHEM'? 'selected' :''}>화학공학과</option>
			<option value="INSE" ${department =='INSE'? 'selected' :''}>정보보호</option>
			<option value="MATH" ${department =='MATH'? 'selected' :''}>수학과</option>
			<option value="APPL" ${department =='APPL'? 'selected' :''}>응용소프트웨어학과</option>
			<option value="COMM"${department =='COMM'? 'selected' :''} >정보통신학과</option>
			<option value="AIIN"${department =='AIIN'? 'selected' :''} >AI인공지능과</option>
			<option value="PHYS" ${department =='PHYS'? 'selected' :''}>물리학과</option>
		</select>
	</form>
	<c:forEach var="prolist" items="${list}">
		<p>${prolist.PROF_NAME }</p>
		<p>${prolist.DEPT_NAME }</p>
		<p>${ prolist.SUB_NAME}</p>
	</c:forEach>


</body>
</html>