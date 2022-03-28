<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>listForm</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="/resources/js/jquery-3.6.0.js"></script>
</head>
<body>

<div class="container w-75">
	<div class="row">
		<div class="col-6 mt-3 mb-3 d-flex justify-content-start">
			<h1>ShoppingMall</h1>
		</div>
		<div class="col-6 mt-3 mb-3 d-flex justify-content-end">
			<input type="button" class="btn btn-primary" value="로그아웃">
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
	  						<a href="#" class="list-group-item list-group-item-action" aria-current="true">
	    						상품 등록
	  						</a>
	  						<a href="#" class="list-group-item list-group-item-action active">상품 목록</a>
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
		  					<a href="#" class="list-group-item list-group-item-action" aria-current="true">
		    					전체주문목록
		  					</a>
		  					<a href="#" class="list-group-item list-group-item-action">배송관리</a>
						</div>
		    		</div>
		    	</div>
		  	</div>
		</div>
		
		<div class="col-10 mb-3">
			<h4 class="mb-3">상품 목록</h4>
			<div class="row">
				<div class="col-2 mb-5">
			    	<select class="form-select" name="productCategory">
						  <option value="상품명">상품명</option>
					</select>
			  	</div>
			  	<div class="col-9 mb-5">
		    		<input type="text" class="form-control" id="productContent" name="productContent">
			  	</div>
			  	<div class="col-1 mb-5">
			    	<input type="button" class="btn btn-primary" value="검색">
			  	</div>
			  	<div class="col mb-3">
			  		<input type="button" class="btn btn-primary" value="삭제">
			  	</div>
			</div>
			
			<div class="row">
				<div class="col">
					<table class="table table-striped table-hover table-bordered">
						<thead class="table-light">
					    	<tr>
								<th scope="col">
									<input class="form-check-input" type="checkbox">
								</th>
							    <th scope="col">상품명</th>
							    <th scope="col">상품코드</th>
						      	<th scope="col">판매가</th>
						      	<th scope="col">상품분류</th>
						      	<th scope="col">상품등록일</th>
					    	</tr>
					  	</thead>
					  	<tbody>
						    <tr>
						    	<th scope="row">
						    		<input class="form-check-input" type="checkbox">
						    	</th>
						    	<td>
						    		<img src="/resources/images/450x300.jpg" style="width: 50px; height: 50px;">
						    		상품명
					    		</td>
						    	<td>상품코드</td>
						    	<td>판매가</td>
						    	<td>상품분류</td>
						    	<td>상품등록일</td>
						    </tr>
						    <tr>
						    	<th scope="row">
						    		<input class="form-check-input" type="checkbox">
						    	</th>
						    	<td>
						    		<img src="/resources/images/450x300.jpg" style="width: 50px; height: 50px;">
						    		상품명
					    		</td>
						    	<td>상품코드</td>
						    	<td>판매가</td>
						    	<td>상품분류</td>
						    	<td>상품등록일</td>
						    </tr>
					    	<tr>
						    	<th scope="row">
						    		<input class="form-check-input" type="checkbox">
						    	</th>
						    	<td>
						    		<img src="/resources/images/450x300.jpg" style="width: 50px; height: 50px;">
						    		상품명
					    		</td>
						    	<td>상품코드</td>
						    	<td>판매가</td>
						    	<td>상품분류</td>
						    	<td>상품등록일</td>
						    </tr>
					  	</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	
</div>

</body>
</html>