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
  
  <title>LOGIN</title>
  <style>
  .title{text-align: center;}
  </style>
  <script type="text/javascript">
    function formCheck() {
	let memberId = $("#memberId").val();
	let memberPw = $("#memberPw").val();
	
	if (memberId == "") {
		alert("아이디를 입력해주세요");
		return false;
	}
	
	if (memberPw == "") {
		alert("비밀번호를 입력해주세요");
		return false;
	}
	
	return true;
}
</script>
</head>
<body>

<div class="container">
	<div class="title">
	<h3>LOGIN</h3>
	</div>
		<div class="row mt-5" style="border:1px solid; text-align:center; width:400px; float:none; margin:0 auto;">
			<form action="/member/login" method="post" onsubmit="return formCheck();">
				<div class="mb-4" style="padding-top: 30px">
					<input type="text" name="memberId" placeholder="ID">
				</div>
				<div class="mb-4">
					<input type="password" name="memberPw" placeholder="PW">
				</div>
				<div class="mb-4">
					<input type="submit" class="btn btn-primary btn-sm" value="로그인">
				</div>
			</form>
		</div>
</div>
</body>
</html>