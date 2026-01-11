<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sửa Lớp Học </title>
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
            Sửa Lớp Học
        </h3>
        <p class="text-subtitle text-muted">Điền thông tin lớp học.</p>
    </div>

    <section class="section">
        <div class="card">
            <div class="card-body">
                <form action="${pageContext.request.contextPath}/UpdateLopHocServlet" method="post">
                  
                    <input type="hidden" name="id" value="${lopHoc.id != null ? lopHoc.id : 0}" />

                    
                    <div class="mb-3">
                        <label for="idKhoaHoc" class="form-label">Khóa Học</label>
                        <select class="form-select" id="idKhoaHoc" name="id_khoa_hoc" required>
                            <option value="">-- Chọn Khóa Học --</option>
                            <c:forEach var="kh" items="${danhSachKhoaHoc}">
                                <option value="${kh.id}" 
                                    <c:if test="${lopHoc != null && lopHoc.idKhoaHoc == kh.id}">selected</c:if>>
                                    ${kh.tenKhoaHoc}
                                </option>
                            </c:forEach>
                        </select>
                    </div>

                
                    <div class="mb-3">
                        <label for="lopHoc" class="form-label">Tên Lớp</label>
                        <input type="text" class="form-control" id="lopHoc" name="lop_hoc"
                               value="${lopHoc.lopHoc}" required>
                    </div>

                
                    <div class="mb-3">
                        <label for="idGiangVien" class="form-label">Giảng Viên</label>
                        <select class="form-select" id="idGiangVien" name="id_giang_vien" required>
                            <option value="">-- Chọn Giảng Viên --</option>
                            <c:forEach var="gv" items="${danhSachGiangVien}">
                                <option value="${gv.id}" 
                                    <c:if test="${lopHoc != null && lopHoc.idGiangVien == gv.id}">selected</c:if>>
                                    ${gv.hoTen}
                                </option>
                            </c:forEach>
                        </select>
                    </div>

                    <div class="mb-3">
                        <label for="lichHoc" class="form-label">Lịch Học</label>
                        <input type="text" class="form-control" id="lichHoc" name="lich_hoc"
                               value="${lopHoc.lichHoc}" required>
                    </div>

                 
                    <div class="mb-3">
                        <label for="ngayBatDau" class="form-label">Ngày Bắt Đầu</label>
                        <input type="date" class="form-control" id="ngayBatDau" name="ngay_bat_dau"
                               value="${lopHoc.ngayBatDau}" required>
                    </div>

                   
                    <div class="mb-3">
                        <label for="ngayKetThuc" class="form-label">Ngày Kết Thúc</label>
                        <input type="date" class="form-control" id="ngayKetThuc" name="ngay_ket_thuc"
                               value="${lopHoc.ngayKetThuc}" required>
                    </div>
                    
                     <div class="mb-3">
    <label for="trangThai" class="form-label">Trạng thái</label>
    <select class="form-select" id="trangThai" name="trang_thai">
        <option value="Đang mở" <c:if test="${lopHoc.trangThai eq 'Đang mở'}">selected</c:if>>Đang mở</option>
        <option value="Đã Kết Thúc" <c:if test="${lopHoc.trangThai eq 'Đã Kết Thúc'}">selected</c:if>>Đã Kết Thúc</option>
    </select>
</div>

                    <button type="submit" class="btn btn-primary">
                        Sửa Lớp Học
                    </button>
                    <a href="${pageContext.request.contextPath}/LopHocServlet" class="btn btn-secondary">Hủy</a>
                </form>
            </div>
        </div>
    </section>
</div>
       
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
    
