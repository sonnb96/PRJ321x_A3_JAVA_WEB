<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Insert title here</title>
</head>
<body>


	<div class="btn-group">
		<button type="button" class="btn btn-secondary dropdown-toggle"
			data-toggle="dropdown" data-display="static" aria-expanded="false"
			style="border-radius: 10px;">
			<img style="width: 20px; height: 20px;"
				src="https://gitiho.com/default/gitiho/avatar_random/men/dad.png"
				data-src="https://gitiho.com/default/gitiho/avatar_random/men/dad.png"
				alt="Ngô Bá Sơn"> Hi ${param.labelname} !
		</button>
		<div class="dropdown-menu dropdown-menu-lg-right">
			<button class="dropdown-item" type="button"><a href="${pageContext.request.contextPath}/Controller?action=infoCusCart">History Buy Product</a></button>
			<button class="dropdown-item" type="button"><a href="${pageContext.request.contextPath}/UserController?action=logout">Log out</a></button>
		</div>
	</div>

</body>
</html>