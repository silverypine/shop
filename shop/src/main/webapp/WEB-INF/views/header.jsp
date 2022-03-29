<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container px-4 px-lg-5">
            <!-- LOGO -->
            <a class="navbar-brand flex-grow-1" href="#"><span>SHOPPING MALL</span></a>
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
                      <div class="navbar-nav ml-auto">

                      <a class="dropdown-item" href="addMember.jsp">join</a>
                      <a class="dropdown-item" href="login.jsp">login</a>
              
                      <!-- <a class="dropdown-item" data-toggle="modal" href="#registerModal">마이페이지</a> -->
                      <a class="dropdown-item" href="bookmarkPage.jsp">cart</a>
                      <a class="dropdown-item" href="myWritePage.jsp">mypage</a>
                      <a class="dropdown-item" href="logoutAction.jsp">logout</a>
                      </div>
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
                    <div class="card h-100" id="category" Onclick="location.href='category.jsp'">
                        <!-- Product details-->
                        <div class="card-body px-lg-1">
                            <div class="text-center">
                                <!-- Category name-->
                                <h5 class="fw-bolder">Category1</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col mb-2">
                    <div class="card h-100" id="category" Onclick="location.href='category.jsp'">
                        <!-- Product details-->
                        <div class="card-body px-2">
                            <div class="text-center">
                                <!-- Category name-->
                                <h5 class="fw-bolder">Category2</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col mb-2">
                    <div class="card h-100">
                        <!-- Product details-->
                        <div class="card-body px-2">
                            <div class="text-center">
                                <!-- Category name-->
                                <h5 class="fw-bolder">Category3</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col mb-2">
                    <div class="card h-100">
                        <!-- Product details-->
                        <div class="card-body px-2">
                            <div class="text-center">
                                <!-- Category name-->
                                <h5 class="fw-bolder">Category4</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col mb-2">
                    <div class="card h-100">
                        <!-- Product details-->
                        <div class="card-body px-2">
                            <div class="text-center">
                                <!-- Category name-->
                                <h5 class="fw-bolder">Category5</h5>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="col mb-2">
                    <div class="card h-100">
                        <!-- Product details-->
                        <div class="card-body px-2">
                            <div class="text-center">
                                <!-- Category name-->
                                <h5 class="fw-bolder">Category6</h5>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
            
            
        </div>
    </header>
