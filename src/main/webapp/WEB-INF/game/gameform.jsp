<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게임 만들기</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Dancing+Script:wght@400..700&family=East+Sea+Dokdo&family=Jua&family=Gaegu&family=Gamja+Flower&family=Pacifico&family=Single+Day&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <style>
        body * {
            font-family: 'Jua';
        }
        .container {
            max-width: 800px;
            margin: 50px auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h2 {
            font-size: 2em;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
        }
        th, td {
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #007bff;
            color: white;
            border-radius: 10px 0 0 10px;
        }
        td {
            background-color: #f8f9fa;
        }
        input[type="text"], input[type="file"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .smbtn {
            width: 100%;
            padding: 10px;
            font-size: 1em;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: white;
            cursor: pointer;
        }
        .smbtn:active {
            background-color: #0056b3;
        }
        .img-preview {
            max-width: 100%;
            height: auto;
            cursor: pointer;
            border: 2px dashed #ddd;
            border-radius: 10px;
            padding: 10px;
        }
    </style>
    <script>
        $(function (){
            $("#showimg1").click(function (){
                $("#photo1").trigger('click');
            });
            $("#showimg2").click(function (){
                $("#photo2").trigger('click');
            });
            $("#photo1").change(function(){
                let reg = /(.*?)\/(jpg|jpeg|png|gif)$/;
                let f = $(this)[0].files[0];
                if (!f.type.match(reg)) {
                    alert("이미지파일만 가능합니다");
                    return;
                }
                if (f) {
                    let reader = new FileReader();
                    reader.onload = function(e){
                        $("#showimg1").attr("src", e.target.result);
                    }
                    reader.readAsDataURL(f);
                }
            });
            $("#photo2").change(function(){
                let reg = /(.*?)\/(jpg|jpeg|png|gif)$/;
                let f = $(this)[0].files[0];
                if (!f.type.match(reg)) {
                    alert("이미지파일만 가능합니다");
                    return;
                }
                if (f) {
                    let reader = new FileReader();
                    reader.onload = function(e){
                        $("#showimg2").attr("src", e.target.result);
                    }
                    reader.readAsDataURL(f);
                }
            });
        });
    </script>
</head>
<body>
<div class="container">
    <form action="/gameforminsert" method="post" enctype="multipart/form-data">
        <input type="hidden" value="${loginid}" name="id" required="required">

        <table class="table">
            <caption align="top"><h2>게임 만들기</h2></caption>
            <tr>
                <th>제목</th>
                <td colspan="2"><input type="text" name="subject"></td>
            </tr>
            <tr>
                <th>사진</th>
                <td>
                    <input type="file" name="photo1" id="photo1" hidden required="required">
                    <label>
                        <img style="width: 500px;height: 400px" src="/save/no1.png" id="showimg1" class="img-preview"><br>
                        <input type="text" name="name1" placeholder="이름을 입력하세요" required="required">
                    </label>
                </td>
                <td>
                    <input type="file" name="photo2" id="photo2" hidden required="required">
                    <label>
                        <img style="width: 500px;height: 400px" src="/save/no1.png" id="showimg2" class="img-preview"><br>
                        <input type="text" name="name2" placeholder="이름을 입력하세요" required="required">
                    </label>
                </td>
            </tr>
            <tr>
                <td colspan="3"><button type="submit" class="smbtn">제출하기</button></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>