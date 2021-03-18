<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<h1 class="text-primary">${board.bno }번 글 내용</h1>
			<form class="form-group">
				<div class="col-md-5">
				글쓴이<input type="text" class="form-control"
					readonly=true value="${board.writer }"><br>
				</div>
				<div class="col-md-5">
				글 제목<input type="text" class="form-control"  
					readonly=true value="${board.title }"><br>
				</div>
				본문<br>
				<div class="col-md-5">
				<textarea readonly=true class="form-control">
							${board.content }</textarea><br>
				</div>
				<div class="col-md-5">			
				등록날짜<input type="text" class="form-control" 
					readonly=true value=${board.regDate }><br>
				</div>
				<div class="col-md-5">
				수정날짜<input type="text" class="form-control"
					readonly=true value=${board.updateDate }>
				</div>
			</form>
			<div class="row">
				<div class="col-md-3">
					<a href="/board/list" class="btn btn-primary">목록</a>
					<a href="/board/modify?bno=${board.bno }" class="btn btn-warning">수정</a>
					<a href="/board/remove?bno=${board.bno }" class="btn btn-danger">삭제</a>
				</div>
			</div>
		</div>
		
	</div>
	
</body>
</html>