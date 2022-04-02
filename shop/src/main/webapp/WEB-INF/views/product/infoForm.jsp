<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="height: 100%;">
<head>
<meta charset="UTF-8">
<title>productInfo</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- 스타일 -->
<style>
.bigPictureWrapper{
	position: absolute;
	display: none;
	justify-content: center;
	align-items: center;
	top: 0%;
	width: 100%;
	height: 100%;
	background-color: gray;
	z-index: 100;
	background:rgba(255, 255, 255, 0.5);
}

.bigPicture{
	position: relative;
	display: flex;
	justify-content: center;
	align-items: center;
}

.bigPicture img {
	width: 600px;
}
</style>
</head>
<body style="height: 100%;">
<jsp:include page="../header.jsp"></jsp:include>
	<div class="container m-5 pt-5" style="text-align:center;">
		<div class="d-flex justify-content-center">
		<input type="hidden" id="productCode" value="${product.productCode }">
			<!-- 상품이미지 -->
			<div class="flex-shrink-0">
				<img class="productImg" src="/product/loadImage?fileName=${product.productSavedfilename }" alt="${product.productOriginalfilename }" />
			</div>
			<!-- 상품설명 -->
			<div class="d-flex align-content-center flex-wrap">
				<!-- 폼태그 -->
				<form class="d-flex flex-column bd-highlight" action="/cart/listForm">
					<div class="d-flex justify-content-around mb-3">
						<span class="bd-highlight">상품명</span>
						<input type="hidden" id="productName" name="productName">${product.productName }
					</div>
					<div class="d-flex justify-content-around mb-3">
						<span class="bd-highlight">판매가</span>
						<input type="hidden" id="productPrice" name="productPrice">${product.productPrice }
					</div>
					<div class="d-flex justify-content-around mb-3">
						<span class="bd-highlight">수량</span>
						<input type="number" id="productStoke" name="productStoke" style="width:50px;">
					</div>
						<div class="d-flex justify-content-around mb-3">
						<span class="bd-highlight">상품설명</span>
						<input type="hidden" id="productStock" name="productStock">${product.productStock }
					</div>
					<div class="d-flex justify-content-around mb-3 px-3">
				    	<input type="submit" class="btn btn-primary mx-1" value="장바구니 담기">
				    	<input type="button" class="btn btn-primary" value="구매하기" onclick="location.href='/order/listForm'">
				  	</div>
				</form>
			</div>
		</div>
	</div>
	
	
	<!-- 상품설명 -->
	<div class="bigPictureWrapper">
		<div class="bigPicture">
		</div>
	</div>
	<script>
	//상품이미지 클릭 시 이벤트 처리
	$('.productImg').on("click", function(e){
		
		var libObj = $(this);
		
		showImg();
	});
	
	//이미지 보여주기
	function showImg(){
		$('.bigPictureWrapper').css("display", "flex").show();
		
		$('.bigPicture')
		.html("<img src='/resources/images/450x300.jpg'>")
		.animate({width:'100%', height:'100%'}, 1000);
	}
	
	//이미지 닫기
	$('.bigPictureWrapper').on("click", function(e){
		$('.bigPicture').animate({width:'0%', height:'0%'}, 1000);
		setTimeout(function(){
			$('.bigPictureWrapper').hide();
		}, 1000);
	});
	</script>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>