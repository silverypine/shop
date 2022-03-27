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
    </style>
  </head>
  <body>
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
                <a href="category1.jsp">
                    <div class="card h-100">
                        <!-- Product details-->
                        <div class="card-body px-lg-1">
                            <div class="text-center">
                                <!-- Category name-->
                                <h5 class="fw-bolder">Category1</h5>
                            </div>
                        </div>
                    </div>
                </a>
                </div>
                <div class="col mb-2">
                    <div class="card h-100">
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
    <!-- Section-->
    <section class="py-3">
        <div class="container px-4 px-lg-5 mt-5">
            <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Product image-->
                        <a href="FancyProductPage.jsp"><img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"></a>
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- Product name-->
                                <h5 class="fw-bolder">Fancy Product</h5>
                                <!-- Product price-->
                                $40.00 - $80.00
                            </div>
                        </div>
                        <!-- <div class="view" onclick="location='ad.jsp'" style="text-align: center;">
                            <button>보러가기</button>
                        </div> -->
                    </div>
                </div>
                <div class="col mb-5">
                    <div class="card h-100">
                        <a href="FancyProductPage2.jsp">
                        <!-- Product image-->
                        <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg">
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- Product name-->
                                <h5 class="fw-bolder">Special Item</h5>
                                <!-- Product price-->
                                <span class="text-muted text-decoration-line-through">$20.00</span>
                                $18.00
                            </div>
                        </div>
                        </a>
                    </div>
                </div>
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Product image-->
                        <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- Product name-->
                                <h5 class="fw-bolder">Sale Item</h5>
                                <!-- Product price-->
                                <span class="text-muted text-decoration-line-through">$50.00</span>
                                $25.00
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Product image-->
                        <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- Product name-->
                                <h5 class="fw-bolder">Popular Item</h5>
                               
                                <!-- Product price-->
                                $40.00
                            </div>
                        </div>
                        
                    </div>
                </div>
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Product image-->
                        <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- Product name-->
                                <h5 class="fw-bolder">Sale Item</h5>
                                <!-- Product price-->
                                <span class="text-muted text-decoration-line-through">$50.00</span>
                                $25.00
                            </div>
                        </div>
                        
                    </div>
                </div>
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Product image-->
                        <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- Product name-->
                                <h5 class="fw-bolder">Sale Item</h5>
                                <!-- Product price-->
                                <span class="text-muted text-decoration-line-through">$50.00</span>
                                $25.00
                            </div>
                        </div>
                        
                    </div>
                </div>
                
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Product image-->
                        <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- Product name-->
                                <h5 class="fw-bolder">Fancy Product</h5>
                                <!-- Product price-->
                                $120.00 - $280.00
                            </div>
                        </div>
                        
                    </div>
                </div>
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Sale badge-->
                        <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                        <!-- Product image-->
                        <img class="card-img-top" src="https://dt40dm21pj8em.cloudfront.net/uploads/froala/file/4731/%EC%9D%98%EB%A5%98%EB%B2%A4%EB%8D%94%201.jpg" alt="..." />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- Product name-->
                                <h5 class="fw-bolder">Special Item</h5>
                                
                                <!-- Product price-->
                                <span class="text-muted text-decoration-line-through">$20.00</span>
                                $18.00
                            </div>
                        </div>
                        
                    </div>
                </div>
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Product image-->
                        <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- Product name-->
                                <h5 class="fw-bolder">Popular Item</h5>                                
                                <!-- Product price-->
                                $40.00
                            </div>
                        </div>                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Footer-->
    <footer class="py-5 bg-dark">
        <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2022</p></div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script> -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
