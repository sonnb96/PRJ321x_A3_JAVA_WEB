<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>   
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet">

<link rel="stylesheet" href="${pageContext.request.contextPath}/source/style/cssHeader/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/source/style/cssgeneric/style.css">

  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>


<title>Insert title here</title>
<style type="text/css">
	
</style>


</head>
<body>
	

<div style="background: #e7bab5">	
	<div class="container-fluid">
        <div class="row bg-secondary py-2 px-xl-5">
            <div class="col-lg-6 d-none d-lg-block">
                <div class="d-inline-flex align-items-center">
                    <a class="text-dark" href="">FAQs</a>
                    <span class="text-muted px-2">|</span>
                    <a class="text-dark" href="">Help</a>
                    <span class="text-muted px-2">|</span>
                    <a class="text-dark" href="">Support</a>
                </div>
            </div>
            <div class="col-lg-6 text-center text-lg-right">
                <div class="d-inline-flex align-items-center">
                    <a class="text-dark px-2" href="">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a class="text-dark px-2" href="">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a class="text-dark px-2" href="">
                        <i class="fab fa-linkedin-in"></i>
                    </a>
                    <a class="text-dark px-2" href="">
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a class="text-dark pl-2" href="">
                        <i class="fab fa-youtube"></i>
                    </a>
                </div>
            </div>
        </div>
        <div class="row align-items-center py-3 px-xl-5">
            <div class="col-lg-3 d-none d-lg-block">
                <a href="${pageContext.request.contextPath}/Controller?action=gohome" class="text-decoration-none">
                    <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">P</span>PRJ321x</h1>
                </a>
            </div>
            <div class="col-lg-6 col-6 text-left">
                <form action="${pageContext.request.contextPath}/SearchController2" method="get">
                    <div class="input-group">
                    <c:set var="search" value="${keySearch}" scope="page"></c:set>
                        <input type="text" name="s" class="form-control" placeholder="Search for products" id="search" value="${search}">
                        
                        <div class="input-group-append">
                            <span class="input-group-text bg-transparent text-primary">
                              <button type="submit"><i  class="fa fa-search"></i></button>  
                            </span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-lg-3 col-6 text-right">
                <a href="" class="btn border">
                    <i class="fas fa-heart text-primary"></i>
                    <span class="badge">0</span>
                </a>
                <a href="${pageContext.request.contextPath}/Controller?action=toshopingcart" class="btn border">
                    <i class="fas fa-shopping-cart text-primary"></i>
                    <span class="badge">${amountofproduct}</span>
                </a>
            </div>
        </div>
    </div>
    <!-- ----------------------------------------------------------------------- -->
    <div class="container-fluid" style="background: #e5cdca">
        <div class="row  px-xl-5">
        
            <div class="col-lg-12">
                <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                    <a href="" class="text-decoration-none d-block d-lg-none">
                        <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">E</span>Shopper</h1>
                    </a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse" style="background: #e5cdca">
                        <div class="navbar-nav mr-auto py-0">
                            <a href="${pageContext.request.contextPath}/Controller?action=gohome" class="nav-item nav-link">Home</a>
                           <a href="#" class="nav-item nav-link">Shop</a>
                            <a href="#" class="nav-item nav-link">Shop Detail</a>
                            
                            <a href="#" class="nav-item nav-link">Contact</a>
                        </div>
                        
                        <c:choose>
                        	<c:when test="${empty loginsuccess}">
								<div class="navbar-nav ml-auto py-0 ">
									<a
										href="${pageContext.request.contextPath}/Controller?action=login"
										class="nav-item nav-link">Login</a> <a
										href="${pageContext.request.contextPath}/Controller?action=register"
										class="nav-item nav-link">Register</a>
								</div>
							</c:when>
                        	<c:otherwise>
                        		<c:import url="/logouser.jsp"><c:param name="labelname" value="${mylogin.userName}"></c:param></c:import>
                        	</c:otherwise>
                        </c:choose>

                    </div>
                </nav>
            </div>
        </div>
     </div>
   </div>	
<!-- ----------Header------------- -->

