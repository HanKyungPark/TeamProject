<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Dancing+Script:wght@400..700&family=East+Sea+Dokdo&family=Jua&family=Gaegu&family=Gamja+Flower&family=Pacifico&family=Single+Day&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <style>
        body *{
            font-family: 'Jua';
        }
        table {
            width: 280px;
            height: 550px;
            margin: auto;
        }
        .email {
            width: 127px;
            height: 32px;
            font-size: 15px;
            border: 0;
            border-color: lightgray;
            border-radius: 15px;
            outline: none;
            padding-left: 10px;
            background-color: rgb(233,233,233);
        }
        .text {
            width: 250px;
            height: 32px;
            font-size: 15px;
            border: 0;
            border-radius: 15px;
            outline: none;
            padding-left: 10px;
            background-color: rgb(233,233,233);
        }
        select {
            width: 100px;
            height: 32px;
            font-size: 15px;
            border: 1;
            border-color: lightgray;
            border-radius: 15px;
            outline: none;
            padding-left: 10px;
        }
        .btn {
            width: 262px;
            height: 32px;
            font-size: 15px;
            border: 0;
            border-radius: 15px;
            outline: none;
            padding-left: 10px;
            background-color: rgb(164, 199, 255);
        }
        .btn:active {
            width: 262px;
            height: 32px;
            font-size: 15px;
            border: 0;
            border-radius: 15px;
            outline: none;
            padding-left: 10px;
            background-color: rgb(61, 135, 255);
        }
    </style>
</head>
<body>
<form action="/user/insert">
    <table>
        <tr>
            <td><h2>회원가입</h2></td>
        </tr>
        <tr><td>아이디</td></tr>
        <tr><td><input type="text" class="text"></td></tr>
        <tr><td>비밀번호</td></tr>
        <tr><td><input type="password" class="text"></td></tr>
        <tr><td>비밀번호 확인</td></tr>
        <tr><td><input type="password" class="text"></td></tr>
        <tr><td>이름</td></tr>
        <tr><td><input type="text" class="text"></td></tr>
        <tr><td>생년월일</td></tr>
        <tr><td><input type="date" class="text"></td></tr>
        <tr><td>성별</td></tr>
        <tr>
            <td>

                <input type="radio" name="gender" value="0">남자
                <input type="radio" name="gender" value="1">여자
            </td>
        </tr>
        <tr>
            <th>
                <i class="bi bi-house-door"></i>
            </th>
            <td>
                <input type="text" name="addr" placeholder="주소">
            </td>
        </tr>
        <tr>
            <th>
                <i class="bi bi-person-badge"></i>
            </th>
            <td>
                <input type="text" name="hp" placeholder="휴대폰 번호">
            </td>
        </tr>
        <tr>
            <th>
                <i class="bi bi-cake2"></i>
            </th>
            <td>
                <input type="date" name="birthday" placeholder="생일" value="2024-01-01">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <button type="submit">회원가입</button>
                <button type="button" onclick="history.back()">이전</button>

            </td>
        </tr>
        <tr><td><input type="submit" value="가입하기" class="btn" onclick="alert('가입 성공!')">
        </td></tr>
    </table>
</form>


</body>
</html>
