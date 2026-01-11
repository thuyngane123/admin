<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sửa Tài Liệu </title>
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
           Sửa Tài Liệu
        </h3>
        <p class="text-subtitle text-muted">Điền thông tin tài liệu.</p>
    </div>

    <section class="section">
        <div class="card">
            <div class="card-body">
                <form action="${pageContext.request.contextPath}/UpdateTaiLieuServlet" method="post">
                
                    <input type="hidden" name="id" value="${taiLieu.id != null ? taiLieu.id : 0}" />

                
                    <div class="mb-3">
                        <label for="idKhoaHoc" class="form-label">Khóa Học</label>
                        <select class="form-select" id="idKhoaHoc" name="id_khoa_hoc" required>
                            <option value="">-- Chọn Khóa Học --</option>
                            <c:forEach var="kh" items="${danhSachKhoaHoc}">
                                <option value="${kh.id}" 
                                    <c:if test="${taiLieu != null && taiLieu.idKhoaHoc == kh.id}">selected</c:if>>
                                    ${kh.tenKhoaHoc}
                                </option>
                            </c:forEach>
                        </select>
                    </div>

                   
                    <div class="mb-3">
                        <label for="tieuDe" class="form-label">Têu đề</label>
                        <input type="text" class="form-control" id="tieuDe" name="tieu_de"
                               value="${taiLieu.tieuDe}" required>
                    </div>

                    
                    <div class="mb-3">
                        <label for="duongDan" class="form-label">Đường Dẫn</label>
                        <input type="text" class="form-control" id="duongDan" name="duong_dan"
                               value="${taiLieu.duongDan}" required>
                    </div>

                
                    <div class="mb-3">
                        <label for="moTa" class="form-label">Mô Tả</label>
                        <input type="text" class="form-control" id="moTa" name="mo_ta"
                               value="${taiLieu.moTa}" required>
                    </div>

                    <div class="mb-3">
                        <label for="ngayTai" class="form-label">Ngày Tải</label>
                        <input type="date" class="form-control" id="ngayTai" name="ngay_tai"
                               value="${taiLieu.ngayTai}" required>
                    </div>

                    <button type="submit" class="btn btn-primary">
                        Sửa Tài Liệu
                    </button>
                    <a href="${pageContext.request.contextPath}/TaiLieuServlet" class="btn btn-secondary">Hủy</a>
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
    
