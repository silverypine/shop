<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>insertForm</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="/resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">
function formCheck(){
	let productName = $("#productName").val();
	
	if(productName == ""){
		alert("상품명을 입력해주세요");
		return false;
	}
	
	return true;
}
</script>
</head>
<body>

<div class="container w-75">
	<div class="row">
		<div class="col-6 mt-3 mb-3 d-flex justify-content-start">
			<a href="/product/insertForm" style="text-decoration: none;">
				<span style="font-size: xx-large; color: black;">ShoppingMall</span>
			</a>
		</div>
		<div class="col-6 mt-3 mb-3 d-flex justify-content-end">
			<input type="button" class="btn btn-primary" value="로그아웃" onclick="location.href='/admin/loginForm'">
		</div>
	</div>
	
	<div class="row">
		<div class="col-2">
			<div class="accordion" id="accordionPanelsStayOpenExample">
	  			<div class="accordion-item">
	    			<h2 class="accordion-header" id="panelsStayOpen-headingOne">
	      				<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
	        				상품관리
	      				</button>
	    			</h2>
	    			<div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingOne">
	      				<div class="list-group">
	  						<a href="/product/insertForm" class="list-group-item list-group-item-action active" aria-current="true">
	    						상품 등록
	  						</a>
	  						<a href="/product/listForm" class="list-group-item list-group-item-action">상품 목록</a>
						</div>
	    			</div>
				</div>
	  			<div class="accordion-item">
				    <h2 class="accordion-header" id="panelsStayOpen-headingTwo">
				      	<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
				        	주문관리
				     	</button>
				    </h2>
		    		<div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingTwo">
		      			<div class="list-group">
		  					<a href="/order/listForm" class="list-group-item list-group-item-action" aria-current="true">
		    					전체주문목록
		  					</a>
		  					<a href="/order/beforePaymentForm" class="list-group-item list-group-item-action">배송관리</a>
						</div>
		    		</div>
		    	</div>
		  	</div>
		</div>
		
		<div class="col-10">
			<form action="/product/insert" method="post" enctype="multipart/form-data" onsubmit="return formCheck();">
				<h4 class="mb-3">상품 등록</h4>
			  	<div class="col mb-3">
			    	<label for="productName" class="form-label">상품명</label>
			    	<input type="text" class="form-control" id="productName" name="productName">
			  	</div>
			  	<div class="col mb-3">
			    	<label for="productPrice" class="form-label">판매가</label>
			    	<input type="text" class="form-control" id="productPrice" name="productPrice">
			  	</div>
			  	<div class="col mb-3">
			    	<label for="productCode" class="form-label">상품코드</label>
			    	<input type="text" class="form-control" id="productCode" name="productCode">
			  	</div>
			  	<div class="col mb-3">
			    	<label for="productStock" class="form-label">상품재고</label>
			    	<input type="text" class="form-control" id="productStock" name="productStock">
			  	</div>
			  	<div class="col mb-3">
			    	<label for="productContent" class="form-label">상품설명</label>
			    	<input type="text" class="form-control" id="productContent" name="productContent">
			  	</div>
			  	<div class="col mb-3">
			    	<label class="form-label">상품분류</label>
			    	<select class="form-select" name="productCategory">
						  <option value="category1">category1</option>
						  <option value="category2">category2</option>
						  <option value="category3">category3</option>
						  <option value="category4">category4</option>
						  <option value="category5">category5</option>
						  <option value="category6">category6</option>
					</select>
			  	</div>
			  	<div class="col mb-3">
			    	<label for="memberAddress" class="form-label">상품이미지</label>
			    	<br>
			    	<input type="file" name="upload">
			  	</div>
			  	<div class="col">
			    	<input type="submit" class="btn btn-primary" value="상품 등록">
			  	</div>
			</form>
		</div>
	</div>
		
</div>

</body>
</html>