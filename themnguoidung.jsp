<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm Người Dùng </title>
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
                <h3>Thêm Người Dùng</h3>
                <p class="text-subtitle text-muted">Điền thông tin người dùng.</p>
            </div>

            <section class="section">
                <div class="card">
                    <div class="card-body">
                       
                        <form action="${pageContext.request.contextPath}/AddNguoiDungServlet" method="post">
                        
                            <input type="hidden" name="id" value="${nguoiDung.id != null ? nguoiDung.id : 0}" />
                            

                            <div class="mb-3">
                                <label for="tenDangNhap" class="form-label">Tên đăng nhập</label>
                                <input type="text" class="form-control" id="tenDangNhap" name="ten_dang_nhap"
                                       value="<c:out value='${nguoiDung.tenDangNhap}'/>" required>
                            </div>

                            <div class="mb-3">
                                <label for="matKhau" class="form-label">Mật khẩu</label>
                                <input type="password" class="form-control" id="matKhau" name="mat_khau"
                                       value="<c:out value='${nguoiDung.matKhau}'/>" required>
                            </div>

                            <div class="mb-3">
                                <label for="email" class="form-label">Email</label>
                                <input type="email" class="form-control" id="email" name="email"
                                       value="<c:out value='${nguoiDung.email}'/>" required>
                            </div>

                            <div class="mb-3">
                                <label for="sdt" class="form-label">Số điện thoại</label>
                                <input type="text" class="form-control" id="sdt" name="sdt"
                                       value="<c:out value='${nguoiDung.sdt}'/>">
                            </div>

                            <div class="mb-3">
                                <label for="idVaiTro" class="form-label">Vai trò</label>
                                <select class="form-select" id="idVaiTro" name="id_vai_tro">
                                    <option value="1" <c:if test="${nguoiDung.idVaiTro == 1}">selected</c:if>>Admin</option>
                                    <option value="2" <c:if test="${nguoiDung.idVaiTro == 2}">selected</c:if>>Giảng Viên</option>
                                    <option value="3" <c:if test="${nguoiDung.idVaiTro == 3}">selected</c:if>>Học Sinh</option>
                                    
                                </select>
                            </div>

                            <div class="mb-3">
                                <label for="trangThai" class="form-label">Trạng thái</label>
                                <select class="form-select" id="trangThai" name="trang_thai">
                                    <option value="1" <c:if test="${nguoiDung.trangThai eq '1'}">selected</c:if>>Hoạt động</option>
                                    <option value="0" <c:if test="${nguoiDung.trangThai eq '0'}">selected</c:if>>Khóa</option>
                                </select>
                            </div>

                            <button type="submit" class="btn btn-primary">
                                Thêm Người Dùng
                            </button>
                            <a href="${pageContext.request.contextPath}/NguoiDungServlet" class="btn btn-secondary">Hủy</a>
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
