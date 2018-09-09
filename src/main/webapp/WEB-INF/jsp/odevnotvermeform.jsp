<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ÖDEV FORMU</title>

<link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
 <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
 <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
 
 
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
 
 
	 <style type="text/css">
	
			body{
				background-size:cover;
				background-color: silver; 
				
				background-image: url(https://cdn.pixabay.com/photo/2015/06/02/12/59/narrative-794978_960_720.jpg);"
			
			
			}
			
			h3,h4{
			    color: white;
			}
	
	</style>
 
  
 
 
</head>
<body>

<div class="container">
<spring:url value="/odev/saveHomeworkNote" var="saveHMWNote"></spring:url>

<h2>NOT VERME SAYFASI</h2>


<form:form modelAttribute="ogrenciNot"  method="post" action="${saveHMWNote}"  cssClass="form">
	
	
	<form:hidden path="id"/>
	<form:hidden path="odevin_teslimtarihi"  />
	<form:hidden path="konusu"   />
	
   <div class="form-group" >  
 
  <table class="table table-bordered"">
   
   <thead class="thead-dark">
      <tr>
      <th scope="row">NO</th>
      <th scope="row">ADI</th>
      <th scope="row">SOYADI</th>
      <th scope="row">SINIFI</th>
      <!-- <th scope="row">KONUSU</th>
      <th scope="row">SON_TESLİM_TARİHİ</th> -->
      <th scope="row">ODEV_NOTU</th>
      <th scope="row">ACIKLAMA</th>
      <th scope="row">KAYDET</th>
      </tr>
  </thead>
  
  <tbody>
   <tr>
     
   <td class="table-active">  <form:input path="no" cssClass="form-control" id="no" />           </td>
   <td class="table-active">  <form:input path="adi" cssClass="form-control" id="adi" />         </td>  
   <td class="table-active">  <form:input path="soyadi" cssClass="form-control" id="soyadi" />   </td> 
   <td class="table-active">  <form:input path="sinifi" cssClass="form-control"  id="sinifi" />   </td> 
   
   <%-- <td class="table-active">  <form:input path="konusu" cssClass="form-control"  id="konusu" />   </td> 
   <td class="table-active">  <form:input path="odevin_teslimtarihi" cssClass="form-control"  id="odevin_teslimtarihi" />   </td> 
    --%>
   <td class="table-active">  <form:input path="odev_notu" cssClass="form-control"  id="odev_notu" />   </td>  
   <td class="table-active">  <form:input path="aciklama"  cssClass="form-control" id="aciklama" />    </td>
   <td class="table-active">    <button type="submit" class="btn btn-outline-light">KAYDET</button>           </td>                                                        </td>
   </tr>
   </tbody>
     
   </table>
   
    </div>

      
</form:form>

</div>



</body>
</html>