<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	table {
		height: 650px;				
	}
	th {
		padding: 15px;
		background-color: #645f5f4f;
	}
	td {
		width : 500px;
		padding: 15px;
		font-size: 17px;
	}

</style>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>회원상세정보</title>

</head>
<body class="hold-transition dark-mode sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">
<div class="user-detail-page">
<div class="wrapper">

  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__wobble" src="resources/images/watermelon.png" alt="AdminLTELogo" height="60" width="60">
  </div>
  
  <jsp:include page="header.jsp" />
  
  <jsp:include page="adminNav.jsp" />

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="margin-left: 300px;">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">${memberVo.nickName}의 정보</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="./index.jsp"><i class="fas fa-home"></i></a></li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
	<div>
		<table border="1">				
				<tr>
         			<th>회원번호</th>
         			<td>${memberVo.member_no}</td>
         		</tr>
			 	<tr>
         			<th>이메일</th>
         			<td>${memberVo.email}</td>
         		</tr>
         		
        		<tr>
         			<th>닉네임</th>
         			<td>${memberVo.nickName}</td>				
      			</tr>
      			
      			<tr>
         			<th>비밀번호</th>
         			<td>${memberVo.password}</td>				
      			</tr>
      			
      			<tr>
         			<th>권한</th>
         			<td>${memberVo.auth}</td>
         		</tr>
      			
      			<tr>
         			<th>등급</th>
         			<td>${memberVo.memberClass}</td>				
      			</tr>
      			
      			<tr>
         			<th>보유 캐시</th>
         			<td>${memberVo.cash}</td>				
      			</tr>
      			
      			<tr>
         			<th>나이</th>
         			<td>${memberVo.age}</td>
         		</tr>
         		
         		<tr>
         			<th>성별</th>
         			<td>${memberVo.gender}</td>
         		</tr>         		         	        		
         		<tr>
         			<th>가입일</th>
         			<td>${memberVo.createDate}</td>
         		</tr>
         		
         		<tr>
         			<th>수정일</th>
         			<td>${memberVo.modifyDate}</td>
         		</tr>     			      			          		
		</table>
		
		<br>
		<button class="btn btn-secondary" onclick ="location.href='./adminUserUpdateForm.jsp'">프로필 수정</button>
		
					
	</div>
	
	
  </div>
  <!-- /.content-wrapper -->

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->

	<jsp:include page="footer.jsp" />

</div>
	<!-- ./wrapper -->	
</div>
</body>
</html>