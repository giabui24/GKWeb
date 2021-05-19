<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>
<body>
<h1>DANH SÁCH THÀNH VIÊN</h1>
<p>Tổng số thành viên ${soluong}  </p>
<button><a href='<c:url value="/"/>'>Them Thanh Vien</a></button><br>
<label for="gioitinh1">Giới tính</label><br>
 <select name="" id="gioitinh1">
 <option >Vui lòng chọn</option>
  <option value="Nam">Nam</option>
  <option  value="Nữ">Nữ</option>
  </select>
  <div id="container">
  <div id="container-all">
   <table border="2">
                                <thead>
<!--                                 <tr class="title-top" background="b"> -->
                                    <th class="product-thumbnail">Họ Tên</th>
                                    <th class="product-name">Ngày Sinh</th>
                                    <th class="product-price">Giới Tính</th>
                                    <th class="product-quantity">Email</th>
                           
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="customer" items="${customer}">
                                 <tr>
                                    <td class="product-name">${customer.getName()} 
                                    </td>
                                    <td class="product-name2 text-left" >
                                    ${customer.getNgaysinh() } 
                                    </td>
                                    <td class="product-price">${customer.getGioitinh() }</td>
                                    <td class="product-quantity"><a href='<c:url value="/chitiet/${customer.getCustomerid()}" />'>${customer.getEmail() } </a></td>
                                   
                                </tr>
                                </c:forEach>
                             
                              
                                </tbody>
                            </table>
</div>
<div style="display: none;" id="container-nam">
   <table  border="2">
                                <thead>
<!--                                 <tr class="title-top" background="b"> -->
                                    <th class="product-name">Họ Tên</th>
                                    <th class="product-date">Ngày Sinh</th>
                                    <th class="product-sex">Giới Tính</th>
                                    <th class="product-email">Email</th>
                           
                                </tr>
                                </thead>
                                <tbody id="tablenam" >
                               
                              
                          
                                </tbody>
                            </table>
</div>
<div style="display: none;" id="container-nu">
   <table border="2">
                                <thead>
<!--                                 <tr class="title-top" background="b"> -->
                                    <th class="product-thumbnail">Họ Tên</th>
                                    <th class="product-name">Ngày Sinh</th>
                                    <th class="product-price">Giới Tính</th>
                                    <th class="product-quantity">Email</th>
                           
                                </tr>
                                </thead>
                                <tbody id="tablenu">
                              
                              
                                </tbody>
                            </table>
</div>
</div>
<script src='<c:url value="/resources/custom.js"/>'></script>
</body>
</html>