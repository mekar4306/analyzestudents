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
				
				background-image: url(https://cdn.pixabay.com/photo/2015/06/02/12/59/narrative-794978_960_720.jpg);"
			
			
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

<div class="container-fluid">

<br/><br/>

<div class="row">

		<div class="col-md-3">
	 	    <h4>Hoşgeldin ${pageContext.request.userPrincipal.name} | </h4>
	 	</div>   
	 	 
	 	 <div class="col-md-8">
	 	 <pre><h3>ÖĞRENCİ BAŞARI DURUMU</h3></pre>
	 	 </div>
	 	 
	 	 
	 	 <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
         </form>
         
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
		 
		 <div class="col-md-10 ">
		 			
		 				<table class="table table-hover table-bordered bg-light animated bounceInLeft animasyon">
						  
						 <thead >
						    <tr>
						      <th scope="row">NO</th>
						      <th scope="row">ADI</th>
						      <th scope="row">SOYADI</th>
						      <th scope="row">SINIFI</th>
						      <th scope="row">KONUSU</th>
						      <th scope="row">ODEV_NOTU</th>
						     
						    </tr>
						  </thead>
						  
						  <tbody>
						  <c:forEach items="${basariListesi}" var="basariListesi">
						    
						    <tr>
						      <td>${basariListesi.no} </td>
						      <td>${basariListesi.adi} </td>
						      <td>${basariListesi.soyadi} </td>
						      <td>${basariListesi.sinifi} </td>
						      <td>${basariListesi.konusu} </td>
						      <td>${basariListesi.odev_notu} </td>
						   
						      
						    </tr>
						    
						  </c:forEach>  
						  </tbody>
						</table>
						
					<hr/>
					<hr/>		
						<table class="table table-hover table-bordered bg-light animated bounceInRight animasyon">
						  
						  <thead>
						    <tr>
						      <th scope="row">ÖDEV BAŞARI PUANI</th>
						      <th scope="row">TOPLAM VERİLEN ÖDEV SAYISI</th>
						      <th scope="row">TESLİM EDİLEN ÖDEV SAYISI</th>
						      <th scope="row">TESLİM EDİLMEYEN ÖDEV SAYISI</th>
						      
						     
						    </tr>
						  </thead>
						  
						 
						    <tr>
						      <td>${ogrenciBasariDetay.odev_Basarisi}  </td> 
						      <td>${ogrenciBasariDetay.toplam_Verilen_Odev_Sayisi}</td>
						      <td>${ogrenciBasariDetay.teslim_Edilen_Odev_Sayisi} </td>
						      <td>${ogrenciBasariDetay.teslim_Edilmeyen_Odev_Sayisi} </td>
						       
						    </tr>
						    
						  
						  </tbody>
						</table>
 
 				
 				</div>
 		</div>

   
 </div>

</div>

</body>
</html>