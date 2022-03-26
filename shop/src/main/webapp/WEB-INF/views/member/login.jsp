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
  <title>LOGIN</title>
  <style>
  .title{text-align: center;}
  </style>
</head>
<body>

<div class="container">
	<h1>LOGO</h1>
	
	<div class="title">
	<h3>LOGIN</h3>
	</div>
	
	<div class="row mt-5" style="border:1px solid; text-align:center; width:400px; float:none; margin:0 auto;">
		<div class="mb-4" style="padding-top: 30px">
			<input type="text" name="id" placeholder="ID">
		</div>
		
		<div class="mb-4">
			<input type="password" name="pw" placeholder="PW">
		</div>
		
		<div class="mb-4">
			<input type="checkbox" class="btn-check" id="btn-check-outlined" autocomplete="off">
			<label class="btn btn-outline-primary" for="btn-check-outlined">LOGIN</label><br>
		</div>
	</div>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</div>

</body>
</html>