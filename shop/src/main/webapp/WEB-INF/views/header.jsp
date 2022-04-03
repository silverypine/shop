<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>

</head>
<body>
	<%-- <c:if test="${not empty sessionScope.loginId}">
		<h1>${sessionScope.loginId }님 환영합니다!</h1>
	</c:if> --%>
<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container px-4 px-lg-5">
            <!-- LOGO -->
            <a class="navbar-brand flex-grow-1" href="/"><span>SHOPPING MALL</span></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <!-- SEARCH -->
            <div class="container-fluid">
                <form class="d-flex">
                  <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                  <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
              </div>
            <!-- LOGIN,JOIN / POCKET,MYPAGE,LOGOUT -->
				
                <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-2">
                	<c:choose>
                	
					<c:when test="${empty sessionScope.loginId}">	
	                    <a class="dropdown-item" href="/member/joinForm">join</a>
	                    <a class="dropdown-item" href="/member/loginForm">login</a>
              		</c:when>
              		
					<c:otherwise>
	                    <a class="dropdown-item" href="/cart/listForm">cart</a>
	                    <a class="dropdown-item" href="/member/mypageForm">mypage</a>
	                    <a class="dropdown-item" href="/member/logout">logout</a>
	                </c:otherwise>
	                
					</c:choose>
                </ul>
                <!-- CART PICTRUE -->
                <!-- <form class="d-flex">
                    <button class="btn btn-outline-dark" type="submit">
                        <i class="bi-cart-fill me-1"></i>
                        Cart
                        <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                    </button>
                </form> -->
            </div> 
        </div>    
    </nav>    
    <!-- Category-->
    <header class="bg-dark py-3">
        <div class="container px-4 px-lg-5">
            <div class="row gx-4 gx-lg-4 row-cols-2 row-cols-md-6  justify-content-center">
                <div class="col mb-2">
                    <div class="card h-100" id="categor1" onclick="location.href='/category1'">
                        <!-- Product details-->
                        <div class="card-body px-lg-1">
                            <div class="text-center">
                                <!-- Category name-->
                                <h5 class="fw-bolder">아우터</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col mb-2">
                    <div class="card h-100" id="category2" onclick="location.href='/category2'">
                        <!-- Product details-->
                        <div class="card-body px-2">
                            <div class="text-center">
                                <!-- Category name-->
                                <h5 class="fw-bolder">상의</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col mb-2">
                    <div class="card h-100" id="category3" onclick="location.href='/category3'">
                        <!-- Product details-->
                        <div class="card-body px-2">
                            <div class="text-center">
                                <!-- Category name-->
                                <h5 class="fw-bolder">하의</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col mb-2">
                    <div class="card h-100" id="category4" onclick="location.href='/category4'">
                        <!-- Product details-->
                        <div class="card-body px-2">
                            <div class="text-center">
                                <!-- Category name-->
                                <h5 class="fw-bolder">모자</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col mb-2">
                    <div class="card h-100" id="category5" onclick="location.href='/category5'">
                        <!-- Product details-->
                        <div class="card-body px-2">
                            <div class="text-center">
                                <!-- Category name-->
                                <h5 class="fw-bolder">신발</h5>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="col mb-2">
                    <div class="card h-100" id="category6" onclick="location.href='/category6'">
                        <!-- Product details-->
                        <div class="card-body px-2">
                            <div class="text-center">
                                <!-- Category name-->
                                <h5 class="fw-bolder">기타</h5>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
            
            
        </div>
    </header>
</body>
</html>
