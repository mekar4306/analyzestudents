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
<h2>Öğrenci Listesi</h2>

<spring:url value="/ogrenci/siniflistesonuc" var="siniflist" />

<form:form modelAttribute="ogrenciForm"   method="GET" action="${siniflist}"  cssClass="form">

<form:hidden path="id"/>
<form:hidden path="NO"/>
<form:hidden path="ADI"/>
<form:hidden path="SOYADI" />

           <div class="form-group">
               <td>
                  <form:select path = "SINIFI">
                     <form:option value = "NONE" label = "SINIF SEÇİNİZ"/>
                     <form:options items = "${verilensiniflar}" />
                  </form:select>     	
               </td>
           </div>
      
  <button type="submit" class="btn btn-primary">LİSTELE</button>
</form:form>




</body>
</html>