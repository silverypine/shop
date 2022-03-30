<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>adminJoin</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<style>
	html, body{
		height:100%;
	}
</style>
<script type="text/javascript">
function formCheck() {
	let adminId = $("#adminId").val();
	let adminPw = $("#adminPw").val();
	let adminNm = $("#adminNm").val();
	
	if (adminId.length < 3 || adminId.length > 10) {
		alert("아이디는 3 ~ 10자로 입력해주세요");
		return false;
	}
	
	if (adminPw.length < 3 || adminPw.length > 10) {
		alert("비밀번호는 3 ~ 10자로 입력해주세요");
		return false;
	}
	
	if (adminNm.length < 3 || adminNm.length > 10) {
		alert("이름은 3 ~ 10자로 입력해주세요");
		return false;
	}
	
	return true;
}
</script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container px-4 px-lg-5">
	    <!-- LOGO -->
	    <a class="navbar-brand flex-grow-1" href="/"><span>SHOPPING MALL</span></a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
	    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
	    </div>
    </div>
</nav>
<div class="container h-100 w-25">
	<div class="row d-flex justify-content-center align-items-center h-100">
		<form action="/admin/join" method="post" onsubmit="return formCheck();">
			<h4 class="mb-3">판매자 회원 가입</h4>
		  	<div class="col mb-3">
		    	<label for="memberId" class="form-label">아이디</label>
		    	<input type="text" class="form-control" id="adminId" name="adminId">
		  	</div>
		  	<div class="col mb-3">
		    	<label for="memberPw" class="form-label">패스워드</label>
		    	<input type="password" class="form-control" id="adminPw" name="adminPw">
		  	</div>
		  	<div class="col mb-3">
		    	<label for="memberNm" class="form-label">이름</label>
		    	<input type="text" class="form-control" id="adminNm" name="adminNm">
		  	</div>
		  	<div class="col">
		    	<input type="submit" class="btn btn-primary" value="회원 가입">
		  	</div>
		</form>
	</div>
</div>

</body>
</html>