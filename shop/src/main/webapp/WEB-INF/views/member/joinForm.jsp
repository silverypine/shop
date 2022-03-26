<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="height: 100%;">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>joinForm</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body style="height: 100%;">

<div class="container h-100 w-25">
	<div class="row d-flex justify-content-center align-items-center h-100">
		<form>
			<h4 class="mb-3">회원 가입</h4>
		  	<div class="col mb-3">
		    	<label for="memberId" class="form-label">아이디</label>
		    	<input type="text" class="form-control" id="memberId" name="memberId">
		  	</div>
		  	<div class="col mb-3">
		    	<label for="memberPw" class="form-label">패스워드</label>
		    	<input type="password" class="form-control" id="memberPw" name="memberPw">
		  	</div>
		  	<div class="col mb-3">
		    	<label for="memberNm" class="form-label">이름</label>
		    	<input type="text" class="form-control" id="memberNm" name="memberNm">
		  	</div>
		  	<div class="col mb-3">
		    	<label for="memberPhone" class="form-label">전화번호</label>
		    	<input type="text" class="form-control" id="memberPhone" name="memberPhone">
		  	</div>
		  	<div class="col mb-3">
		    	<label for="memberEmail" class="form-label">이메일</label>
		    	<input type="email" class="form-control" id="memberEmail" name="memberEmail">
		  	</div>
		  	<div class="col mb-3">
		    	<label for="memberAddress" class="form-label">주소</label>
		    	<input type="text" class="form-control" id="memberAddress" name="memberAddress">
		  	</div>
		  	<div class="col">
		    	<input type="submit" class="btn btn-primary" value="회원 가입">
		  	</div>
		</form>
	</div>
</div>

</body>
</html>