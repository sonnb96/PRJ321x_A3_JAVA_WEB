<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
      <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/source/style/cssLogin/assets/vendors/mdi/css/materialdesignicons.min.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/source/style/cssLogin/assets/vendors/css/vendor.bundle.base.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/source/style/cssLogin/assets/css/style.css">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/source/style/cssLogin/assets/images/favicon.png">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="row w-100 m-0">
          <div class="content-wrapper full-page-wrapper d-flex align-items-center auth login-bg">
            <div class="card col-lg-4 mx-auto">
              <div class="card-body px-5 py-5">
                <c:choose>
              	<c:when test="${fn:length(errorlogin)!=0}">
              		 <script>
                           $(document).ready(function(){
    	                   $(".thongbao").addClass("show");
    	
                            });
    
                    </script>
              	</c:when>
              </c:choose>
              
              <div class="alert alert-warning alert-dismissible fade  thongbao">
                 <button type="button" class="close" data-dismiss="alert">&times;</button>
                      <strong>Warning!</strong> ${errorlogin}
                 </div>
                 
                 
                <h3 class="card-title text-left mb-3">Login</h3>
                <form action="${pageContext.request.contextPath}/UserController"  method="post">
                
                   <input type="hidden" name="action" value="login">
                   
                  <div class="form-group">
                    <label>Email *</label>
                    <input type="text" class="form-control p_input" required="required" name="email" value="${emailtemplogin}">
                  </div>
                  <div class="form-group">
                    <label>Password *</label>
                    <input type="password" class="form-control p_input" required="required" name="password">
                  </div>
                  <div class="form-group d-flex align-items-center justify-content-between">
                    <div class="form-check">
                      <label class="form-check-label">
                        <input type="checkbox" class="form-check-input"> Remember me <i class="input-helper"></i></label>
                    </div>
                    <a href="#" class="forgot-pass">Forgot password</a>
                  </div>
                  <div class="text-center">
                    <button type="submit" class="btn btn-primary btn-block enter-btn" >Login</button>
                  </div>
                  <div class="d-flex">
                    <button class="btn btn-facebook mr-2 col">
                      <i class="mdi mdi-facebook"></i> Facebook </button>
                    <button class="btn btn-google col">
                      <i class="mdi mdi-google-plus"></i> Google plus </button>
                  </div>
                  <p class="sign-up">Don't have an Account?<a href="${pageContext.request.contextPath}/Controller?action=register"> Sign Up</a></p>
                </form>
              </div>
            </div>
          </div>
          <!-- content-wrapper ends -->
        </div>
        <!-- row ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
</body>
</html>