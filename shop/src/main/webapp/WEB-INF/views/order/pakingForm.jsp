<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>paking</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="/resources/js/jquery-3.6.0.js"></script>
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
	      				<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
	        				상품관리
	      				</button>
	    			</h2>
	    			<div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingOne">
	      				<div class="list-group">
	  						<a href="/product/insertForm" class="list-group-item list-group-item-action" aria-current="true">
	    						상품 등록
	  						</a>
	  						<a href="/product/listForm" class="list-group-item list-group-item-action">상품 목록</a>
						</div>
	    			</div>
				</div>
	  			<div class="accordion-item">
				    <h2 class="accordion-header" id="panelsStayOpen-headingTwo">
				      	<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
				        	주문관리
				     	</button>
				    </h2>
		    		<div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingTwo">
		      			<div class="list-group">
		  					<a href="/order/listForm" class="list-group-item list-group-item-action" aria-current="true">
		    					전체주문목록
		  					</a>
		  					<a href="/order/beforePaymentForm" class="list-group-item list-group-item-action active">배송관리</a>
						</div>
		    		</div>
		    	</div>
		  	</div>
		</div>
		
		<div class="col-10 mb-5">
			<h4 class="mb-3">배송관리</h4>
			
			<div class="list-group list-group-horizontal mb-5">
			  	<a href="/order/beforePaymentForm" class="list-group-item list-group-item-action" aria-current="true">
				    결제전
					<br>0
			  	</a>
			  	<a href="/order/pakingForm" class="list-group-item list-group-item-action active">
			  		배송준비중
					<br>0
			  	</a>
			  	<a href="/order/onDeliveryForm" class="list-group-item list-group-item-action">
			  		배송중
					<br>0
			  	</a>
			  	<a href="/order/deliveryOverForm" class="list-group-item list-group-item-action">
			  		배송완료
					<br>0
			  	</a>
			</div>
			
			<div class="row">
				<div class="col-2 mb-5">
			    	<select class="form-select" name="productCategory">
						  <option value="">주문코드</option>
					</select>
			  	</div>
			  	<div class="col-9 mb-5">
		    		<input type="text" class="form-control" id="productContent" name="productContent">
			  	</div>
			  	<div class="col-1 mb-5">
			    	<input type="button" class="btn btn-primary" value="검색">
			  	</div>
			  	<div class="col mb-3">
			  		<input type="button" class="btn btn-primary" value="배송중 처리">
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
								<th scope="col">주문일</th>
							    <th scope="col">주문코드</th>
						      	<th scope="col">주문자</th>
						      	<th scope="col">결제금액</th>
						      	<th scope="col">주문상태</th>
						      	<th scope="col">운송장정보</th>
					    	</tr>
					  	</thead>
					  	<tbody>
						    <c:forEach var="list" items="${list}">
								<tr>
									<td><input type="checkbox" value="test" class="form-check-input" name="cbx"></td>
									<td>${list.ORDERINDATE}</td>
									<td><a href="/order/detail?orderCode=${list.ORDERCODE}" style="text-decoration: none;">${list.ORDERCODE}</a></td>
									<td>${list.MEMBERID}</td>
									<td>${list.TOTALPRICE}</td>
									<td>${list.ORDERSTATUS}</td>
									<td>
									<select class="form-select" name="courierCompany">
										<option value="CJ대한통운">CJ대한통운</option>
										<option value="우체국택배">우체국택배</option>
									</select>
									<input type="text" class="form-control">
									<input type="button" class="btn btn-primary" value="송장번호 저장">
						    	</td>
								</tr>
							</c:forEach>
					  	</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	
</div>

</body>
</html>