<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>   
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	<c:import url="header.jsp"></c:import>
	<div class="container"style="padding: 100px 200px;">
		<div style="background: hsla(0, 100%, 50%, 0.3)" class="text-center display-5">
			<span class="text-center">Rất Tiếc</span>
		</div>
		
		<div style="background: hsla(0, 100%, 70%, 0.3);"  class="text-center display-6">	
			<span  class="text-center">Không tìm thấy sản phẩm nào phù hợp cho từ khóa:<strong>${key}</strong></span>
		</div>
	</div>
	
		<c:import url="footer.jsp"></c:import>