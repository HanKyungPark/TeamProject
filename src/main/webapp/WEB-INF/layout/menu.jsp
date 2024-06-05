<%--
  Created by IntelliJ IDEA.
  User: hankyung
  Date: 5/23/24
  Time: 4:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stylish Menu</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Dancing+Script:wght@400..700&family=East+Sea+Dokdo&family=Jua&family=Gaegu&family=Gamja+Flower&family=Pacifico&family=Single+Day&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <style>
        body * {
            font-family: 'Jua';
        }

        ul.menu {

            list-style: none;

            margin-left: 10%;

        }



        ul.menu li {

            float: left;

            width: 120px;

            font-size: 22px;

            border-top-left-radius: 8px;

            border-top-right-radius: 8px;

            text-align: center;

            margin-right: 10px;

        }



        ul.menu li:hover {

            box-shadow: 0px 2px 0px #3f63bf;

            background-color: rgba(0, 0, 0, 0.01);

        }



        ul.menu li:hover a {

            color: #3f63bf;

        }



        ul.menu li a:hover {

            text-decoration: none;

        }

        ul.menu li:hover::before {
            transform: translate(-50%, -50%) scale(1.1);
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
        }

        ul.menu li:hover {
            transform: translateY(-10px);
        }

        div.loginarea {
           text-align: center;
        }

        div.loginarea button {
            width: 100px;
        }

    </style>
    <c:set var="root" value="<%=request.getContextPath()%>"/>
    <script type="text/javascript">
        $(function () {

            $("#loginfrm").submit(function (e) {
                //기본이벤트 무효화
                e.preventDefault();
                //폼안의 입력값 읽기
                let fdata = $(this).serialize();

                $.ajax({
                    type: "get",
                    dataType: "json",
                    url: `${root}/member/login`,
                    data: fdata,
                    success: function (data) {
                        if (data.status == 'success') {
                            //페이지 새로고침
                            location.reload();
                        } else {
                            alert("아이디 또는 비밀번호가 맞지 않습니다");
                        }
                    },
                });
            });


            //로그아웃 버튼
            $("#btnlogout").click(function () {
                alert("logout");
                $.ajax({
                    type: "get",
                    dataType: "text",
                    url: `${root}/member/logout`,
                    success: function () {
                        //전체 페이지 새로고침
                        location.reload();
                    },
                });
            });
        });

    </script>
</head>
<body>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<div style="margin-left: 20%">

    <ul class="menu">
        <li><a href="${root}/">홈</a></li>
        <li><a href="${root}/user/userinsert">회원가입</a></li>
        <li><a href="${root}/usage/use">이용방법</a></li>
    <li><a href="${root}/game/gameinsert">게임만들기</a></li>

  </ul>

</div>
<!--로그인 모달 다이얼로그-->
<div class="modal" id="myLoginModal">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">회원 로그인</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <form id="loginfrm">
                <div class="modal-body">
                    <table class="table table-bordered">
                        <caption align="top">
                            <label>
                                <input type="checkbox" name="saveid" required="required"
                                ${sessionScope.saveid==null or sessionScope.saveid=='no'?"":"checked"}>&nbsp;아이디저장
                            </label>
                        </caption>
                        <tr>
                            <th class="table-success" width="80">아이디</th>
                            <td>
                                <input type="text" name="id" class="form-control"
                                       required="required"
                                       value="${sessionScope.saveid!=null and sessionScope.saveid=='yes'?sessionScope.loginid:''}">
                            </td>
                        </tr>
                        <tr>
                            <th class="table-success" width="80">비밀번호</th>
                            <td>
                                <input type="password" name="passwd" class="form-control"
                                       required="required">
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-sm btn-danger" id="btnmemberlogin">로그인</button>
                    <button type="button" class="btn btn-sm btn-danger" data-bs-dismiss="modal" id="btnclose">닫기</button>
                </div>
            </form>
        </div>
    </div>
</div>
<div class="loginarea">
    <c:if test="${sessionScope.loginok==null}">
        <button type="button" id="btnlogin" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#myLoginModal"
        style="">로그인</button>
    </c:if>
    <c:if test="${sessionScope.loginok!=null}">
        <b style="font-size: 20px">
                ${sessionScope.loginid}님
            <button type="button" id="btnlogout" style="margin-left: 20px" class="btn btn-success">로그아웃</button>
        </b>
    </c:if>
</div>
</body>
</html>