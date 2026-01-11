<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm / Sửa Học Sinh </title>
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
                <h3>Thêm Học Sinh</h3>
                <p class="text-subtitle text-muted">Điền thông tin học sinh.</p>
            </div>

            <section class="section">
                <div class="card">
                    <div class="card-body">
                        <form action="${pageContext.request.contextPath}/AddHocSinhServlet" method="post">
                          
                            <input type="hidden" name="id" value="${hocSinh.id != null ? hocSinh.id : 0}" />
                            

                            <div class="mb-3">
                                <label for="hoTen" class="form-label">Họ Tên Học Sinh</label>
                                <input type="text" class="form-control" id="hoTen" name="ho_ten"
                                       value="<c:out value='${hocSinh.hoTen}'/>" required>
                            </div>

                            <div class="mb-3">
                                <label for="gioiTinh" class="form-label">Giới Tính</label>
                                <input type="text" class="form-control" id="gioiTinh" name="gioi_tinh"
                                       value="<c:out value='${hocSinh.gioiTinh}'/>" required>
                            </div>
                            
                            <div class="mb-3">
                                <label for="diaChi" class="form-label">Địa Chỉ</label>
                                <input type="text" class="form-control" id="diaChi" name="dia_chi"
                                       value="<c:out value='${hocSinh.diaChi}'/>" required>
                            </div>

                            <div class="mb-3">
                                <label for="sdtPhuHuynh" class="form-label">SĐT Phụ Huynh</label>
                                <input type="text" class="form-control" id="sdtPhuHuynh" name="sdt_phu_huynh"
                                       value="<c:out value='${hocSinh.sdtPhuHuynh}'/>" required>
                            </div>

                            <div class="mb-3">
                                <label for="hoTenPhuHuynh" class="form-label">Họ Tên Phụ Huynh</label>
                                <input type="text" class="form-control" id="hoTenPhuHuynh" name="ho_ten_ph"
       value="<c:out value='${hocSinh.hoTenPhuHuynh}'/>">
                                
                            </div>

                            <div class="mb-3">
    <label for="trangThai" class="form-label">Trạng thái</label>
    <select class="form-select" id="trangThai" name="trang_thai">
        <option value="Đang học" <c:if test="${hocSinh.trangThai eq 'Đang học'}">selected</c:if>>Đang học</option>
        <option value="Đã nghỉ" <c:if test="${hocSinh.trangThai eq 'Đã nghỉ'}">selected</c:if>>Đã nghỉ</option>
    </select>
</div>


							<div class="mb-3">
    							<label for="ngayVaoHoc" class="form-label">Ngày vào học</label>
    							<input type="date" class="form-control" id="ngayVaoHoc" name="ngay_vao_hoc"
           							value="${hocSinh.ngayVaoHoc}" required>
							</div>
							<div class="mb-3">
    <label for="idNguoiDung" class="form-label">Người dùng liên kết</label>
    <input type="number" class="form-control" id="idNguoiDung" name="id_nguoi_dung" required>
</div>

                           <button type="submit" class="btn btn-primary">
    								Thêm
							</button>
                           
                            <a href="${pageContext.request.contextPath}/gvHocSinhServelt" class="btn btn-secondary">Hủy</a>
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
