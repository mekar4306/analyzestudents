<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ÖĞRENCİ FORMU</title>

<link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
 <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
 <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>

<div class="container">
<spring:url value="/ogrenci/updateStudent" var="updateURL"></spring:url>

<h2>Öğrenci Bilgi</h2>

<form:form modelAttribute="ogrenciForm"  method="post" action="${updateURL}"  cssClass="form">
	
	<form:hidden path="id"/>
	
   <div class="form-group">
	    <label>NO</label>
	    <form:input path="NO" cssClass="form-control" id="NO" />
   </div>
    
    <div class="form-group">
	    <label>ADI</label>
	    <form:input path="ADI" cssClass="form-control" id="ADI" />
    </div>
    
    <div class="form-group">
	    <label>SOYADI</label>
	    <form:input path="SOYADI" cssClass="form-control" id="SOYADI" />
    </div>

   <div class="form-group">
	    <label>SINIFI</label>
	    <form:input path="SINIFI" cssClass="form-control" id="SINIFI" /> 
    </div>


      <button type="submit" class="btn btn-primary">KAYDET</button>
</form:form>

</div>

</body>
</html>