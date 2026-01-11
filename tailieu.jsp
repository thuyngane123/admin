<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý Tài Liệu </title>

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendors/iconly/bold.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendors/bootstrap-icons/bootstrap-icons.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/app.css">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/images/favicon.svg" type="image/x-icon">
    
</head>

<body>
    <div id="app">
        <div id="sidebar" class="active">
            <div class="sidebar-wrapper active">
                <div class="sidebar-header">
                    <div class="d-flex justify-content-between">
                        <div class="logo">
                            <a href="index.jsp"><img src="${pageContext.request.contextPath}/assets/images/logo/logo.png" alt="Logo" srcset=""></a>
                        </div>
                        <div class="toggler">
                            <a href="#" class="sidebar-hide d-xl-none d-block"><i class="bi bi-x bi-middle"></i></a>
                        </div>
                    </div>
                </div>
                <div class="sidebar-menu">
    <ul class="menu">

        <!-- Dashboard -->
        <li class="sidebar-title">Menu</li>

        <li class="sidebar-item">
            <a href="views/Admin/index.jsp" class="sidebar-link">
                <i class="bi bi-grid-fill"></i>
                <span>Thống Kê</span>
            </a>
        </li>

        <!-- Quản lý -->
        <li class="sidebar-title">Quản lý & Chức năng</li>

        <li class="sidebar-item">
            <a href="${pageContext.request.contextPath}/NguoiDungServlet" class="sidebar-link">
                <i class="bi bi-people-fill"></i>
                <span>Quản lý Người Dùng</span>
            </a>
        </li>

        <li class="sidebar-item">
            <a href="${pageContext.request.contextPath}/GiangVienServlet" class="sidebar-link">
                <i class="bi bi-person-badge-fill"></i>
                <span>Quản lý Giảng Viên</span>
            </a>
        </li>

        <li class="sidebar-item">
            <a href="${pageContext.request.contextPath}/HocSinhServlet" class="sidebar-link">
                <i class="bi bi-person-lines-fill"></i>
                <span>Quản lý Học Sinh</span>
            </a>
        </li>

        <li class="sidebar-item">
            <a href="${pageContext.request.contextPath}/KhoaHocServlet" class="sidebar-link">
                <i class="bi bi-journal-bookmark-fill"></i>
                <span>Quản lý Khóa Học</span>
            </a>
        </li>

        <li class="sidebar-item">
            <a href="${pageContext.request.contextPath}/LopHocServlet" class="sidebar-link">
                <i class="bi bi-building"></i>
                <span>Quản lý Lớp Học</span>
            </a>
        </li>

        <li class="sidebar-item">
            <a href="${pageContext.request.contextPath}/PhongHocServlet" class="sidebar-link">
                <i class="bi bi-door-open-fill"></i>
                <span>Quản lý Phòng Học</span>
            </a>
        </li>

        <li class="sidebar-item">
            <a href="${pageContext.request.contextPath}/BuoiHocServlet" class="sidebar-link">
                <i class="bi bi-calendar-check-fill"></i>
                <span>Quản lý Buổi Học</span>
            </a>
        </li>

        <li class="sidebar-item">
            <a href="${pageContext.request.contextPath}/TaiLieuServlet" class="sidebar-link">
                <i class="bi bi-folder-fill"></i>
                <span>Quản lý Tài Liệu</span>
            </a>
        </li>

        <li class="sidebar-item">
            <a href="${pageContext.request.contextPath}/DangKyHocServlet" class="sidebar-link">
                <i class="bi bi-clipboard-data-fill"></i>
                <span>Quản lý Đăng Ký Học</span>
            </a>
        </li>

        <!-- Logout -->
        <li class="sidebar-item">
            <a href="${pageContext.request.contextPath}/LoginServlet" class="sidebar-link">
                <i class="bi bi-box-arrow-right"></i>
                <span>Đăng Xuất</span>
            </a>
        </li>

    </ul>
</div>
                <button class="sidebar-toggler btn x"><i data-feather="x"></i></button>
            </div>
        </div>
        <div id="main">
            <header class="mb-3">
                <a href="#" class="burger-btn d-block d-xl-none">
                    <i class="bi bi-justify fs-3"></i>
                </a>
            </header>

            <div class="page-heading">
                <div class="page-title">
                    <div class="row">
                        <div class="col-12 col-md-6 order-md-1 order-last">
                            <h3>Quản lý Tài Liệu</h3>
                            <p class="text-subtitle text-muted">Danh sách tất cả tài liệu của trung tâm.</p>
                        </div>
                        <div class="col-12 col-md-6 order-md-2 order-first">
                            <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">Trang chủ</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Quản lý tài liệu</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
                <section class="section">
    <div class="card">
        <div class="card-header">
            Danh sách Tài Liệu
            <div class="float-end">
                <a href="AddTaiLieuServlet" class="btn btn-primary btn-sm">Thêm tài liệu</a>
            </div>
        </div>
        <div class="card-body">
            <table class="table table-striped" id="table1">
                <thead>
                    <tr>
                        <th>Khóa học</th>
                        <th>Tiêu Đề</th>
                        <th>Đường Dẫn</th>
                        
                        <th>Hành động</th>
                    </tr>
                </thead>
                <tbody>
                   <c:forEach var="taiLieu" items="${danhSachTaiLieu}">
    <tr>
        <td><c:out value="${taiLieu.tenKhoaHoc}" /></td>
        <td><c:out value="${taiLieu.tieuDe}" /></td>
        <td><c:out value="${taiLieu.duongDan}" /></td>
       
        <td>
            <a href="UpdateTaiLieuServlet?action=edit&id=${taiLieu.id}" class="btn btn-sm btn-info">Sửa</a>
            <a href="TaiLieuServlet?action=delete&id=${taiLieu.id}" 
               onclick="return confirm('Bạn có chắc chắn muốn xóa tài liệu ${taiLieu.tieuDe} không?')"
               class="btn btn-sm btn-danger">Xóa</a>
        </td>
    </tr>
</c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</section>
                
            </div>

            <footer>
                <div class="footer clearfix mb-0 text-muted">
                    <div class="float-start">
                        <p>2021 &copy; Mazer</p>
                    </div>
                    <div class="float-end">
                        <p>Crafted with <span class="text-danger"><i class="bi bi-heart-fill icon-mid"></i></span>
                            by <a href="https://ahmadsaugi.com">Saugi</a></p>
                    </div>
                </div>
            </footer>
            </div>
        </div>

    <script src="${pageContext.request.contextPath}/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/vendors/apexcharts/apexcharts.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/pages/dashboard.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
    </body>

    