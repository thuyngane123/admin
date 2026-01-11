<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sửa Đăng Ký Học </title>
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
      <h3>Sửa Đăng Ký Học</h3>
    </div>

  <section class="section">
    <div class="card">
        <div class="card-body">
			<form action="${pageContext.request.contextPath}/UpdateDangKyHocServlet" method="post">

       <input type="hidden" name="id" value="${dkh.id}">

    <div class="mb-3">
        <label class="form-label">Học viên</label>
        <select class="form-select" name="id_hoc_sinh" required>
            <c:forEach var="hs" items="${dsHocSinh}">
                <option value="${hs.id}"
                        <c:if test="${hs.id == dkh.idHocSinh}">selected</c:if>>
                    ${hs.hoTen}
                </option>
            </c:forEach>
        </select>
    </div>
    <div class="mb-3">
        <label class="form-label">Khóa học</label>
        <select class="form-select" name="id_khoa_hoc" required>
            <c:forEach var="kh" items="${dsKhoaHoc}">
                <option value="${kh.id}"
                        <c:if test="${kh.id == dkh.idKhoaHoc}">selected</c:if>>
                    ${kh.tenKhoaHoc}
                </option>
            </c:forEach>
        </select>
    </div>
    <div class="mb-3">
        <label class="form-label">Lớp học</label>
        <select class="form-select" name="id_lop_hoc">
            <option value="">-- Chưa xếp lớp --</option>
            <c:forEach var="lh" items="${dsLopHoc}">
                <option value="${lh.id}"
                        <c:if test="${lh.id == dkh.idLopHoc}">selected</c:if>>
                    ${lh.lopHoc}
                </option>
            </c:forEach>
        </select>
    </div>
    <div class="mb-3">
        <label class="form-label">Ngày đăng ký</label>
        <input type="date" class="form-control" name="ngay_dang_ky"
               value="${dkh.ngayDangKy}" required>
    </div>

   
    <div class="mb-3">
        <label class="form-label">Trạng Thái</label>
        <select class="form-select" name="trang_thai">
            <option value="Đăng Ký Thành Công" <c:if test="${dkh.trangThai == 'Đăng Ký Thành Công'}">selected</c:if>>Đăng Ký Thành Công</option>
            <option value="Đã Hủy" <c:if test="${dkh.trangThai == 'Đã Hủy'}">selected</c:if>>Đã Hủy</option>
            <option value="Đang Chờ Xếp Lớp" <c:if test="${dkh.trangThai == 'Đang Chờ Xếp Lớp'}">selected</c:if>>Đang Chờ Xếp Lớp</option>
        </select>
    </div>

    <button type="submit" class="btn btn-primary">Cập nhật</button>
    <a href="${pageContext.request.contextPath}/DangKyHocServlet" class="btn btn-secondary">Hủy</a>
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

</body>
</html>