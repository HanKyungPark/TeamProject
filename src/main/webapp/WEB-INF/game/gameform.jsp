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
        .smbtn{
            width: 262px;
            height: 32px;
            font-size: 15px;
            border: 0px;
            border-radius: 15px;
            outline: none;
            padding-left: 10px;
            background-color: rgb(61,135,255);
        }
        .smbtn:active{
            width: 262px;
            height: 32px;
            font-size: 15px;
            border-radius: 15px;
            outline: none;
            padding-left: 10px;
            background-color: rgb(61,135,255);
        }
        table {
            width : 100%;
            height: auto;
            margin: auto;
        }
        input {
            border:0px;
            border-radius: 15px;
            outline: none;
            background-color: rgb(233,233,233);
        }
    </style>
    <script>
        $(function (){
            $("#showimg1").click(function (){
                $("#photo1").trigger('click')
            })
            $("#showimg2").click(function (){
                $("#photo2").trigger('click')
            })
            $("#photo1").change(function(){
                let reg=/(.*?)\/(jpg|jpeg|png|gif)$/;
                let f=$(this)[0].files[0]
                if(!f.type.match(reg)){
                    alert("이미지파일만 가능합니다")
                    return;
                }
                if(f){
                    let reader=new FileReader();
                    reader.onload=function(e){
                        $("#showimg1").attr("src",e.target.result);
                    }
                    reader.readAsDataURL($(this)[0].files[0]);
                }
            })
            $("#photo2").change(function(){
                let reg=/(.*?)\/(jpg|jpeg|png|gif)$/;
                let f=$(this)[0].files[0]
                if(!f.type.match(reg)){
                    alert("이미지파일만 가능합니다")
                    return;
                }
                if(f){
                    let reader=new FileReader();
                    reader.onload=function(e){
                        $("#showimg2").attr("src",e.target.result);
                    }
                    reader.readAsDataURL($(this)[0].files[0]);
                }
            })
        })
    </script>
</head>
<body>
<form action="/gameforminsert" method="post" enctype="multipart/form-data">
    <input type="hidden" value="${loginid}" name="id">

    <table class="table">
        <caption align="top" style="text-align: center ;margin-top: 70px"><h2>게임 만들기</h2></caption>
        <tr>
            <th style="width: 100px; align-content: center; text-align: center ">
                제목
            </th>
            <td colspan="2" style="text-align: center">
                <input type="text" name="subject" style="width: auto; height: 100%; font-size: 30px;" >
            </td>
        </tr>
        <tr style="height: 300px;">
            <th style="align-content: center; text-align: center">
                사진
            </th>
            <td style="text-align: center">
                <input type="file" name="photo1" id="photo1" hidden="hidden">
                <label><img src="" id="showimg1" style="width: auto; height:250px"><br>
                <input type="text" name="name1" style="font-size: 25px"></label>
            </td>
            <td style="text-align: center">
                <input type="file" name="photo2" id="photo2" hidden="hidden">
                <label><img src="" id="showimg2" style="width: 250px; height:250px"><br>
                    <input type="text" name="name2" style="font-size: 25px"></label>
            </td>
        </tr>
            <tr>
               <td colspan="3" style="text-align: center">
                   <button type="submit" class="smbtn">제출하기</button>
               </td>
            </tr>
    </table>
</form>

</body>
</html>
