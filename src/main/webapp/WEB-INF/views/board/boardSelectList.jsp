<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="//cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css"
	rel="stylesheet">
<script src="//cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
<!-- <style>
body {
    text-align: center;
    padding: 100px;
    background: whitesmoke;
    display: table-cell;
}
</style> -->
<script>
/* $(function () {
    $('#myTable').DataTable();
} );
 */
	function goPage(num){
	 	searchFrm.page.value = num;
	 	searchFrm.submit();
		// location.href="boardSelectList?pageNum="+ num
			
	}

</script>

</head>
<body>
	<div>
		<h1>게시판조회</h1>
	</div>
	<div>

<form name="searchFrm">
	<input type="hidden" name="pageNum" value="1">
	<select name="type">
		<option value="title">제목
		<option value="content">내용
		<option value="writer">작성자
	</select>
	<input name="keyword">
	<button>검색</button>
</form>
	
		<table id="myTable" class="table table-success table-striped"
			border="1">
			<thead>
				<tr>
					<th>게시글번호</th>
					<th>게시글제목</th>
					<th>작성자</th>
					<th>등록일</th>
					<th>수정일</th>
					<th>수정</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="vo">
					<tr>
						<td>${vo.bno}</td>
						<td><a href="#" onclick="boardSelect(${vo.bno})">${vo.title }</a></td>
						<td>${vo.writer }</td>
						<td>${vo.regdate}</td>
						<td>${vo.updateDate}</td>
						<td><button onclick="boardUpdate(${vo.bno})">수정</button></td>
						<td><button onclick="boardDelete(${vo.bno})">삭제</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<nav aria-label="...">
			<ul class="pagination">
				<c:if test="${pageMaker.prev}">
					<li class="page-item disabled"><span class="page-link" onclick="goPage(${pageMaker.startPage-1})">Previous</span>
				</c:if>
				</li>
				<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="num">
					<li class="page-item"><a class="page-link" href="#" onclick="goPage(${num})">${num}</a></li>
				</c:forEach>
				<li class="page-item active" aria-current="page"></li>
				<li class="page-item"><a class="page-link" href="#" onclick="goPage(${num})">$(num)</a></li>
				<c:if test="${pageMaker.next}">
					<li class="page-item"><a class="page-link" href="#" onclick="goPage(${pageMaker.endPage+1})">Next</a></li>
				</c:if>
			</ul>
		</nav>
		
		<button onclick="boardInsert()">등록</button>
	</div>
	<script type="text/javascript">
		function boardSelect(bno){
			location.href="boardSelect?bno="+bno;
		}
		function boardInsert(bno){
			location.href="boardInsertForm";
		}
		
		function boardUpdate(bno){
			location.href="boardUpdateForm?bno="+bno;
		}
		function boardDelete(bno){
			location.href="boardDelete?bno="+bno;
		}
		
	</script>

</body>
</html>