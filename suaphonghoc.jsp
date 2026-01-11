<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sửa Phòng Học </title>
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
                <h3>Sửa Phòng Học</h3>
                <p class="text-subtitle text-muted">Điền thông tin phòng học.</p>
            </div>

            <section class="section">
                <div class="card">
                    <div class="card-body">
                       
                        <form action="${pageContext.request.contextPath}/UpdatePhongHocServlet" method="post">
                            
                            <input type="hidden" name="id" value="${phongHoc.id != null ? phongHoc.id : 0}" />
                            

                            <div class="mb-3">
                                <label for="tenPhongHoc" class="form-label">Tên Phòng Học</label>
                                <input type="text" class="form-control" id="tenPhongHoc" name="ten_phong"
                                       value="<c:out value='${phongHoc.tenPhong}'/>" required>
                            </div>

                            <div class="mb-3">
                                <label for="siSo" class="form-label">Sĩ Số</label>
                                <input type="text" class="form-control" id="siSo" name="si_so"
                                       value="<c:out value='${phongHoc.siSo}'/>" required>
                            </div>
                            
                            <div class="mb-3">
    							<label for="trangThai" class="form-label">Trạng thái</label>
    								<select class="form-select" id="trangThai" name="trang_thai">
        								<option value="Đang sử dụng" <c:if test="${phongHoc.trangThai eq 'Đang sử dung'}">selected</c:if>>Đang sử dụng</option>
        								<option value="Đang bảo trì" <c:if test="${phongHoc.trangThai eq 'Đang bảo trì'}">selected</c:if>>Đang bảo trì</option>
    								</select>
                            <button type="submit" class="btn btn-primary">
                                Sửa Phòng Học
                            </button>
                            <a href="${pageContext.request.contextPath}/PhongHocServlet" class="btn btn-secondary">Hủy</a>
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
    