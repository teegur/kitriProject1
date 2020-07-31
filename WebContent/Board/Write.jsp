<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
</style>
</head>
<body>
	<c:set var="str">
		<c:if test="${sessionScope.id != b.writer }">
			readonly
		</c:if>
	</c:set>	
<h3 >글작성<br></h3>

	<form action="${pageContext.request.contextPath }/WriteController_free" method="post">
		<table border="2"	cellspacing="0"	>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="writer" size="60" value="${sessionScope.id }" readonly></td>
			</tr>
			<tr>
				<th>글제목</th>
				<td><input type="text" name="title" size="60"></td>
			</tr>
			<tr>
				<th>글 내용</th>
				<td><textarea rows="20" cols="60" name="content"></textarea>	</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="작성">
					<input type="reset" value="취소">
				</td>
			</tr>		
		</table>
	</form>
</div>	
</body>
</html>