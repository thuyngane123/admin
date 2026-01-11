<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sửa Giảng Viên</title>
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
                <h3>Sửa Giảng Viên</h3>
              
            </div>

            <section class="section">
                <div class="card">
                    <div class="card-body">
                     
                        <form action="${pageContext.request.contextPath}/UpdateGiangVienServlet" method="post">
    				
    						<input type="hidden" name="id" value="${giangVien.id != null ? giangVien.id : 0}" />

    					
    						<div class="mb-3">
       					 	<label for="idNguoiDung" class="form-label">Người dùng</label>
        					<select class="form-select" id="idNguoiDung" name="idNguoiDung" required>
            				<option value="">-- Chọn người dùng --</option>
            				<c:forEach var="nd" items="${listNguoiDung}">
                				<option value="${nd.id}"
                    				<c:if test="${giangVien.idNguoiDung == nd.id}">selected</c:if>>
                    					${nd.hoTen} (${nd.tenDangNhap})
                				</option>
            				</c:forEach>
        					</select>
    					</div>

    					<div class="mb-3">
        					<label for="trinhDo" class="form-label">Trình độ</label>
        					<input type="text" class="form-control" id="trinhDo" name="trinhDo"
               					value="<c:out value='${giangVien.trinhDo}'/>" required>
    					</div>

    					<div class="mb-3">
        					<label for="chuyenMon" class="form-label">Chuyên môn</label>
        					<input type="text" class="form-control" id="chuyenMon" name="chuyenMon"
               					value="<c:out value='${giangVien.chuyenMon}'/>" required>
    					</div>

    					<div class="mb-3">
        					<label for="kinhNghiem" class="form-label">Kinh nghiệm (năm)</label>
        					<input type="number" class="form-control" id="kinhNghiem" name="kinhNghiem"
               					value="<c:out value='${giangVien.kinhNghiem}'/>" required>
    					</div>

    					<button type="submit" class="btn btn-primary">
        				Sửa
    					</button>
    						<a href="${pageContext.request.contextPath}/GiangVienServlet" class="btn btn-secondary">Hủy</a>
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
    