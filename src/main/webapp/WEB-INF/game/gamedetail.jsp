<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: songawon
  Date: 2024. 6. 3.
  Time: PM 7:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<style>
    .hide{
        display: none;
    }
</style>
    <title>Title</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#p1').click(function() {

                updateResult('${subject}', 'result1');
                alert("[${subject}]에대한 투표가 완료되었습니다.")
                $(".hide").slideDown();
            });
            $('#p2').click(function() {
                updateResult('${subject}', 'result2');
                alert("[${subject}]에대한 투표가 완료되었습니다.")
                $(".hide").slideDown();
            });

            function updateResult(subject, column) {
                $.ajax({
                    type: 'POST',
                    url: '/updateResult',
                    dateType:'json',
                    data: { subject: subject, column: column },
                    success: function(response) {

                    },
                    error: function() {

                    }
                });
            }
        });
    </script>
<c:set var="stpath" value="https://kr.object.ncloudstorage.com/hankyung133/photo"/>
<body>
<table style="width: 100%">
    <caption align="top"  style="text-align: center"><h1>${subject}</h1></caption>
    <tr>
<c:forEach var="ele" items="${list}">
    <td style="text-align: center">
        <figure>
        <img id="p1" src="${stpath}/${ele.photo1}" style="width: 300px; height: min(250px); margin-top: 20px;cursor: pointer">
            <figcaption style="margin-top: 30px"><h4>${ele.name1}</h4></figcaption>
        </figure>
    </td>
    <td style="text-align: center"><h1>VS</h1></td>
    <td style="text-align: center">
        <figure>
            <img id="p2" src="${stpath}/${ele.photo2}" style="cursor: pointer; width: 300px; height: min(250px); margin-top: 20px">
            <figcaption style="margin-top: 30px"><h4>${ele.name2}</h4></figcaption>
        </figure>
    </td>
</c:forEach>
</tr>
    <tr>
        <td colspan="3" style="text-align: center">
            <button class="btn btn-secondary" type="button" onclick="location.href='../game/result?subject=${sessionScope.get("subject")}'" >결과보기</button>
        </td>
    </tr>
</table>




</body>
</html>
