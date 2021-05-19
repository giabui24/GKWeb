<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>CHI TIET THANH VIEN</h1>
<table style="width:100%">
  <tr>
    <th>Họ và tên:</th>
    <td>${customer.getName() } </td>
  </tr>
  <tr>
    <th>Ngày Sinh:</th>
    <td> ${customer.getNgaysinh()}</td>
  </tr>
  <tr>
    <th>Giới Tính:</th>
    <td>${customer.getGioitinh()}</td>
  </tr>
   <tr>
    <th>Trình độ văn hóa:</th>
    <td>${customer.getTrinhdo()}</td>
  </tr>
   <tr>
    <th>Địa Chỉ:</th>
    <td>${customer.getDiachi()}</td>
  </tr>
   <tr>
    <th>Điện thoại:</th>
    <td>${customer.getSdt()}</td>
  </tr>
     <tr>
    <th>Địa Chỉ email:</th>
    <td>${customer.getEmail()}</td>
  </tr>
</table>
<button><a href='<c:url value="/danhsach"/>' '>danh sach</a></button>

</body>
</html>