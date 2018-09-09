<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"     prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags"   prefix="spring"%>      
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ÖĞRENCİ SAYFASI</title>
 
<link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
 <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
 <script src="../../webjars/jquery/3.0.0/jquery.min.js"></script>
</head>

<body>


<br/><br/>
 

<div class="container">  

	<div class="row">
		<div class="col-md-10">
	 	    <h5>Hoşgeldin ${pageContext.request.userPrincipal.name} | </h5>
	 	 </div>   
	 	 
	 	 
	 	 <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
         </form>
         
        <h5> <a onclick="document.forms['logoutForm'].submit()">Çıkış</a></h5>
	 	  
	</div> 

<pre><h1>Ö Ğ R E N C İ           L İ S T E S İ</h1></pre>


<br/>


<table class="table table-hover table table-bordered">
  

  <thead class="thead-dark">
    <tr>
      <th scope="row">ID</th>
      <th scope="row">NO</th>
      <th scope="row">ADI</th>
      <th scope="row">SOYADI</th>
      <th scope="row">SINIFI</th>
      <th scope="row">DÜZENLE</th>
      <th scope="row">SİL</th>
    </tr>
  </thead>
  
  <tbody>
  <c:forEach items="${ogrenciListesi}" var="ogrenci">
    
    <tr>
      <td>${ogrenci.id} </td>
      <td>${ogrenci.NO} </td>
      <td>${ogrenci.ADI} </td>
      <td>${ogrenci.SOYADI} </td>
      <td>${ogrenci.SINIFI} </td>  
     
     
     <td>
       <spring:url value="/ogrenci/updateStudent/${ogrenci.id}" var="updateURL" />
       <a class="btn btn-light" href="${updateURL }" role="button" >DÜZENLE</a>
      </td>
      
      <td>
       <spring:url value="/ogrenci/deleteStudent/${ogrenci.id}" var="deleteURL" />
       <a class="btn btn-light" href="${deleteURL }" role="button" >SİL</a>
      </td>
      
      
    </tr>
    
  </c:forEach>  
  
  
  </tbody>
</table>



<table class="table">

<tr>     
	
	<td>  
	
	<spring:url value="/ogrenci/siniflistesonuc" var="siniflist" />
	
       <form:form modelAttribute="ogrenciForm"   method="GET" action="${siniflist}"  cssClass="form">
       
          <form:hidden path="id"/><form:hidden path="NO"/>
          <form:hidden path="ADI"/><form:hidden path="SOYADI" />
    
                  <form:select path = "SINIFI">
                     <form:option value = "NONE" label = "SINIF SEÇİNİZ"/>
                     <form:options items = "${verilensiniflar}" />
                  </form:select>     	
     
     </td>  
       
          
       <td>    
            <button type="submit" class="btn  btn-lg btn-primary btn-block">LİSTELE</button>
            </form:form>
       </td>
       
       <td> 
		  <spring:url value="/ogrenci/addStudent" var="addStudent" />
	      <a class=" btn btn-lg btn-primary btn-block" href="${addStudent}" role="button" >ÖĞRENCİ EKLE</a>   
     </td>
       
       
      <td> 
		  <spring:url value="/odev/odevlist" var="listHMWURL" />
	      <a class=" btn btn-lg btn-primary btn-block" href="${listHMWURL}" role="button" >ÖDEV LİSTELE</a>   
     </td>
	
	
	<td>
	  <spring:url value="/odev/addHomework" var="addHomework" />
      <a class="btn btn-lg btn-primary btn-block" href="${addHomework }" role="button" >ÖDEV VER</a>   
    </td>
	
	<td>
	  <spring:url value="/odev/odevlist" var="listHMWURL" />
      <a class="btn btn-lg btn-primary btn-block" href="${listHMWURL}" role="button" >ÖDEVE NOT VER</a>   
   </td>
	


</tr>
</table>



</div>
</body>
</html>