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
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <style>
        a:link{color: black; text-decoration: none;}
        a:hover{color: red; text-decoration: none;}
        a:visited { color: black; text-decoration: none;}
        .table,td,th{border-color: black;border-style: solid;border-width: 1px;text-align: center;justify-content: center;}
        .tg{width: 1200px;height: 200px;}
        .tg-0{text-align: center;}
        .tg-1{width: 200px; height: 100px;}
        .memberinfo{text-align: right; margin-right: 20px; margin-bottom: 10px;}
    </style>
    <title>payment</title>
  </head>
  <body>
  <jsp:include page="../header.jsp"></jsp:include>
  <!-- Section-->
    <!-- Section-->
    <section>
        <header class="bg-light py-3">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-4 row-cols-2 row-cols-md-6  justify-content-center">
                    <table class="tg">
                        <thead>
                          <tr>
                            <th class="tg-0" colspan="4">payment</th>
                          </tr>
                        </thead>
                        <tbody>
                        <c:forEach>
                          <tr>
                            <td class="tg-1">image list</td>
                            <td class="tg-0">product name list</td>
                            <td class="tg-0">purchase quantity list</td>
                            <td class="tg-0">product price list</td>
                          </tr>
                         </c:forEach>
                          <tr>
                            <td class="tg-1">image</td>
                            <td class="tg-0">product name</td>
                            <td class="tg-0">purchase quantity</td>
                            <td class="tg-0">product price</td>
                          </tr>
                          <tr>
                            <td class="tg-1">image</td>
                            <td class="tg-0">product name</td>
                            <td class="tg-0">purchase quantity</td>
                            <td class="tg-0">product price</td>
                          </tr>
                          <tr>
                            <td class="tg-1">image</td>
                            <td class="tg-0">product name</td>
                            <td class="tg-0">purchase quantity</td>
                            <td class="tg-0">product price</td>
                          </tr>
                          <tr>
                            <td class="tg-1">image</td>
                            <td class="tg-0">product name</td>
                            <td class="tg-0">purchase quantity</td>
                            <td class="tg-0">product price</td>
                          </tr>
                    </tbody>
                    </table>
                </div>
                <div class="member">
                    <p>member name<span>&nbsp&nbsp&nbsp&nbsp&nbsp홍길동</span></p>
                    <p>member phone<span>&nbsp&nbsp&nbsp&nbsp010123456789</span></p>
                    <p>member address<span>&nbsp&nbspSEOUL</span></p>
                </div>
                <div class="total">
                    <p>total price<span>&nbsp&nbsp얼마입니다</span></p>
                </div>
                <div class="payment">
                    <div class="d-grid gap-2 col-4 mx-auto">
                        <button class="btn btn-outline-dark" type="submit" onclick="location='payment.jsp'">PAYMENT</button>
                    </div>
                </div>
            </div>
        </header>
    </section>
    
    <jsp:include page="../footer.jsp"></jsp:include>
  <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>

  </body>
</html>