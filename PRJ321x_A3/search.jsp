<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<c:import url="header.jsp"></c:import>


<section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
          <c:forEach items="${myproduct}" var="pr" >
         	
			           <div class="col mb-5 numElement">
                        <div class="card h-100">
                            <!-- Product image-->
                          <a href="${pageContext.request.contextPath}/InformationProductController?id=${pr.id}"> <img class="card-img-top" src="${pr.src}" alt="..."></a>  
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">${pr.name}</h5>
                                    <!-- Product price-->
                                   <span style="color: red">$${pr.price}</span>
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View options</a></div>
                            </div>
                        </div>
                    </div>
            
		</c:forEach>
                   
                </div>
            </div>
        </section>

	<input type="hidden" value="${limited}" id="limited">
	
	
	<nav aria-label="Page navigation example">
	<!-- 
		<ul class="pagination justify-content-center">
			<li class="page-item ${varCount>1?'': 'disabled'}"><a href="${pageContext.request.contextPath}/DisplayList?act=prev" class="page-link">Previous</a>
			</li>
			<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/DisplayList?count=1">1</a></li>
			<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/DisplayList?count=2">2</a></li>
			<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/DisplayList?count=3">3</a></li>
			<li class="page-item ${varCount<limit?'': 'disabled'}" ><a class="page-link" href="${pageContext.request.contextPath}/DisplayList?act=next">Next</a></li>
		</ul>
	 -->
		<ul class="pagination justify-content-center">
			<li class="page-item disabled"  id="pre"><a  class="page-link">Previous</a></li>
			<li class="page-item ${limited<0?'disabled':''}"><a class="page-link">1</a></li>
			<li class="page-item ${limited<2?'disabled':''}" ><a class="page-link">2</a></li>
			<li class="page-item ${limited<3?'disabled':''}" ><a class="page-link">3</a></li>
			<li class="page-item ${limited<4?'disabled':''}" id="next" ><a class="page-link">Next</a></li>
		</ul>
	</nav>

<p id="de"></p>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

	<script >
	$(document).ready(function(){
		
		
		let pageNumber=1;
	    let	numberOfPagin=$("#limited").val();
	
		$(".pagination li a").click(function(){
			$("#de").text(numberOfPagin);
			
		let x=	$(this).text();
		if(x==='Previous'){
			pageNumber--;
			
		}else if(x==='Next'){
			
			pageNumber++;
					
		}else if(x==1||x==2||x==3){
			pageNumber=Number(x);
			
			
		}
		
		
		//----------Check ------------------
        if(pageNumber<=1){
    		pageNumber=1;
    		$("#pre").addClass('disabled');
    		//$("#next").removeClass('disabled');
    	}
        else if(pageNumber>numberOfPagin){
    		pageNumber=numberOfPagin;
    		$("#next").addClass('disabled');
    		console.log(pageNumber);
    		//$("#pre").removeClass('disabled');
    	}
        else if(numberOfPagin>4){
    		$("#pre").removeClass('disabled');
    		$("#next").removeClass('disabled');
    	}
       
		//------------Ajax-----------------
		$.ajax({
			  url: "/PRJ321x_A3/SearchController2",
			  type: "get", //send it through get method
			  data: {"pagenumber":pageNumber
				      },
			  success: function(response) {
			     $("div.container div.row").html(response);
			  },
			  error: function(xhr) {
			    //Do Something to handle error
			  }
			});
		//------------------------------------------------------
		
		});
		
		
		
	});
	
	

</script>


<c:import url="footer.jsp"></c:import>
