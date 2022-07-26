<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
    text-align: center;
    padding: 100px;
    background: whitesmoke;
    display: table-cell;
}
</style>
</head>
<body>
	<h1>게시글 등록</h1>
	<form action="boardInsert">
		<table border="1">
			
			<tr>
				<th>게시글 제목</th>
				<td><input type="text" name="title">${vo.title}</td>
			</tr>
			<tr>
				<th>게시글 내용</th>
				<td><input type="text" name="content">${vo.content}</td>
			</tr>
			<tr>
				<th>게시글 작성자</th>
				<td><input type="text" name="writer">${vo.writer}</td>
			</tr>
	</table>
		<button type="submit">등록</button>
		<button type="button" onclick="boardSelectList()">목록</button>
		</form>
		<script type="text/javascript">
			function boardSelectList(){
				location.href = "boardSelectList";
			}
			
		</script>
</body>
</html>