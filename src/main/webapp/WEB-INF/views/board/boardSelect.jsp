<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
    crossorigin="anonymous"></script>
<style>
body {

    padding: 100px;
    background: white;
    display: table-cell;
    border-collapse: separate;
  border-spacing: 0;
  text-align: left;
  line-height: 1.5;
  border-top: 1px solid #ccc;
  border-left: 1px solid #ccc;
  margin : 20px 10px;


}
button {
    margin: 5px;


}
</style>
    
</head>

<body>
	<h1>게시글 상세보기</h1>
	<table border="1">
			<tr>
				<th>게시글번호</th>
				<td>${vo.bno }</td>
			</tr>
			<tr>
				<th>게시글 제목</th>
				<td>${vo.title}</td>
			</tr>
			<tr>
				<th>게시글 내용</th>
				<td>${vo.content}</td>
			</tr>
			<tr>
				<th>게시글 작성자</th>
				<td>${vo.writer}</td>
			</tr>
			<tr>
				<th>게시글 등록일</th>
				<td>${vo.regdate}</td>
			</tr>
			<tr>
				<th>게시글 수정일</th>
				<td>${vo.updateDate}</td>
			</tr>
	</table>
	<hr>
	<!-- 댓글보기 -->
	작성자 : <input name="replyer" id="replyer">
	내용 : <input name="reply" id="reply">
	<button type="button" id="btnReAdd">댓글등록</button>
		
	<h3>댓글 리스트</h3>
	
	<div id="replyList">
		<div data-rno="25">
			<span class="reWriter">작성자</span>
			<span class="reContent">내용</span>
			<span class="reDate">작성일시</span>
			<span class="btnReUpd"><button>수정</button></span>
			<span class="btnReDel"><button>삭제</button></span>
		</div>
	</div>
	<script type="text/javascript">
		$(function(){
			replySelect();
							
			function replySelect(){
				let url = "reply/${vo.bno}";
				$.ajax({
					url : url
				}).done(function(objs){
					console.log(objs)
					for(obj of objs){
						let node = `<div data-rno="\${obj.rno}">
							<span class="reWriter">\${obj.replyer}</span>
							<span class="reContent">\${obj.reply}</span>
							<span class="reDate">\${obj.replyDate}</span>
							<span class="btnReUpd"><button>수정</button> </span>
							<span class="btnReDel"> <button>삭제</button>
						</div>
						`;
						$("#replyList").append(node);
					}
				})
			}
			
			$("#btnReAdd").on("click", function(){
				let reply = $("#reply").val();
				let replyer = $("#replyer").val();
				let bno = "${vo.bno}";
				
				$.ajax({
					url : "reply",
					method : "post",
					data : {reply:reply, replyer:replyer, bno:bno },
					success : function(result){
						let today = new Date();   
						let year = today.getFullYear(); // 년도
						let month = today.getMonth() + 1;  // 월
						let date = today.getDate();
						let node = '<div data-rno= '+ result.rno + '>' +
							'<span class="reWriter">' + result.replyer +'</span>' +
							'<span class="reContent">' + result.reply +'</span>' +
							'<span class="reDate">' + year + '-' + month + '-' + date +'</span>' +
							'<span class="btnReUpd"><button>수정</button> </span>' +
							'<span class="btnReDel"> <button>삭제</button>' +
						'</div>';

						$("#replyList").append(node);
					},error : function(){
						
					}
					
				})
			})
		})
		
		
	</script>
</body>
</html>