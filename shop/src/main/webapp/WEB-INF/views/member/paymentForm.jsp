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
    <script type="text/javascript">
    	$(function () {
    		let tp = 0;
    		$.each($(".tp"), function (index) {
    			tp += parseInt($(this).val());
			});
    		$(".to").html(tp + "원");
		});
    </script>
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
                          <tr>
                            <th class="tg-1">이미지</th>
                            <th class="tg-0">상품명</th>
                            <th class="tg-0">구매수량</th>
                            <th class="tg-0">결제금액</th>
                          </tr>
                          <c:forEach var="list" items="${list}">
								<tr>
									<td>
										<img src="/product/loadImage?fileName=${list.PRODUCTSAVEDFILENAME}" style="width: 50px; height: 50px;">
									</td>
									<td>${list.PRODUCTNAME}</td>
									<td>${list.ORDERDETAILQUANTITY}</td>
									<td>
										<input type="hidden" value="${list.ORDERDETAILQUANTITY * list.PRODUCTPRICE}" class="tp">
										${list.ORDERDETAILQUANTITY * list.PRODUCTPRICE}
									</td>
								</tr>
							</c:forEach>
                    </tbody>
                    </table>
                </div>
                <div class="total">
                    <p>결제 금액: <span class="to">0원</span></p>
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