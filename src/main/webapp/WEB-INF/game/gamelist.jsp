<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
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
    </style>
</head>
<c:set var="stpath" value="https://kr.object.ncloudstorage.com/hankyung133/photo"/>
<body>
<table class="table table-bordered" style=";">
    <tr>
        <C:forEach var="ele" items="${list}" varStatus="a">
        <td style="text-align: center; width: 200px; height: 200px;">
            <a onclick="location.href='./game/gameplay?subject=${ele.subject}'" style="height: 20px;margin-top: 10px;"><b style="color: #3f63bf;text-decoration: underline">${ele.subject}</b></a><br>
            <div class="abc" style="height: 160px; align-content: center">
                <img src="${stpath}/${ele.photo1}" style="width: 100px;height: 100px">vs
                <img src="${stpath}/${ele.photo2}" style="width: 100px;height: 100px">
            </div>

            <b style="height: 20px">ID:${ele.id}</b>

        </td>
        <c:if test="${(a.count+1)%3==0}">
    </tr><tr>
    </c:if>

    </C:forEach>
</tr>
</table>

</body>
</html>
