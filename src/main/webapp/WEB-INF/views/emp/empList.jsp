<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.type03 {
  border-collapse: collapse;
  text-align: left;
  line-height: 1.5;
  border-top: 1px solid #ccc;
  border-left: 3px solid #369;
  margin : 20px 10px;
}
.type03 th {
  width: 147px;
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  color: #153d73;
  border-right: 1px solid #ccc;
  border-bottom: 1px solid #ccc;

}
.type03 td {
  width: 349px;
  padding: 10px;
  vertical-align: top;
  border-right: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
}
</style>
</head>

<body>
	<h1>사원목록</h1>
	<form>
		사번
		<input name="employeeId">
		
		부서
		<input type="checkbox" name="depts" value="10">
		<input type="checkbox" name="depts" value="20">
		<input type="checkbox" name="depts" value="30">
		
		직무
		<select name="jobId">
			<option value="IT_PROG">IT_PROG</option>
			<option value="ST_CLERK">ST_CLERK</option>
			<option value="ST_MAN">ST_MAN</option>
		</select>
		
		입사일자
		<input type="date" name="sdt">~<input type="date" name="edt">
		
		<button>검색</button>
	</form>
	
	<table border="1" class="type03">
		<thead>
			<tr>
				<th>사원번호</th>
				<th>이름</th>
				<th>성</th>
				<th>이메일</th>
				<th>전화번호</th>
				<th>월급</th>
			</tr>
		</thead>
		<c:forEach items="${empList}" var="a">
			<tr>
				<td><a href="empUpdate/${a.employeeId}">${a.employeeId}</a></td>
				<td>${a.lastName}</td>
				<td>${a.firstName}</td>
				<td>${a.email}</td>
				<td>${a.phoneNumber}</td>
				<td>${a.salary}</td>
			</tr>
		</c:forEach>

	</table>
</body>
</html>