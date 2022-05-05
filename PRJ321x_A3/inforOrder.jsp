<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    	  <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/style/css/style3.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/style/css/style1.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/favicon.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>

<c:import url="header.jsp"></c:import>
	<div class="container" style="padding: 20px 150px 0 150px">
	
		<h1>Information Customer</h1>
		<div class="row">
			<div class="col-sm-12">
				<form style="margin:20px 0 20px 20px" action="${pageContext.request.contextPath}/PayController" method="get">
							<input type="hidden" name="status" value="0">
							<input type="hidden" name="accountlogin" value="no">
							<!-- -----------------------Khoi name input----------------------------------------------------- -->
						<div class="form-group">
							<label for="formGroupExampleInput" style="color:#ba6a62;">Customer Name</label>
				<%--3 --%>			 <input
								type="text" class="form-control" id="formGroupExampleInput" name="mail" value="${mylogin.userName}"
								placeholder="John, Lucie,..."style="border-bottom:1px solid black; border-radius:5px;" required>
						</div>
						
						    <!-- -----------------------Khoi Address Input--------------------------------------------------- -->
						<div class="form-group">
							<label for="formGroupExampleInput2" style="color:#ba6a62;">Customer Adrress</label> 
				<%--4 --%>		<input
								type="text" class="form-control" id="formGroupExampleInput2" name="address" value="${mylogin.userAddress}"
								placeholder="Ha Noi, HCM, Nha Trang..." style="border-bottom:1px solid black; border-radius:5px;" required>
						</div>
						
						<!-- ---------------------------Khoi discount input--------------------------------------------------- -->
						<div class="form-group">
							<label for="formGroupExampleInput2" style="color:#ba6a62;">Discount code</label>
				<%--5 --%>		<input
								type="text" class="form-control" id="formGroupExampleInput3" name="discount"
								placeholder="1010, 1011, 1012, .." style="border-bottom:1px solid black; border-radius:5px;" required>
						</div>
		                

			<!-- --------------------------submit chuyen  du lieu ve server------------------------------------ -->
			                        <input type="submit" class="btn btn-block btn-primary my-3 py-3" value="Continue">
		                
	       </form>	
			</div>
		</div>
		
		</div>	
		<c:import url="footer.jsp"></c:import>		              
</body>
</html>