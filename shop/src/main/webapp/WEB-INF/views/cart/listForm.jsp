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
	
    <title>cart</title>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <style>
        a:link{color: black; text-decoration: none;}
        a:hover{color: red; text-decoration: none;}
        a:visited { color: black; text-decoration: none;}
        .table,td,th{border-color: black;border-style: solid;border-width: 1px;text-align: center;justify-content: center;}
        .tg{width: 1200px;height: 200px;}
        .tg-0{text-align: center;}
        .tg-1{width: 200px; height: 100px;}
        .delete{text-align: right; margin-right: 20px; margin-bottom: 10px;}
        .total{text-align: right; margin-top: 10px; margin-right: 10%; font-weight: bold;}
        .order{text-align: center; margin: 25px;}
    </style>
<script type="text/javascript">

//
let cartCodeArr = [];
let cartQuantityArr = [];
let productCodeArr = [];

//
$(function () {
	$("#checkAll").click(function() {
		if ($("#checkAll").is(":checked")) {
			$("input[name=cbx]").prop("checked", true);
			$.each($("input[name=cbx]"), function (index) {
				cartCodeArr.push($(this).val());
				console.log(cartCodeArr);
			});
			$.each($("input[name=cartQuantity]"), function (index) {
				cartQuantityArr.push($(this).val());
				console.log(cartQuantityArr);
			});
			$.each($("input[name=productCode]"), function (index) {
				productCodeArr.push($(this).val());
				console.log(productCodeArr);
			});
		}
		else {
			$("input[name=cbx]").prop("checked", false) 
			$.each($("input[name=cbx]"), function (index) {
				cartCodeArr.pop($(this).val());
				console.log(cartCodeArr);
			});
			$.each($("input[name=cartQuantity]"), function (index) {
				cartQuantityArr.pop($(this).val());
				console.log(cartQuantityArr);
			});
			$.each($("input[name=productCode]"), function (index) {
				productCodeArr.pop($(this).val());
				console.log(productCodeArr);
			});
		}
	});
});

//
$(function () {
	$.each($("input[name=cbx]"), function (i) {
		$(this).on("click", function () {
			let index = cartCodeArr.indexOf($(this).val());
			let index2 = cartQuantityArr.indexOf($(this).next().val());
			let index3 = productCodeArr.indexOf($(this).next().next().val());
			if (index == -1) {
				cartCodeArr.push($(this).val());
				console.log(cartCodeArr);
			} else {
				cartCodeArr.splice(index, 1);
				console.log(cartCodeArr);
			}
			if (index2 == -1) {
				cartQuantityArr.push($(this).next().val());
				console.log(cartQuantityArr);
			} else {
				cartQuantityArr.splice(index, 1);
				console.log(cartQuantityArr);
			}
			if (index3 == -1) {
				productCodeArr.push($(this).next().next().val());
				console.log(productCodeArr);
			} else {
				productCodeArr.splice(index, 1);
				console.log(productCodeArr);
			}
		});
	});
});

//
$(function () {
	$("#deleteBtn").on("click", function () {
		$.ajax({
			url: "/cart/delete"
			,type: "get"
			,contentType: "application/json; charset=utf-8"
			,data: {
				"cartCodeList" : cartCodeArr
			}
			,dataType : "json"
			,success : function (data) {
				if (data) {
					alert("삭제 성공");
					window.location.href = "/cart/listForm";
				} else {
					alert("삭제 실패");
					window.location.href = "/cart/listForm";
				}
			}
			,error : function (e) {
				console.log(e);
			}
		});
	});
});

//
$(function () {
	$("#paymentBtn").on("click", function () {
		$.ajax({
			url: "/cart/payment"
			,type: "get"
			,contentType: "application/json; charset=utf-8"
			,data: {
				"cartQuantityList" : cartQuantityArr
				,"productCodeList" : productCodeArr
			}
			,dataType : "json"
			,success : function (data) {
				if (data) {
					alert("결제 성공");
					window.location.href = "/member/mypageForm";
				} else {
					alert("결제 실패");
					window.location.href = "/cart/listForm";
				}
			}
			,error : function (e) {
				console.log(e);
			}
		});
	});
});

</script>
  </head>
  <body>
  <!-- header -->
  <jsp:include page="../header.jsp"></jsp:include>
  <!-- Section-->
  <section>
      <header class="bg-light py-3">
          <div class="container px-4 px-lg-5">
              <div class="delete">
                  <button type="button" class="btn btn-outline-danger btn-sm" id="deleteBtn">삭제</button>
              </div>
              <div class="row gx-4 gx-lg-4 row-cols-2 row-cols-md-6  justify-content-center">
                  <table class="tg">
                      <thead>
                        <tr>
                          <th class="tg-0" colspan="5">장바구니 목록</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <th class="tg-0">
                          <input class="form-check-input" type="checkbox" id="checkAll">
                          </th>
                          <th class="tg-1">이미지</th>
                          <th class="tg-0">상품명</th>
                          <th class="tg-0">구매수량</th>
                          <th class="tg-0">결제액</th>
                        </tr>
						<c:forEach var="cp" items="${cartProductList}">
							<tr>
								<td>
									<input type="checkbox" value="${cp.CARTCODE }" class="form-check-input" name="cbx">
									<input type="hidden" value="${cp.CARTQUANTITY}" name="cartQuantity">
									<input type="hidden" value="${cp.PRODUCTCODE}" name="productCode">
								</td>
								<td>
									<img alt="${cp.PRODUCTORIGINALFILENAME}" src="/product/loadImage?fileName=${cp.PRODUCTSAVEDFILENAME}" style="width: 50px; height: 50px;">
								</td>
								<td>${cp.PRODUCTNAME}</td>
								<td>
									
									${cp.CARTQUANTITY}
								</td>
								<td>${cp.PRODUCTPRICE}</td>
							</tr>
						</c:forEach>
                  </tbody>
                  </table>
              </div>
              <div class="total">
                  <p>전체 결제 금액:<span>${sum }원</span></p>
              </div>
              <div class="order">
                  <div class="d-grid gap-2 col-4 mx-auto">
                      <input type="button" class="btn btn-outline-dark" value="결제" id="paymentBtn">
                  </div>
              </div>
          </div>
      </header>
  </section>
  <!-- footer -->
  
  <jsp:include page="../footer.jsp"></jsp:include>

  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
  <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script> -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>