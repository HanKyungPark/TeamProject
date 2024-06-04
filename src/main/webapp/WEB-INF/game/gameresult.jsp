<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: songawon
  Date: 2024. 6. 4.
  Time: PM 1:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Dancing+Script:wght@400..700&family=East+Sea+Dokdo&family=Jua&family=Gaegu&family=Gamja+Flower&family=Pacifico&family=Single+Day&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <style>
        body *{
            font-family: 'Jua';
        }
    </style>

    <title>Title</title>
</head>
<c:set var="stpath" value="https://kr.object.ncloudstorage.com/hankyung133/photo"/>

<script>
    $(function (){

    })
</script>
<body>
<c:forEach var="list" items="${list}">
<c:forEach var="game"  items="${game}">

    <c:set var="result1" value="${list.result1}" />
    <c:set var="result2" value="${list.result2}" />

    <!-- 총합 계산 -->
    <c:set var="total" value="${result1 + result2}" />

    <!-- 각 값의 백분율 계산 -->
    <c:set var="percentageResult1" value="${(result1 / total) * 100}" />
    <c:set var="percentageResult2" value="${(result2 / total) * 100}" />

    <fmt:formatNumber var="one" value="${percentageResult1}" type="number" maxFractionDigits="2" minFractionDigits="2"/>
    <fmt:formatNumber var="two" value="${percentageResult2}" type="number" maxFractionDigits="2" minFractionDigits="2"/>

    <table style="width: 100%" class="table table-bordered">
        <caption align="top" style="text-align: center ; margin-right: 15%"><h3>${game.subject}</h3></caption>
    <tr>
        <td style="text-align: center; ">
            <img src="${stpath}/${game.photo1}" style="width: 300px; height: 300px;margin: 5px" >
        </td>
        <td style="text-align: center;">
            <img src="${stpath}/${game.photo2}"  style="width: 300px; height: 300px; margin: 5px" >
        </td>
    </tr>
    <tr>
        <td style="text-align: center">${game.name1}1번 사진 이름</td>
        <td style="text-align: center">${game.name2}2번 사진 이름</td>
    </tr>
    </table>
    <table style="width: 100%">

    <tr style="width: 100%">
        <td style="width: ${one}% ; background-color: red; color: white; text-align: center">${one}(${list.result1}표)</td>
        <td style="width: ${two}%; background-color: #007bff; color: white; text-align: center">${two}(${list.result2}표) </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center">
            <button class="btn btn-outline-secondary" type="button" onclick="location.href='/'">다른게임하기</button>
        </td>
    </tr>
</table>

</c:forEach>
</c:forEach>
</body>
</html>
