<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"     prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags"   prefix="spring"%>      
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ÖDEV NOT LİSTESİ</title>

<link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
 <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
 <script src="../../webjars/jquery/3.0.0/jquery.min.js"></script>
 
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
 <link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
 
 
	 <style type="text/css">
	
			body{
				background-size:cover;
				background-color: silver; 
				
				background-image: url(https://static.tumblr.com/f54559064c38b9b1222e6c478cf4d6a0/hnx3wwe/8PCodpl7t/tumblr_static_filename_640_v2.gif);
			
			
			}
			
			h1,h4{
			    color: white;
			}
			
			.animasyon{
			
				animation-duration:2s;
			
			}
			
	
	</style>
 
 
 
</head>

<body>
<br/>
<br/>

<div class="container-fluid">


		<div class="row">
		
				<div class="col-md-3">
			 	    <h4>Hoşgeldin ${pageContext.request.userPrincipal.name} | </h4>
			 	</div>   
			 	 
			 	 <div class="col-md-5">
			 	<marquee> <pre><h1>ÖDEV NOT VERME SAYFASI</h1></pre> </marquee>
			 	 </div>
			 	 
			 	 
			 	 <form id="logoutForm" method="POST" action="${contextPath}/logout">
		            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		         </form>
		         
		        
		         <div class="col-md-3">
		         
				         <div class="input-group">
							  
							   <spring:url value="/odev/odevSinifNotList" var="NotList" />
						       <form:form modelAttribute="ogrenciNotForm" method="GET" action="${NotList}"  cssClass="form">
						        
						          <form:hidden path="id"/>
						          <form:hidden path="no"/>
						          <form:hidden path="adi"/>
			      		          <form:hidden path="soyadi"/>
						          <form:hidden path="konusu"/>
						          <form:hidden path="odevin_teslimtarihi"/>
						          <form:hidden path="odev_notu"/>
						          <form:hidden path="aciklama"/>
						           
						                  <form:select path = "sinifi">
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
							      <th scope="row">ÖDEV_ID</th>
							      <th scope="row">NO</th>
							      <th scope="row">ADI</th>
							      <th scope="row">SOYADI</th>
							      <th scope="row">SINIFI</th>
							      <th scope="row">KONUSU</th>
							      <th scope="row">SON_TESLIM_TARIHI</th>
							      <th scope="row">ÖDEV_NOTU</th>
							      <th scope="row">ACIKLAMA</th>
							      <th scope="row">NOT VER</th>
							      <th scope="row">SİL</th>
							    </tr>
							  </thead>
							  
					  <tbody>
					  <c:forEach items="${odevNotlist}" var="odevNotlist">
					    
					    <tr>
					      <td>${odevNotlist.odevid} </td>
					      <td>${odevNotlist.no} </td>
					      <td>${odevNotlist.adi} </td>
					      <td>${odevNotlist.soyadi} </td>
					      <td>${odevNotlist.sinifi} </td>
					      <td>${odevNotlist.konusu} </td>
					      <td>${odevNotlist.odevin_teslimtarihi} </td>
					      <td>${odevNotlist.odev_notu} </td>
					      <td>${odevNotlist.aciklama} </td>  
					     
					     
					     <td>
					       <spring:url value="/odev/updateHMWNote/${odevNotlist.id}" var="updateHMWNoteURL" />
					       <a class="btn btn-outline-dark" href="${updateHMWNoteURL}" role="button" ><i class="fas fa-marker"></i>NOT VER</a>
					      </td>
					      
					      <td>
					       <spring:url value="/odev/deleteHMWNote/${odevNotlist.id}" var="deleteHMWNoteURL" />
					       <a class="btn btn-outline-danger" href="${deleteHMWNoteURL }" role="button" ><i class="fas fa-trash-alt"></i>SİL</a>
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