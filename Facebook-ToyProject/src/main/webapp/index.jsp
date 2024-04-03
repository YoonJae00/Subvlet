<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>윤재 로그인창 🚗🚗</title>
    <style>
        body {
            width: 440px; /* 원하는 가로 크기로 설정 */
            margin: 0 auto; /* 페이지를 수평 가운데 정렬 */
            background-color: rgb(148, 148, 148);

        }

        .layer {
            width: 100%; /* 가로 너비를 부모 요소인 body의 너비와 동일하게 설정 */
            /* 다른 요소들의 스타일을 필요에 따라 설정합니다. */
            height: 2400px;
            background-color: white;
        }

        .fb {
            text-align: center;
            color: #2484F4;
            vertical-align: top;
            line-height: 100px;
            line-height: 2;
        }

        .box {
            margin: 0;
            padding: 4%;
            width: 100%;
            height: 200%;
            background-clip: border-box;
            line-height: 0.5;


        }

        /* .login-wrapper {
            font-size: 14px;
            font-family: 'Roboto', sans-serif;
            margin: 10%;
            width: 100%;
            height: 200%;
            position: center;

        } */


        input[type=text] {
            width: 350px;
            height: 40px;
            background-color: #F5F5F5;
            align-items: center;
            border-radius: 5px;
            border: 1px solid lightgray;
            box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.4); /* 테두리 아래에 음영 추가 */


            /* border: 3px solid transparent;
               border-image: linear-gradient(to right, #000000 0%, #615d5d 100%);
               border-image-slice: 1; */


        }

        input[type=password] {
            width: 350px;
            height: 40px;
            background-color: #F5F5F5;
            border-radius: 5px;
            border: 1px solid lightgray;
            line-height: 0.5;
            box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.4); /* 테두리 아래에 음영 추가 */
        }

        input[type=submit] {
            width: 350px;
            height: 40px;
            background-color: #2484F4;
            border-radius: 5px;
            border: 1px solid #2484F4;
            text-align: center;
            color: white;

        }

        .ppp {
            margin-top: 5px;
            font-family: 'Roboto', sans-serif;
        }

        .pwd {
            text-align: center;
            color: #2484F4;
            font-size: 15px;
            line-height: -100;
        }

        .wrap {
            padding-left: 22px;
        }


        .wrap2 {
            display: flex;
            color: gray;
            line-height: -100;
        }

        .bar {
            flex: auto;
            border: none;
            height: 1px;
            background-color: #D4D4D4;
            margin-right: 10px;
        }

        .txt {
            padding: 0.5px;
            margin-right: 10px;

        }

        .layer {
            background-color: #ffffff;
        }


        #btn {
            background-color: white;
            font-size: 15px;
            font-family: 'Roboto', sans-serif;
            width: 350px;
            height: 40px;
            border-radius: 5px;
            border: 1px solid lightgray;
            padding-left: 22px;
            margin-left: 20px;

        }


        .overlay {
            display: flex;
            justify-content: center; /* 가로 방향 가운데 정렬 */
            align-items: center; /* 세로 방향 가운데 정렬 */
            position: fixed;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            background-color: rgba(0, 0, 0, 0.5); /* 배경 오버레이 색상 */
        }

        .notification {
            background-color: #fff;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        a {
            text-decoration: none;
        }
    </style>
</head>
<body>
<div class="layer">

    <div class="fb">
        <h1><b>facebook</b></h1>
    </div>
    <div class="wrap">

        <div class="box">
            <form action="login/Success" method="post">
                <input type="text" name="userName" placeholder="아이디"><br><br>
                <input type="password" name="userPassword" placeholder="비밀번호"><br><br>
                <input type="submit" value="로그인">
            </form>
        </div>
        <div class="ppp">
            <%--      <a href="../02_find/01_mobile.html">--%>
            <h3 class="pwd">비밀번호를 잊으셨나요?</h3></a>
            <br>

            <div class="wrap2">
                <hr class="bar">
                <span class="txt">또는</span>
                <hr class="bar">
            </div>
            <br>
        </div>

        <div class="button">
            <%--      <a href="../03_register/01_join.html">--%>
            <button id="btn">새 계정만들기</button>
            </a>
        </div>

    </div>
</div>
</body>
</html>