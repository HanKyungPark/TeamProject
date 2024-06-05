<%--
  Created by IntelliJ IDEA.
  User: hankyung
  Date: 6/3/24
  Time: 5:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Balance Game</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Dancing+Script:wght@400..700&family=East+Sea+Dokdo&family=Jua&family=Gaegu&family=Gamja+Flower&family=Pacifico&family=Single+Day&display=swap"
          rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <style>
        body * {
            font-family: 'Jua';
            color: #333;
        }

        .container {
            max-width: 800px;
            margin: 10px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .header img {
            display: block;
            margin: 0 auto 20px;
            width: 50%;
            border-radius: 8px;
        }

        .header strong {
            font-size: 24px;
            color: #007bff;
            text-align: center;
            display: block;
            margin-bottom: 10px;
        }

        .section-title {
            font-size: 22px;
            color: #ff5722;
            background-color: #fff3cd;
            padding: 10px;
            border-radius: 4px;
            margin-top: 20px;
        }

        .content {
            font-size: 16px;
            line-height: 1.6;
            margin-top: 10px;
        }

        .content p {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="header">
        <img src="/save/game6.png" alt="Game Image">
        <strong>쓸데없지만 은근 재미있는</strong>
        <strong>밸런스 게임, 룰은 알고 하자!</strong>
    </div>

    <div class="section">
        <div class="section-title">게임방법</div>
        <div class="content">
            <p>질문자는 두 개의 질문을 던지고, 대답하는 사람은 재빨리 대답해야 한다. 질문은 상대방에 따라 무궁무진하게 만들어낼 수 있다. 인터넷에 떠도는 기상천외한 질문들을 참고해 질문자는 상대방의 말문을 턱 막히게 하는 질문을 하고, 5초 안에 대답하지 못하면 질문자가 이긴다. 흥미로운 진행을 위해 질문의 난이도를 서서히 올려가는 게 재밌다.</p>
        </div>
    </div>

    <div class="section">
        <div class="section-title">웃음 포인트</div>
        <div class="content">
            <p>극단적인 질문이 실소를 유발한다. 예를 들어 '190cm 바퀴벌레와 방에 있기 vs 190마리 바퀴벌레와 방에 있기'처럼 현실에선 불가능한 말도 안 되는 질문일수록 웃긴 경우가 많다. 두 개의 질문 사이에서 쉽사리 대답하지 못해 곤혹스럽게 만드는 것이 웃음 포인트!</p>
        </div>
    </div>

    <div class="section">
        <div class="section-title">주의 사항</div>
        <div class="content">
            <p>웃자고 시작한 게임에 정색하고 달려들면 분위기만 어색해진다. 상대방의 치부를 집요하게 파고드는 질문이나 감정을 상하게 만드는 질문은 피하는 게 상책이다. 눈치껏 질문하고 대답하는 센스가 필요하다.</p>
        </div>
    </div>
</div>
</body>
</html>