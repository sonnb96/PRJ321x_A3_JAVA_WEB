<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<c:import url="header.jsp"></c:import>


<section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
          <c:forEach items="${product}" var="p" >
         	
			           <div class="col mb-5 numElement">
                        <div class="card h-100">
                            <!-- Product image-->
                          <a href="${pageContext.request.contextPath}/InformationProductController?id=${p.id}"> <img class="card-img-top" src="${p.src}" alt="..."></a>  
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">${p.name}</h5>
                                    <!-- Product price-->
                                    <span style="color: red">$${p.price}</span>
                                </div>
                            </div>
                            <!-- Product actions-->
                          
                        </div>
                    </div>
            
		</c:forEach>
                   
                </div>
            </div>
        </section>

	<input type="hidden" value="${limit}" id="limit">
	
	
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
			<li class="page-item"><a class="page-link">1</a></li>
			<li class="page-item" ><a class="page-link">2</a></li>
			<li class="page-item"><a class="page-link">3</a></li>
			<li class="page-item " id="next" ><a class="page-link">Next</a></li>
		</ul>
	</nav>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

	<script >
	$(document).ready(function(){
		
		
		let pageNumber=1;
	    let	numberOfPagin=$("#limit").val();
	
		$(".pagination li a").click(function(){
			
		let x=	$(this).text();
		if(x==='Previous'){
			pageNumber--;
			//if(pageNumber<=1) {pageNumber=1; $(this).parent().addClass('disabled')};
			
		}else if(x==='Next'){
			
			pageNumber++;
			

			
			//if($(".numElement").length==0) pageNumber-=2;
			//if(pageNumber<1) {pageNumber=1; $(this).parent().addClass('disabled')};
			
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
        else{
    		$("#pre").removeClass('disabled');
    		$("#next").removeClass('disabled');
    	}
       
		//------------Ajax-----------------
		$.ajax({
			  url: "/PRJ321x_A3/DisplayProduct",
			  type: "get", //send it through get method
			  data: {"pagenumber":pageNumber},
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
