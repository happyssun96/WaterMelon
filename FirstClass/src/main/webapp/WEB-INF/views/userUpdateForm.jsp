<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>회원상세정보수정</title>

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
   
   input {
      background-color: #3F474E;
      border: 1px solid #BDBDBD;
      border-radius: 0.8em;
      color: white;

</style>

<script type="text/javascript">
   function pageMoveDeleteFnc(no) {
      var url ='./deleteCtr.do?no=' + no;
      location.href = url;
   }
   
   function pageMoveUpdateFnc(member_no) {
      var url = './userUpdateCtr.do?no=' + no;
         location.href = url;
   }
</script>

</head>
<body class="hold-transition dark-mode sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">
<div class="user-detail-page">
<div class="wrapper">

  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__wobble" src="resources/images/watermelon.png" alt="AdminLTELogo" height="60" width="60">
  </div>
  
  <jsp:include page="header.jsp" />
  
  <jsp:include page="nav.jsp" />

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="margin-left: 300px;">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">내 정보 수정</h1>
          </div><!-- /.col -->
          
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
   <div>
      <form action="./userUpdateCtr.do?no=${member.member_no}" method="post">
      <input type="hidden" value='${member.member_no}' name="member_no">
      <table border="1">            
            <tr>
                  <th>회원번호</th>
                  <td>${member.member_no}</td>
               </tr>
             <tr>
                  <th>이메일</th>
                  <td><input type="text" name="email" value="${member.email}"></td>
               </tr>
               
              <tr>
                  <th>닉네임</th>
                  <td><input type="text" name="nickName" value="${member.nickName}"></td>
               </tr>
               
               <tr>
                  <th>비밀번호</th>
                  <td><input type="password" name="password" value="${member.password}"></td>
               </tr>
               
               <tr>
                  <th>권한</th>
                  <td>${member.auth}</td>
               </tr>
               
               <tr>
                  <th>등급</th>
                  <td>
                        <c:if test="${member.memberClass == 0}">
                           관리자
                        </c:if>
                        <c:if test="${member.memberClass == 1}">
                           브론즈
                        </c:if>
                        <c:if test="${member.memberClass == 2}">
                           실버
                        </c:if>
                        <c:if test="${member.memberClass == 3}">
                           골드
                        </c:if>
                        <c:if test="${member.memberClass == 4}">
                           챌린저
                        </c:if>
                  </td>            
               </tr>
               
               <tr>
                  <th>보유 캐시</th>
                  <td>${member.cash}</td>            
               </tr>
               
               <tr>
                  <th>나이</th>
                  <td><input type="text" name="age" value="${member.age}"></td>
               </tr>
               
               <tr>
                  <th>성별</th>
                  <td>
                  <select name = "gender">
                        <option value='' selected>--선택--</option>
                        <option value='M'>남성</option>
                        <option value='F'>여성</option>
                   </select></td>
               </tr>                                         
               <tr>
                  <th>가입일</th>
                  <td>${member.createDate}</td>
               </tr>
               
               <tr>
                  <th>수정일</th>
                  <td>${member.modifyDate}</td>
               </tr>                                             
      </table>
      
      <br>
      <input type="submit" class="btn btn-secondary" value="수정하기">
      <input type="button" class="btn btn-secondary" value="회원삭제" onclick="location.href='./userAccountDismiss.do'" style="margin-left: 10px;">
      <input type="button" class="btn btn-secondary" value="뒤로가기" onclick="history.back(-1)" style="margin-left: 10px;">
      </form>
                  
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