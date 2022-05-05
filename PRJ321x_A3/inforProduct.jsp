<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/style/css/styles.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/style/css/style1.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/style/css/styles2.css" rel="stylesheet">
<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/favicon.ico">

<title>Insert title here</title>
</head>
<body>
	<c:import url="header.jsp"></c:import>

	<div class="container" >
	
                    
		<div class="name-product display-3">
			<p><c:out value="${product.name}"></c:out></p>		
		</div>
		<div class="row">
			<div class="col-4">
					 <img class="card-img-top" src="${product.src}" alt="...">
			</div>
			<div class="col-4">				
					<h3 style="color:red"><fmt:formatNumber type="number" pattern="###,###,### VND" value="${product.price}" /></h3>
					<div class="col-9">
					<p>${product.description}</p>
					</div>
					<c:set var="a" value="${ordernumber}" scope="page"></c:set>
	
					
					<a href="${pageContext.request.contextPath}/AddCartCustomController?action=add&id=${product.id}"><button class="btn btn-outline-dark flex-shrink-0" type="button" onclick=" myClick()">
                                <i class="bi-cart-fill me-1"></i>
                                Add to cart
                            </button></a>
                  
                      
				
			</div>
		</div>
		
	</div>
<c:import url="footer.jsp"></c:import>
</body>
</html>