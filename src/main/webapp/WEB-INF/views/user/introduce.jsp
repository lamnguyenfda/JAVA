<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Giới Thiệu</title>
<!-- Favicon -->
<link href="/user/img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap"
	rel="stylesheet">

<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="/user/lib/animate/animate.min.css" rel="stylesheet">
<link href="/user/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="/user/css/contact.css" rel="stylesheet">
<link href="/user/css/style.css" rel="stylesheet">

</head>
<body>
	<%@include file="navbar.jsp"%>
   <div class= "about">
       <h1 style="text-decoration: underline; padding-bottom: 50px; " > GIỚI THIỆU  </h1>
       
       <div class= "about " style= "background-image:url('/user/img/image.jpg');">
              <p style="text : center;font-size : 20px ; padding: 100px ;color:black;; 
        ">BIS STORE Là một sản phẩm dựa trên ý tưởng thương mại điện tử làm 
cầu nối cho các việc buôn bán các mặt hàng về thời trang giửa những 
người bán và khách hàng với mục đích dễ sử dụng tiết kiệm chi phí, giảm
giá thành sản phẩm,tăng sức cạnh trạnh với các cửa hàng khác trên thị trường.Tăng độ tin cậy của người dùng ,là nơi để tìm sản phẩm thời trang phù hợp 
 với yêu cầu cá nhân tập thể...  Thông qua các  thông tin người đăng bán
 sản phẩm . 
              </p>
              </div>
   
  <!--   <img class="img" style="background-image: " src="/user/img/3000.jpeg" style="object-fit: cover;">-->

       </p>
   </div>

	<a href="#" class="btn btn-primary back-to-top"><i
		class="fa fa-angle-double-up"></i></a>
		<%@include file="footer.jsp"%>
</body>
<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<script src="/user/lib/easing/easing.min.js"></script>
<script src="/user/lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Contact Javascript File -->
<script src="/user/mail/jqBootstrapValidation.min.js"></script>
<script src="/user/mail/contact.js"></script>

<!-- Template Javascript -->
<script src="/user/js/main.js"></script>
</html>