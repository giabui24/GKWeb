<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Chao mung ban ${customer.getName() }</h1>
<h2>Ban co the dang nhap voi ten ${customer.getEmail() } va mat khau ${customer.getMatkhau() }</h2>
Cam on ban da dang ky
<button ><a href='<c:url value ="/danhsach"/>'>Dong</a></button>
</body>
</html>