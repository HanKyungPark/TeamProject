<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Dancing+Script:wght@400..700&family=East+Sea+Dokdo&family=Jua&family=Gaegu&family=Gamja+Flower&family=Pacifico&family=Single+Day&display=swap"
          rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <style>
        body * {
            font-family: 'Jua';
        }

        table {
            width: 280px;
            margin: auto;
        }

        .input {
            width: 250px;
            height: 32px;
            font-size: 15px;
            border: 0px;
            border-radius: 15px;
            outline: none;
            padding-left: 10px;
            background-color: rgb(233, 233, 233);
        }

        .btn {
            width: 262px;
            height: 32px;
            font-size: 15px;
            border: 0px;
            border-radius: 15px;
            outline: none;
            padding-left: 10px;
            background-color: rgb(164, 199, 255);
        }

        .btn:active {
            width: 262px;
            height: 32px;
            font-size: 15px;
            border: 0px;
            border-radius: 15px;
            outline: none;
            padding-left: 10px;
            background-color: rgb(61, 135, 255);
        }
        .left-div {
            position: absolute;
            left: -20%;
            top: 70%;
            transform: translateY(-50%);
        }
        .right {
            position: absolute;
            right: -20%;
            top: 70%;
            transform: translateY(-50%);
        }

        .rollback {
                width: 262px;
                height: 32px;
                font-size: 15px;
                border: 0px;
                border-radius: 15px;
                outline: none;
                padding-left: 10px;
                background-color: rgb(164, 199, 255);
            }


    </style>
</head>
<body>
<form action="/user/insert">

    <table>
        <tr>
            <td><h2 style="margin-top: 70px">회원가입</h2></td>
        </tr>
        <tr>
            <td>아이디</td>
        </tr>
        <tr>
            <td><input type="text" class="input" name="id" required="required"></td>
        </tr>
        <tr>
            <td>비밀번호</td>
        </tr>
        <tr>
            <td><input type="password" class="input" name="passwd" required="required"></td>
        </tr>
        <tr>
            <td>이름</td>
        </tr>
        <tr>
            <td><input type="text" class="input" name="name" required="required"></td>
        </tr>
        <tr>
            <td>생년월일</td>
        </tr>
        <tr>
            <td><input type="date" class="input" name="birthday" required="required"></td>
        </tr>
        <tr>
            <td>휴대폰 번호</td>
        </tr>
        <tr>
            <td><input type="text" class="input" name="hp" required="required" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" placeholder="휴대폰 번호"></td>
        </tr>
        <tr>
            <td>주소</td>
        </tr>
        <tr>
            <td><input type="text" name="addr" class="input" required="required"></td>
        </tr>
        <tr>
            <td>성별</td>
        </tr>
        <tr>
            <td>
                <input type="radio" name="gender" required=required value="0">남자
                <input type="radio" name="gender" required="required" value="1">여자
            </td>
        </tr>
        <tr>
            <td><input type="submit" value="가입하기" class="btn" required="required"></td>
        </tr>
        <tr>
            <td><input type="button" value="이전" class="rollback" required="required" onclick="history.back()"></td>
        </tr>

    </table>
    <div class="left-div">
        <img src="/save/game2.webp"/>
    </div>
    <div class="right">
        <img src="/save/game4.png">
    </div>
</form>
</body>
</html>