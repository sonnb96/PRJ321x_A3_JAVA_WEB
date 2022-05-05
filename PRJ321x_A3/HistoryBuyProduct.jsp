<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>   
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


	<c:import url="header.jsp"></c:import>
	<div style=" background: ">
		<div class="container" style="padding: 0 350px">
		<jsp:useBean id="inputpricetotal" class="com.funix.been.FractionDigits" scope="page"></jsp:useBean>
		<c:if test="${empty listProducHistory}">
			
				

				<div style="background: hsla(0, 100%, 70%, 0.3);margin-top: 100px"
					class="text-center display-6">
					<span class="text-center">Bạn chưa mua đơn nào!</span>
				</div>
		

		</c:if>
		<c:forEach items="${listProducHistory}" var="p" varStatus="x">
		<div class="media" style=" border: 1px solid black; border-radius: 20px; margin: 5px 0">
			
			<img src="${p.src}" class="align-self-start mr-3" alt="..." style="width:64px; padding:10px 0 0 5px">
			
			
			<jsp:setProperty property="number" name="inputpricetotal" value="${p.number*p.price}"/>
			<div class="media-body" >
			<div style="background: #c8081a;border-top-right-radius: 20px; padding-bottom: 5px" class="align-bottom">
				  <h5 class="mt-0" style=" color: white; padding-top: 5px ">${p.name}</h5>
			</div>
				Price: <p class="text-right">${p.price}</p>
				<p>x${p.number}</p>
				
				<p class="text-right">SubTotal: <span style="color: red; font-size: 40px"><jsp:getProperty property="number" name="inputpricetotal"/> </span> </p>
			</div>
		</div>
	</c:forEach>
		</div>
		</div>
		
		<c:import url="footer.jsp"></c:import>
