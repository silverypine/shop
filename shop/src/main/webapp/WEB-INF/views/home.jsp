<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	
    <title>SHOPPING MALL</title>
    <style>
        a:link{color: black; text-decoration: none;}
        a:hover{color: red;}
        a:visited { color: black; text-decoration: none;}
        #category:hover{color: red;}
        #product:hover {color: red;}
    </style>
  </head>
  <body>
  
    <!-- header -->
    <jsp:include page="header.jsp"></jsp:include>
    <!-- Section-->
    <section class="py-3">
        <div class="container px-4 px-lg-5 mt-5">
            <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
	            <!-- 각 상품카드  -->
	             <!-- 카드클릭시 상세페이지 -->
				<c:forEach var="p" items="${list}">
					<div class="col mb-5">
		                <div class="card h-100" id="product" Onclick="location.href='/product/infoForm?productCode=${p.productCode}'">
							<!-- Product image-->
							<figure class="image is-450x300"><img class="card-img-top" alt="${p.productOriginalfilename}" src="/product/loadImage?fileName=${p.productSavedfilename }"></figure>
							<!-- Product details-->
							<div class="card-body p-4">
							    <div class="text-center">
							        <!-- Product name-->
							        <h5 class="fw-bolder">${p.productName }</h5>
							        <!-- Product price-->
							       <!--  <span class="text-muted text-decoration-line-through">$20.00</span> -->
							        ${p.productPrice }
					            </div>
					        </div>
					    </div>
					</div>
				</c:forEach>
			</div>
		</div>
    </section>
    <!-- Footer-->
    <jsp:include page="footer.jsp"></jsp:include>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
