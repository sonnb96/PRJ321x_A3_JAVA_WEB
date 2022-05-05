<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    	  <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
    
     <c:forEach items="${param.searchList}" var="l">
													<tr class="table-info">
														<td>${l.id}</td>
														<td><img src="${l.src}"> <span>${l.name}</span></td>
														<td>${l.description}</td>
														<td>${l.price}</td>
														<td>${l.type}</td>
														<td>${l.brand}</td>
													</tr>


						</c:forEach>