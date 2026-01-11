<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sửa Buổi Học </title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/app.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendors/bootstrap-icons/bootstrap-icons.css">
</head>
<body>
<div id="app">
    <div id="main">
        <header class="mb-3">
            <a href="#" class="burger-btn d-block d-xl-none">
                <i class="bi bi-justify fs-3"></i>
            </a>
        </header>

       <div class="page-heading">
    <div class="page-title">
        <h3>
          Sửa Buổi Học
        </h3>
     
    </div>

  <section class="section">
    <div class="card">
        <div class="card-body">

             <form action="${pageContext.request.contextPath}/UpdateBuoiHocServlet" method="post">

        <input type="hidden" name="id" value="${buoiHoc.id != null ? buoiHoc.id : 0}">

       
        <div class="mb-3">
            <label class="form-label">Lớp Học</label>
            <select class="form-select" name="id_lop_hoc" required>
                <option value="">-- Chọn lớp học --</option>
                <c:forEach var="lh" items="${danhSachLopHoc}">
                    <option value="${lh.id}"
                        <c:if test="${buoiHoc != null && buoiHoc.idLopHoc == lh.id}">selected</c:if>>
                        ${lh.lopHoc}
                    </option>
                </c:forEach>
            </select>
        </div>

     
        <div class="mb-3">
            <label class="form-label">Phòng Học</label>
            <select class="form-select" name="id_phong_hoc" required>
                <option value="">-- Chọn phòng học --</option>
                <c:forEach var="ph" items="${danhSachPhongHoc}">
                    <option value="${ph.id}"
                        <c:if test="${buoiHoc != null && buoiHoc.idPhongHoc == ph.id}">selected</c:if>>
                        ${ph.tenPhong}
                    </option>
                </c:forEach>
            </select>
        </div>
			<input type="time" class="form-control" name="thoi_gian_bat_dau"
       			value="${buoiHoc.thoiGianBatDau.toString().substring(0,5)}">

			<input type="time" class="form-control" name="thoi_gian_ket_thuc"
       			value="${buoiHoc.thoiGianKetThuc.toString().substring(0,5)}">

        <div class="mb-3">
            <label class="form-label">Ngày Học</label>
            <input type="date" class="form-control" name="ngay_hoc"
                   value="${buoiHoc.ngayHoc}">
        </div>

      
        <div class="mb-3">
            <label class="form-label">Nội Dung Buổi Học</label>
            <textarea class="form-control" name="noi_dung">${buoiHoc.noiDung}</textarea>
        </div>

        <button type="submit" class="btn btn-primary">Cập Nhật Buổi Học</button>

        <a href="${pageContext.request.contextPath}/BuoiHocServlet" class="btn btn-secondary">Hủy</a>
    </form>

        </div>
    </div>
</section>
  
</div>
        
        <footer>
            <div class="footer clearfix mb-0 text-muted">
                <div class="float-start">
                    <p>2021 &copy; Mazer</p>
                </div>
            </div>
        </footer>
    </div>
</div>
<script src="assets/js/bootstrap.bundle.min.js"></script>
</body>
</html>
    
