<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="height: 100%;">
<head>
<meta charset="UTF-8">
<title>memberInfo</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script type="text/javascript" src="/resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">
function formCheck() {
	let memberId = $("#memberId").val();
	let memberPw = $("#memberPw").val();
	let memberNm = $("#memberNm").val();
	let memberEmail = $("#memberEmail").val();
	let memberAddress = $("#memberAddress").val();
	let memberPhone = $("#memberPhone").val();
	
	return true;
}
</script>
</head>
<body style="height: 100%;">
	<div class="container h-100 w-25">
	<div class="row d-flex justify-content-center align-items-center h-100">
		<form action="/member/update" method="post" onsubmit="return formCheck();">
			<h4 class="mb-3">회원 정보</h4>
		  	<div class="col mb-3">
		    	<label for="memberId" class="form-label">아이디</label>
		    	<input type="text" class="form-control" id="memberId" name="memberId" value="${m.memberId}" disabled>
		    	
		  	</div>
		  	<div class="col mb-3">
		    	<label for="memberPw" class="form-label">패스워드</label>
		    	<input type="password" class="form-control" id="memberPw" name="memberPw" value="${m.memberPw}" disabled>
		  	</div>
		  	<div class="col mb-3">
		    	<label for="memberNm" class="form-label">이름</label>
		    	<input type="text" class="form-control" id="memberNm" name="memberNm" value="${m.memberNm}">
		  	</div>
		  	<div class="col mb-3">
		    	<label for="memberEmail" class="form-label">이메일</label>
		    	<input type="email" class="form-control" id="memberEmail" name="memberEmail" value="${m.memberEmail}">
		  	</div>
		  	<div class="col mb-3">
		    	<label for="memberAddress" class="form-label">주소</label>
		    	<input type="text" class="form-control" id="memberAddress" name="memberAddress" value="${m.memberAddress}">
		  	</div>
		  	<div class="col mb-3">
		    	<label for="memberPhone" class="form-label">가입 날짜</label>
		    	<input type="text" class="form-control" id="memberIndate" name="memberIndate" value="${m.memberIndate}" disabled>
		  	</div>
		  	<div class="col mb-3">
		    	<label for="memberPhone" class="form-label">전화번호</label>
		    	<input type="text" class="form-control" id="memberPhone" name="memberPhone" value="${m.memberPhone}">
		  	</div>
		  	<div class="col" style="text-align:center;">
		    	<input type="submit" class="btn btn-primary" value="회원 정보 수정">
		    	<input type="button" class="btn btn-primary" onclick="history.back(-1);" value="뒤로 가기">
		  	</div>
		</form>
	</div>
</div>
</body>
</html>