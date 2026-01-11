<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TRUNG TÂM NGOẠI NGỮ</title>

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
                            <a href="index.jsp"><img src="${pageContext.request.contextPath}/assets/images/logo/logo.png" alt="Logo" ></a>
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
                <h3>Quản Lý Trung Tâm</h3>
            </div>
          <div class="row">
    <!-- Tổng khóa học -->
    <div class="col-6 col-lg-3 col-md-6">
        <div class="card">
            <a href="${pageContext.request.contextPath}/KhoaHocServlet" style="text-decoration:none; color:inherit;">
                <div class="card-body px-3 py-4-5">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="stats-icon purple">
                                <i class="bi bi-journal-bookmark-fill"></i>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <h6 class="text-muted font-semibold">Tổng Khóa Học</h6>
                            <h6 class="font-extrabold mb-0">${tongKhoaHoc}</h6>
                        </div>
                    </div>
                </div>
            </a>
        </div>
    </div>

    <!-- Tổng lớp học -->
    <div class="col-6 col-lg-3 col-md-6">
        <div class="card">
            <a href="${pageContext.request.contextPath}/LopHocServlet" style="text-decoration:none; color:inherit;">
                <div class="card-body px-3 py-4-5">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="stats-icon blue">
                                <i class="bi bi-people-fill"></i>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <h6 class="text-muted font-semibold">Tổng Lớp Học</h6>
                            <h6 class="font-extrabold mb-0">${tongLopHoc}</h6>
                        </div>
                    </div>
                </div>
            </a>
        </div>
    </div>

    <!-- Tổng học sinh -->
    <div class="col-6 col-lg-3 col-md-6">
        <div class="card">
            <a href="${pageContext.request.contextPath}/HocSinhServlet" style="text-decoration:none; color:inherit;">
                <div class="card-body px-3 py-4-5">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="stats-icon green">
                                <i class="bi bi-person-lines-fill"></i>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <h6 class="text-muted font-semibold">Tổng Học Sinh</h6>
                            <h6 class="font-extrabold mb-0">${tongHocSinh}</h6>
                        </div>
                    </div>
                </div>
            </a>
        </div>
    </div>

    <!-- Tổng giáo viên -->
    <div class="col-6 col-lg-3 col-md-6">
        <div class="card">
            <a href="${pageContext.request.contextPath}/GiangVienServlet" style="text-decoration:none; color:inherit;">
                <div class="card-body px-3 py-4-5">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="stats-icon red">
                                <i class="bi bi-person-badge-fill"></i>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <h6 class="text-muted font-semibold">Tổng Giáo Viên</h6>
                            <h6 class="font-extrabold mb-0">${tongGiangVien}</h6>
                        </div>
                    </div>
                </div>
            </a>
        </div>
    </div>
</div>
          
            </div>

            <footer>
                <div class="footer clearfix mb-0 text-muted">
                    <div class="float-start">
                        <p>2021 &copy; Mazer</p>
                    </div>
                    <div class="float-end">
                        <p>Crafted with <span class="text-danger"><i class="bi bi-heart"></i></span> by <a
                                href="http://ahmadsaugi.com">A. Saugi</a></p>
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

    