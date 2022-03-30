<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  
  <title>ADMIN LOGIN</title>
  <style>
  html, body{
  	height:100%;
  }
  </style>
  <script type="text/javascript">
	function formCheck() {
		let adminId = $("#adminId").val();
		let adminPw = $("#adminPw").val();
		
		if (adminId == "") {
			alert("아이디를 입력해주세요");
			return false;
		}
		
		if (adminPw == "") {
			alert("비밀번호를 입력해주세요");
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
		<form action="/admin/login" method="post" onsubmit="return formCheck();">
			<h4 class="mb-3">판매자 로그인</h4>
			<div class="col mb-3">
				<input type="text" name="adminId" placeholder="아이디">
			</div>
			<div class="col mb-3">
				<input type="password" name="adminPw" placeholder="비밀번호">
			</div>
			<div class="col">
				<input type="button" class="btn btn-outline-dark btn-sm" value="판매자 회원가입" onclick="location.href='/admin/joinForm'">
		    	<input type="submit" class="btn btn-primary btn-sm" value="로그인">
		  	</div>
		</form>
	</div>
</div>
</body>
</html>