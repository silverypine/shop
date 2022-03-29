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
    <!-- check script -->
    <script type="text/javascript">
        $(document).ready(function() {
			$("#cbx_chkAll").click(function() {
				if($("#cbx_chkAll").is(":checked")) $("input[name=chk]").prop("checked", true);
				else $("input[name=chk]").prop("checked", false);
			});
			
			$("input[name=chk]").click(function() {
				var total = $("input[name=chk]").length;
				var checked = $("input[name=chk]:checked").length;
				
				if(total != checked) $("#cbx_chkAll").prop("checked", false);
				else $("#cbx_chkAll").prop("checked", true); 
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
                  <button type="button" class="btn btn-outline-danger btn-sm">DELETE</button>
              </div>
              <div class="row gx-4 gx-lg-4 row-cols-2 row-cols-md-6  justify-content-center">
                  <table class="tg">
                      <thead>
                        <tr>
                          <th class="tg-0" colspan="5">cart</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td class="tg-0">
                          <input class="form-check-input" type="checkbox" id="cbx_chkAll">
                          </td>
                          <td class="tg-1">image list</td>
                          <td class="tg-0">product name list</td>
                          <td class="tg-0">purchase quantity list</td>
                          <td class="tg-0">product price list</td>
                        </tr>
                        <tr>
                          <td class="tg-0"><input class="form-check-input" type="checkbox" name="chk"></td>
                          <td class="tg-1">image</td>
                          <td class="tg-0">product name</td>
                          <td class="tg-0">purchase quantity</td>
                          <td class="tg-0">product price</td>
                        </tr>
                        <tr>
                          <td class="tg-0"><input class="form-check-input" type="checkbox" name="chk"></td>
                          <td class="tg-1">image</td>
                          <td class="tg-0">product name</td>
                          <td class="tg-0">purchase quantity</td>
                          <td class="tg-0">product price</td>
                        </tr>
                        <tr>
                          <td class="tg-0"><input class="form-check-input" type="checkbox" name="chk"></td>
                          <td class="tg-1">image</td>
                          <td class="tg-0">product name</td>
                          <td class="tg-0">purchase quantity</td>
                          <td class="tg-0">product price</td>
                        </tr>
                        <tr>
                          <td class="tg-0"><input class="form-check-input" type="checkbox" name="chk"></td>
                          <td class="tg-1">image</td>
                          <td class="tg-0">product name</td>
                          <td class="tg-0">purchase quantity</td>
                          <td class="tg-0">product price</td>
                        </tr>
                        <tr>
                          <td class="tg-0"><input class="form-check-input" type="checkbox" name="chk"></td>
                          <td class="tg-1">image</td>
                          <td class="tg-0">product name</td>
                          <td class="tg-0">purchase quantity</td>
                          <td class="tg-0">product price</td>
                        </tr>
                        <tr>
                          <td class="tg-0"><input class="form-check-input" type="checkbox" name="chk"></td>
                          <td class="tg-1">image</td>
                          <td class="tg-0">product name</td>
                          <td class="tg-0">purchase quantity</td>
                          <td class="tg-0">product price</td>
                        </tr>
                  </tbody>
                  </table>
              </div>
              <div class="total">
                  <p>total price<span>&nbsp&nbsp얼마입니다</span></p>
              </div>
              <div class="order">
                  <div class="d-grid gap-2 col-4 mx-auto">
                      <button class="btn btn-outline-dark" type="submit" onclick="location='aa.jsp'">ORDER</button>
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