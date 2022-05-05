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

<div class="container">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
            <h1 class="font-weight-semi-bold text-uppercase mb-3">Shopping Cart</h1>
           
        </div>
    </div>
     
       <div class="container" style="padding: 0 100px 0 100px;">
       
         
             <div class="card border-secondary mb-5">
                    <div class="card-header bg-secondary border-0">
                        <h4 class="font-weight-semi-bold m-0">Cart Summary</h4>
                    </div>
                    <div class="card-body" style="border-bottom: 1px ridge black">
                        <div class="d-flex justify-content-between mb-3 pt-1">
                            <h6 class="font-weight-medium">Subtotal</h6>
                            
                             <jsp:useBean id="total1" class="com.funix.been.FractionDigits" scope="session"></jsp:useBean>
                            <jsp:setProperty property="number" name="total1" value="${cart.amount}"/>
                           
                            
                            <h6 class="font-weight-medium" id="subTotalProduct"><jsp:getProperty property="number" name="total1"/></h6>
                        </div>
                        <div class="d-flex justify-content-between">
                            <h6 class="font-weight-medium">Shipping</h6>
                            <h6 class="font-weight-medium">$0</h6>
                        </div>
                        
                        <div class="d-flex justify-content-between mt-2">
                            <h5 class="font-weight-bold">Total</h5>
                            <h5 class="font-weight-bold" id="finaltotal"><jsp:getProperty property="number" name="total1"/></h5>
                        </div>
                       
                   
                        
                    </div>
               </div>
           
           <form action="${pageContext.request.contextPath}/UpdateCartController" method="get" id="myfrm">
                <table class="table table-bordered text-center mb-0">
                    <thead class="bg-secondary text-dark">
                        <tr>
                            <th>Products</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Total</th>
                            <th>Remove</th>
                        </tr>
                    </thead>
                    <tbody class="align-middle">
                <!-- ---------------------------Been -------------------------   ------->      
                    <jsp:useBean id="total" class="com.funix.been.FractionDigits" scope="session"></jsp:useBean>
                    
                <!-- ---------------------------Been---------------------------------- -->   
                
                <!-- ----------------------------------------------------------------- --> 
                <!-- ---------------------------Crate table cart---------------------- --> 
                    <c:forEach items="${cart.items}" var="p" varStatus="a">
                    
                        <tr class="cyane">
                            <td class="align-middle"><img src="${p.src}" alt="" style="width: 50px;">${p.name}</td>
                            
                            <td class="align-middle">${p.price}</td>
                           <!-- ----------------------------------------------------------------------------- --> 
                            <td class="align-middle">
                                <div class="input-group quantity mx-auto" style="width: 100px;">
                                
                                <!-- ---------set variable------------- -->
                                <c:set var="b" value="abc"></c:set>
                                 <c:set var="price_p" value="price"></c:set>
                                  <c:set var="result" value="result"></c:set>
                                  <!-- ------------------------------------------ -->
                                  
                                  
                                  <!-- ----------------Giam so luong san pham--------------- -->
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-minus tru" data="${a.index}" >
                                             <i class="fa fa-minus"></i>
                                        </button>
                                    </div>
                                    
                                    <!-- -----------------------Quanlity-------------------------------- -->
                                    <input id="${b}${a.index}" type="text" name="${p.id}" class="form-control form-control-sm bg-secondary text-center"
                                       value="<c:out value='${p.number}'></c:out>" readonly="readonly"/>
                                       
                                       
                                    <input type="hidden" id="${price_p}${a.index}" value="${p.price}">
                                    
                                    <!-- -------------------Tang so luong san pham----------------------------------------- -->
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-plus cong" data="${a.index}">
                                            <i class="fa fa-plus" ></i>
                                        </button>
                                    </div>
                                    <!-- ------------------------------------------------------------- ------------------>
                                </div>
                                
                            </td>
                            <!-- -------------------------------------------------------------------------------- -->
                            
                            <%--- response.setHeader("Cache-Control", "no-cache, no-store"); --%>
                           	
                           	<jsp:setProperty property="number" name="total" value="${p.price*p.number}"/>
                           	
                            <td class="align-middle subtotal" id="${result}${a.index}"><jsp:getProperty property="number" name="total"/></td>
                            
                            <td class="align-middle removeproduct" >
                            <button class="btn btn-sm btn-primary"><i class="fa fa-times"></i></button></td>
                        </tr>
                        
                        
                     </c:forEach>  
                <!-- ----------------------------------------------------------------- -->             
                        
                      
                    </tbody>
                     
                </table>
                 <input type="submit" class="btn btn-block btn-primary my-3 py-3 " id="ptc" value="Proceed To Checkout"  ${empty disabled?"":disabled}>
             </form>           
          
      
					
		</div>   				
           
         
         
         
  <c:import url="footer.jsp"></c:import>
       
   

 <script>
        $(document).ready(function(){
        	
     	
        	$(".removeproduct").click(function(){
        		let x=Number($(this).prev().text());
        		
        		$(this).parent().remove();
        		
        		let y=Number($("#subTotalProduct").text());
        		$("#subTotalProduct").text((y-x).toFixed(2));
        		$("#finaltotal").text((y-x).toFixed(2));
        		if( !$("tr").hasClass('cyane')){
        			$("#ptc").attr("disabled","disabled");
        		}
        	});
            $(".tru").click(function(){
            	let index =$(this).attr("data")
            	let x="#abc" + index ;
                 let a=  $(x).val(); // bien a la so luong san pham tren mot don vi san pham
                 a--;
                 if(a<1){
                	 a=1;
                 }
                $(x).val(a);// cap nhat giam so luong san pham
                $("#amount").val(a) // so luong se dua ve form se order
                
                let y="#price"+index;
                let b=$(y).val();
                
                let z="#result"+index;
                let price= (a*b).toFixed(2);
                
                $(z).text(price);
                
                let sumPriceProduct=0;
                $(".subtotal").each(function(index,value){
                	 sumPriceProduct+= Number($(this).text());               	
                });
                $("#subTotalProduct").text( sumPriceProduct.toFixed(2));
                $("#finaltotal").text( sumPriceProduct.toFixed(2));
                
                $("#paytocart").val(Number(sumPriceProduct.toFixed(2))); // gia tong thanh toan chuyen ve form order custom
                
                return false;
            })
            
             $(".cong").click(function(){
            	 let index =$(this).attr("data")
             	let x="#abc" + index ;
                 let a=  $(x).val(); // bien a la so luong san pham tren mot don vi san pham
                 a++;
                 if(a>3){
                	 a=3;
                	 alert("Maximum 3 products");
                 }
                $(x).val(a);// cap nhat tang so luong san pham
                $("#amount").val(a) // so luong se dua ve form se order
                
                let y="#price"+index;
                let b=$(y).val();
                
                let z="#result"+index;
                let price= (a*b).toFixed(2);
                
                $(z).text(price);
                
                let sumPriceProduct=0;
                $(".subtotal").each(function(index,value){
                	 sumPriceProduct+= Number($(this).text());               	
                });
                $("#subTotalProduct").text( sumPriceProduct.toFixed(2));
                $("#finaltotal").text( sumPriceProduct.toFixed(2));
                
                $("#paytocart").val(Number(sumPriceProduct.toFixed(2))); // gia tong thanh toan chuyen ve form order custom
                return false;
            })
            
        });
    </script>
</body>
</html>