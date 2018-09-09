<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"     prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags"   prefix="spring"%>      
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ÖDEV SAYFASI</title>

<!-- <link href="/css/main.css" rel="stylesheet"></link> -->
<link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
 <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
 <script src="../../webjars/jquery/3.0.0/jquery.min.js"></script>
 
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
<link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
 
 
	 <style type="text/css">
	
			body{
				background-size:cover;
				background-color: silver; 
				
				background-image: url(http://edebiyatsultani.com/wp-content/uploads/2018/04/kitap-ve-yasam.gif);"
			
			
			}
			
			h3,h4{
			    color: white;
			}
	
	
	.animasyon{
			
				animation-duration:2s;
			
			}
	</style>
 
 
 
 
</head>

<body>
<br/><br/>

<div class="container-fluid">

<div class="row">
		<div class="col-md-3">
	 	    <h4>Hoşgeldin ${pageContext.request.userPrincipal.name} | </h4>
	 	</div>   
	 	 
	 	 <div class="col-md-5">
	 	<marquee> <pre><h1>ÖDEV   LİSTESİ</h1></pre> </marquee>
	 	 </div>
	 	 
	 	 
	 	 <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
         </form>
         
        
         <div class="col-md-3">
         
		         <div class="input-group">
					  
					   <spring:url value="/odev/siniflistesonuc" var="sinifhwlist" />
				       <form:form modelAttribute="odevForm" method="GET" action="${sinifhwlist}"  cssClass="form">
				       
				            
				          <form:hidden path="id"/>
				          <form:hidden path="konusu"/>
				          <form:hidden path="teslimtarihi"/>
				    
				                  <form:select path = "verilensinif">
				                     <form:option value = "NONE" label = "SINIF SEÇİNİZ"/>
				                     <form:options items = "${verilensiniflar}" />
				                  </form:select> 
				                   
				                  <button type="submit" class="btn btn-outline-light btn-md"><i class="fas fa-list-ul"  aria-hidden="true"></i>LİSTELE</button> 
		  		           </form:form>  
				</div>
		         
		         
  		    </div>
  		    
  		    
  		     <div class="col-md-1">
  		     		<h5><a class="btn btn-outline-light" href="\logout" ><i class="fas fa-sign-out-alt"></i>&nbsp; Çıkış</a></h5>
  		     </div> 
  		                 
  		  
       
	</div> 


	
	
	
	<div class="row">

		<div class="col-md-2">
		
				<div class="list-group">
				  
		          <a class="btn btn-outline-light" href="\ogrenci\list"><i class="fas fa-user-plus"  aria-hidden="true"></i>&nbsp;ÖĞRENCİ LİSTELE</a> 
				  <a class="btn btn-outline-light" href="\odev\odevlist"><i class="fa fa-book fa-fw" aria-hidden="true"></i>&nbsp; ÖDEV LİSTELE</a>
				  <a class="btn btn-outline-light" href="\odev\odevNotList"><i class="fa fa-book fa-fw" aria-hidden="true"></i>&nbsp; ÖDEV NOT LİSTELE</a>
				  
				  <a class="btn btn-outline-light" href="\odev\addHomework"><i class="fas fa-sticky-note" aria-hidden="true"></i>&nbsp; ÖDEV VER</a>
				  <a class="btn btn-outline-light" href="\odev\odevlist"><i class="fas fa-marker"></i>ÖDEVE NOT VER</a>  
				  <a class="btn btn-outline-light" href="\welcome" ><i class="fas fa-undo-alt"></i>GERİ DÖN</a>   
				  <a class="btn btn-outline-light" onclick="document.forms['logoutForm'].submit()" ><i class="fa fa-user-circle fa-fw" aria-hidden="true"></i></i>&nbsp; Çıkış</a>
	  		    
	  		       
				</div>
				
				<video  width="220" height="240" autoplay loop>
 					<source src="https://player.vimeo.com/external/145386665.sd.mp4?s=e16cddbe7b6852517daaaed004ec3b88a34eb8b3&profile_id=112">  
 				</video>
 		
				
		 </div>

		<div class="col-md-10">
		
						<table class="table table-hover table-bordered bg-light animated fadeInDown animasyon">
						  
						  <thead>
						    <tr>
						      <th scope="row">ÖDEV ID</th>
						      <th scope="row">ÖDEV KONUSU</th>
						      <th scope="row">ÖDEV TESLİM TARİHİ</th>
						      <th scope="row">ÖDEV VERİLEN SINIF</th> 
						      <th scope="row">DÜZENLE</th>
						      <th scope="row">NOT VER</th>  
						      <th scope="row">SİL</th> 
						    </tr>
						  </thead>
						  
						  <tbody>
						  <c:forEach items="${odevListesi}" var="odev">
						    
						    <tr>
						      <td>${odev.id} </td>
						      <td>${odev.konusu} </td>
						      <td>${odev.teslimtarihi} </td>
						      <td>${odev.verilensinif} </td>
						     
						     
						     <td>
						       <spring:url value="/odev/updateHomework/${odev.id}" var="updateHWURL" />
						       <a class="btn btn-outline-dark" href="${updateHWURL}" role="button" ><i class="fas fa-edit"></i>DÜZENLE</a>
						      </td>
						      
						      
						       <td>
						       <spring:url value="/odev/giveMarktoHomework/${odev.id}" var="giveMarkHWURL" />
						       <a class="btn btn-outline-dark" href="${giveMarkHWURL}" role="button" ><i class="fas fa-marker"></i>NOT VER</a>
						      </td>
						      
						      <td>
						       <spring:url value="/odev/deleteHomework/${odev.id}" var="deleteHWURL" />
						       <a class="btn btn-outline-danger" href="${deleteHWURL }" role="button" ><i class="fas fa-trash-alt"></i>SİL</a>
						      </td>
						      
						     
						      
						    </tr>
						    
						  </c:forEach>  
						  </tbody>
						</table>
		
		</div>


    </div>
    
   
 </div>

</div>

</body>
</html>