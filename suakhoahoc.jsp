<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sửa Khóa Học </title>
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
                <h3>Sửa Khóa Học</h3>
                <p class="text-subtitle text-muted">Điền thông tin khóa học.</p>
            </div>

            <section class="section">
                <div class="card">
                    <div class="card-body">
                       
                        <form action="${pageContext.request.contextPath}/UpdateKhoaHocServlet" method="post">
                            
                            <input type="hidden" name="id" value="${khoaHoc.id != null ? khoaHoc.id : 0}" />
                            

                            <div class="mb-3">
                                <label for="tenKhoaHoc" class="form-label">Tên Khóa Học</label>
                                <input type="text" class="form-control" id="tenKhoaHoc" name="ten_khoa_hoc"
                                       value="<c:out value='${khoaHoc.tenKhoaHoc}'/>" required>
                            </div>

                            <div class="mb-3">
                                <label for="moTa" class="form-label">Mô Tả</label>
                                <input type="text" class="form-control" id="moTa" name="mo_ta"
                                       value="<c:out value='${khoaHoc.moTa}'/>" required>
                            </div>
                            
                            <div class="mb-3">
                                <label for="hocPhi" class="form-label">Học Phí</label>
                                <input type="text" class="form-control" id="hocPhi" name="hoc_phi"
                                       value="<c:out value='${khoaHoc.hocPhi}'/>" required>
                            </div>

                            <div class="mb-3">
                                <label for="thoiLuong" class="form-label">Thời Lượng</label>
                                <input type="text" class="form-control" id="thoiLuong" name="thoi_luong"
                                       value="<c:out value='${khoaHoc.thoiLuong}'/>" required>
                            </div>

                            <div class="mb-3">
                                <label for="ngayBatDau" class="form-label">Ngày Bắt Đầu Khóa Học</label>
                                <input type="date" class="form-control" id="ngayBatDau" name="ngay_bat_dau"
       								value="<c:out value='${khoaHoc.ngayBatDau}'/>">
                                
                            </div>
                            
                            <div class="mb-3">
    							<label for="ngayKetThuc" class="form-label">Ngày Kết Thúc Khóa Học</label>
    							<input type="date" class="form-control" id="ngayKetThuc" name="ngay_ket_thuc"
           							value="${khoaHoc.ngayKetThuc}" required>
							</div>
                            

                            <div class="mb-3">
    							<label for="trangThai" class="form-label">Trạng thái</label>
    								<select class="form-select" id="trangThai" name="trang_thai">
        								<option value="Đang mở" <c:if test="${khoaHoc.trangThai eq 'Đang mở'}">selected</c:if>>Đang mở</option>
        								<option value="Đã đóng" <c:if test="${khoaHoc.trangThai eq 'Đã đóng'}">selected</c:if>>Đã đóng</option>
        								<option value="Sắp mở" <c:if test="${khoaHoc.trangThai eq 'Sắp mở'}">selected</c:if>>Sắp mở</option>
    								</select>
                            <button type="submit" class="btn btn-primary">
                                Sửa Khoa Học
                            </button>
                            <a href="${pageContext.request.contextPath}/KhoaHocServlet" class="btn btn-secondary">Hủy</a>
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
    