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

<table class="table table-bordered" style="">
    <tr>

        <C:forEach var="ele" items="${list}" varStatus="a">
        <td style="cursor:pointer;;text-align: center; width: 200px; height: 200px;" onclick="location.href='./game/gameplay?subject=${ele.subject}'">
            <a   onclick="location.href='./game/gameplay?subject=${ele.subject}'" style=";cursor: pointer;margin-top: 10px;max-height: 40px"><b style="color: #3f63bf;text-decoration: underline; "><div style="min-height: 40px; margin-top: 15px">${ele.subject}</div></b></a><br>
            <div class="abc" style="height: 130px; align-content: center">
            <img src="${stpath}/${ele.photo1}" style="width: 100px;height: 100px ; margin-top: 0px" >vs
            <img src="${stpath}/${ele.photo2}" style="width: 100px;height: 100px">
            </div>
            <c:out value="${map[ele.id]}" />
            <c:forEach var="tr" items="${TotalResult}" varStatus="b">
                <c:if test="${a.index==b.index}">
                    <br>현재 투표수 :${tr}
                    <c:if test="${tr>=200}">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-fire" viewBox="0 0 16 16" style="color: red">
                            <path d="M8 16c3.314 0 6-2 6-5.5 0-1.5-.5-4-2.5-6 .25 1.5-1.25 2-1.25 2C11 4 9 .5 6 0c.357 2 .5 4-2 6-1.25 1-2 2.729-2 4.5C2 14 4.686 16 8 16m0-1c-1.657 0-3-1-3-2.75 0-.75.25-2 1.25-3C6.125 10 7 10.5 7 10.5c-.375-1.25.5-3.25 2-3.5-.179 1-.25 2 1 3 .625.5 1 1.364 1 2.25C11 14 9.657 15 8 15"/>
                        </svg>
                        <b style="color:red">HOT</b>
                    </c:if>
                </c:if>
            </c:forEach>

        </td>
        <c:if test="${(a.count+1)%3==1}">
            </tr><tr>
        </c:if>

    </C:forEach>
    </tr>
</table>

</body>
</html>
