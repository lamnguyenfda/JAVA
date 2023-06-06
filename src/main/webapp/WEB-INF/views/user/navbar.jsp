<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Topbar Start -->
	<div class="container-fluid">
		<div class="row bg-secondary py-1 px-xl-5">
			<div class="row align-items-center bg-light py-3 px-xl-5 d-none d-lg-flex">
				<div class="col-lg-4" style="margin-left: 562px;margin-top: -10px;margin-bottom: -41px;">
					<a href="/index" class="text-decoration-none">
						<span class="h1 text-uppercase text-primary bg-dark px-2">Bis</span>
						<a href="/index" class="text-decoration-none">
							<span class="h1 text-uppercase text-dark bg-primary px-2 ml-n1">Store</span>
						</a>
					</a>
				</div>


			</div>
			<div class="col-lg-6 text-center text-lg-right" style="margin-left: 707px;">

				<div class="d-inline-flex align-items-center">

					<div class="btn-group">
						<button type="button" class="btn btn-sm btn-light dropdown-toggle"
							data-toggle="dropdown" style="background-color: #ffc800;">Ngôn ngữ</button>
						<div class="dropdown-menu dropdown-menu-right">
							<button class="dropdown-item" type="button">Việt Nam</button>
							<button class="dropdown-item" type="button">English</button>
						</div>
					</div>
					<!-- <div class="btn-group mx-2">
                        <button type="button" class="btn btn-sm btn-light dropdown-toggle" data-toggle="dropdown">VI</button>
                        <div class="dropdown-menu dropdown-menu-right">
                            <button class="dropdown-item" type="button">EN</button>
                        </div>
                    </div> -->
				</div>
				<div class="d-inline-flex align-items-center d-block d-lg-none">
					<a href="" class="btn px-0 ml-2"> <i
						class="fas fa-heart text-dark"></i> <span
						class="badge text-dark border border-dark rounded-circle"
						style="padding-bottom: 2px;">0</span>
					</a> <a href="/shop/cart" class="btn px-0 ml-2"> <i
						class="fas fa-shopping-cart text-dark"></i> <span
						class="badge text-dark border border-dark rounded-circle"
						style="padding-bottom: 2px;">0</span>
					</a>

				</div>

			</div>
		</div>

	</div>
	<!-- Topbar End -->


	<!-- Navbar Start -->
	<div class="container-fluid bg-dark mb-30">
		<div class="row px-xl-5">
			<div class="col-lg-3 d-none d-lg-block" style="margin-top: 7px;">

			</div>
			<div class="col-lg-9" style="margin-left: -34px;">
				<nav class="navbar navbar-expand-lg bg-dark navbar-dark py-3 py-lg-0 px-0">
					<button type="button" class="navbar-toggler" data-toggle="collapse"
						data-target="#navbarCollapse">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-between"
						id="navbarCollapse">
						<div class="navbar-nav mr-auto py-0" style="margin-left: -280px;">
							<a href="/index" class="nav-item nav-link active">TRANG CHỦ</a>
							<a href="/introduce" class="nav-item nav-link" style="margin-left: 13px;">GIỚI THIỆU</a> <a
								href="/contact" class="nav-item nav-link" style="margin-left: 13px;">LIÊN HỆ</a>

							<security:authorize access="!isAuthenticated()">
								<div class="nav-item dropdown" style="margin-left: 782px;">
									<a href="#" class="nav-link dropdown-toggle"
										data-toggle="dropdown">TÀI KHOẢN<i
										class="fa fa-angle-down mt-1"></i></a>
									<div class="dropdown-menu bg-primary rounded-0 border-0 m-0">
										<a href="/login" class="dropdown-item">ĐĂNG NHẬP</a> <a
											href="/register" class="dropdown-item">ĐĂNG KÝ</a>
									</div>
								</div>
							</security:authorize>
							<security:authorize access="isAuthenticated()">
								<div class="nav-item dropdown" style="margin-left: 781px;">
									<a href="#" class="nav-link dropdown-toggle"
										data-toggle="dropdown">TÀI KHOẢN<i
										class="fa fa-angle-down mt-1"></i></a>
									<div class="dropdown-menu bg-primary rounded-0 border-0 m-0">
										<a href="/shop/profile/order" class="dropdown-item">THÔNG TIN TÀI KHOẢN</a> <a
											href="/logout" class="dropdown-item">ĐĂNG XUẤT</a>
									</div>
								</div>
							</security:authorize>

							<security:authorize access="hasRole('ROLE_ADMIN')">
 								<a href="/admin/index" class="nav-item nav-link" style="margin-left: -197px;">QUẢN LÝ</a>
							</security:authorize>
						</div>

						<div class="navbar-nav ml-auto py-0 d-none d-lg-block">
							<a href="/shop/profile/favorite" class="btn px-0"> <i
								class="fas fa-heart text-primary"></i> <span
								class="badge text-secondary border border-secondary rounded-circle"
								style="padding-bottom: 2px;">${sessionScope.countFavorite} ${sessionScope.countFavorite==null?'0':''}</span>
							</a> <a href="/shop/cart" class="btn px-0 ml-3"> <i
								class="fas fa-shopping-cart text-primary"></i> <span
								class="badge text-secondary border border-secondary rounded-circle"
								style="padding-bottom: 2px;">${sessionScope.countProduct} ${sessionScope.countProduct==null?'0':''}</span>
							</a>
						</div>
					</div>
				</nav>
			</div>
			<div class="col-lg-4 col-6 text-left" style="margin-top: -52px;
    margin-left: 497px;">
				<form action="">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Tìm kiếm">
						<div class="input-group-append">
							<button class="input-group-text bg-transparent text-primary">
								<i class="fa fa-search"></i>
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- Navbar End -->
</body>
</html>