package com.buihoanggia.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity(name = "CUSTOMER")
public class Customer {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
private int customerid;
@NotNull
@Size(min = 1,message = "Khong duoc de trong")
private String email;
@NotNull
@Size(min= 1,message = "Khong duoc de trong")
private String name;
@NotNull
@Size(min = 8,message = "Mat Khau tu 8 ky tu")
private String matkhau;
private String trinhdo;
private String gioitinh;
@NotNull
@Size(min = 1,message = "Ngay sinh khong hop le")
private String ngaysinh;
private String diachi;
private String sdt;
public Customer() {}
public int getCustomerid() {
	return customerid;
}
public void setCustomerid(int customerid) {
	this.customerid = customerid;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getMatkhau() {
	return matkhau;
}
public void setMatkhau(String matkhau) {
	this.matkhau = matkhau;
}
public String getTrinhdo() {
	return trinhdo;
}
public void setTrinhdo(String trinhdo) {
	this.trinhdo = trinhdo;
}
public String getGioitinh() {
	return gioitinh;
}
public void setGioitinh(String gioitinh) {
	this.gioitinh = gioitinh;
}
public String getNgaysinh() {
	return ngaysinh;
}
public void setNgaysinh(String ngaysinh) {
	this.ngaysinh = ngaysinh;
}
public String getDiachi() {
	return diachi;
}
public void setDiachi(String diachi) {
	this.diachi = diachi;
}
public String getSdt() {
	return sdt;
}
public void setSdt(String sdt) {
	this.sdt = sdt;
}

}
