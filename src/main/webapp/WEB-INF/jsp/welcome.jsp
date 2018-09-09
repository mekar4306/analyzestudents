<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Hoşgeldiniz</title>

 <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
 <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
 <script src="../../webjars/jquery/3.0.0/jquery.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">

<style type="text/css">

body{

background-size:cover;
background-color: silver; 
background-image: url(https://cdn.pixabay.com/photo/2015/11/19/21/14/phone-1052023__340.jpg);"

}

h2{
color:white;

}

</style>

</head>
<body>

<div class="container">

<br/>
		
<div class="row">
	
				<div class="col-md-6">
				
			   		 <c:if test="${pageContext.request.userPrincipal.name != null}">
			    
			        <form id="logoutForm" method="POST" action="${contextPath}/logout">
			            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			        </form>
			
			        <h2>Hoşgeldin ${pageContext.request.userPrincipal.name} | </h2>
			    
			    	</c:if>
			    </div>
    
    
    	 
	     
	      <div class="col-md-5">
			 	 
			 	 <iframe src="http://free.timeanddate.com/clock/i6d8iqxc/n19/szw80/szh80/hocfff/hbw1/cf100/hncfff/hwcfff/fan2/fas32/fac555/fdi80/mqcf0f/mqs4/mql2/mqw4/mqd78/mhcf90/mhs4/mhl3/mhw4/mhd78/hhc990/hhs3/hmc990/hms2/hscf09" frameborder="0" width="80" height="80"></iframe>
						
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
								  
						          <a class="btn btn-outline-light" href="\ogrenci\list"><i class="fas fa-user-plus"  aria-hidden="true"></i>ÖĞRENCİ LİSTELE</a> 
								  <a class="btn btn-outline-light" href="\odev\odevlist"><i class="fa fa-book fa-fw" aria-hidden="true"></i>&nbsp; ÖDEV LİSTELE</a>
								  <a class="btn btn-outline-light" href="\odev\odevNotList"><i class="fa fa-book fa-fw" aria-hidden="true"></i>&nbsp;NOT LİSTELE</a>
								  
								  <a class="btn btn-outline-light" href="\odev\addHomework"><i class="fas fa-sticky-note" aria-hidden="true"></i>&nbsp; ÖDEV VER</a>
								  <a class="btn btn-outline-light" href="\odev\odevlist"><i class="fas fa-marker"></i>NOT VER</a>  
								  
								  <a class="btn btn-outline-light" onclick="document.forms['logoutForm'].submit()" ><i class="fa fa-user-circle fa-fw" aria-hidden="true"></i></i>&nbsp; Çıkış</a>
					  		    
					  		
						</div>	
						
								
			  
			  </div>
			  		  
  
 </div> 
 <br/>
 
 <div class="row"> 
 
        <div class="col-md-4">
				    <a class="weatherwidget-io" href="https://forecast7.com/tr/39d9332d86/ankara/" data-label_1="ANKARA" data-label_2="HAVA DURUMU" data-theme="hexellence" >ANKARA HAVA DURUMU</a>
						<script>
						!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src='https://weatherwidget.io/js/widget.min.js';fjs.parentNode.insertBefore(js,fjs);}}(document,'script','weatherwidget-io-js');
						</script>
    		</div>
  
 
 </div> 
 
    </div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>