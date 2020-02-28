<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>아니 뭐라도 나와야할것 아니니!!</h3>
	<c:forEach items="${list }" var="test">		
							<!-- model이 가져온 변수명 list에 foreach문에서 사용할 변수명 test를 줌 -->
	tInt = ${test.test_INT }<br>
	test = ${test.test_TEXT }<br>
	date = ${test.test_DATE }<br>
	double = ${test.test_DOUBLE }<br>
	</c:forEach>
	
	<p>list</p>
	
	<h2>table</h2>
	<table id="a">
	<thead>
	<tr>
	<td>id</td><td>text</td><td>date</td><td>double</td>
	</tr>
	</thead>
	<tbody>
	<c:forEach items="${list }" var="test">
	<tr>
	<td>${test.test_INT }</td>
	<td>${test.test_TEXT }</td>
	<td>${test.test_DATE }</td>
	<td>${test.test_DOUBLE }</td>
	</tr>
	</c:forEach>
	</tbody>
	</table>
	
</body>
<style>
#a{
border: 1px solid
}
</style>
</html>