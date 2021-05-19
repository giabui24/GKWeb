<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
.error{color: red}
</style>
</head>
<body>
<form:form action="processForm" method="post" modelAttribute="customer" onsubmit="return Validate()">
<label for="email">*Địa Chỉ email:</label><br>
  <form:input path="email" id="email" name="email" type="email" value="giabui21@gmail.com" />
  <form:errors path="email" cssClass="error"/>
  <a>${msg}</a>
  <br>
<label for="matkhau">*Mật khẩu:</label><br>
  <form:input path="matkhau" id="matkhau" name="matkhau" type="password" value="12345678" />
   <form:errors path="matkhau" cssClass="error"/> 
  <br>
<label for="rematkhau">*Nhập lại mật khẩu:</label><br>
  <input type="password" id="rematkhau" name="rematkhau" value="12345678" />
  <a id="passcheck"></a>
<br>
<label for="name">*Họ và tên:</label><br>
  <form:input path="name" id="name" name="name" type="text" value="Giabui" /> 
   <form:errors path="name" cssClass="error"/>
  <br>
<label for="ngaysinh">*Ngày Sinh:</label> </br>
  <form:input path="ngaysinh" id="ngaysinh" name="ngaysinh" placeholder="dd-mm-yyyy" type="date" value="11/11/1999" />
   <form:errors path="ngaysinh" cssClass="error"/>
  <br>
<label for="gioitinh">Giới Tính:</label><br>
  <input type="checkbox" id="gioitinh" name="gioitinh" value="Nữ">
   <label for="gioitinh"> Nữ</label><br>
<label for="trinhdo">Trình độ văn hóa:</label><br>
 <select name="trinhdo" id="trinhdo">
  <option value="Cấp 1">Cấp 1</option>
  <option value="Cấp 2">Cấp 2</option>
  <option value="Cấp 3">Cấp 3 </option>
  <option value="Đại Học">Đại Học</option>
</select>
</br>
<label for="diachi">*Địa Chỉ:</label><br>
<select name="diachi" id="diachi">
  <option value="Hồ Chí Minh">Hồ Chí Minh</option>
  <option value="Hà Nội">Hà Nội</option>
  <option value="Đà Nẵng">Đà Nẵng</option>
  <option value="Cần Thơ">Cần Thơ</option>
</select>
</br>
<label for="sdt">*Điện thoại:</label><br>
  <input type="text" id="sdt" name="sdt"><br>
  <button  type="submit" >Lưu</button>
</form:form>
<script src='<c:url value="/resources/custom.js"/>'></script>
</body>
</html>