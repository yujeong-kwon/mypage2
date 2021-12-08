<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");	
	
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이페이지</title>
<style>
    .content-wrap{position: absolute; left:50%; top:30%; transform: translate(-50%, -50%); text-align:center;}
    #lbl-mypage{font-size:30px; text-align: center;}
    #privacy-btn{height: 50px; width: 100%;}
    #friends-btn{height: 50px; width: 100%;}
    .friends-btn-wrap{margin-top: 5px;}
</style>
<script>
    function clickNotice(){
        //window.open("findFriends.html", "childForm", "width=300, height=220, left=600, top=100");
        window.open("notice.html", "PopupWin", "width=300,height=400, left=600, top=100");
    }
</script>
</head>
<body>
    <main class="main">
        <h1 id="lbl-mypage">마이페이지</h2>
            <hr>
        <section class="content-wrap">
            
            <section class="notice-wrap">
                <img class="notice-img" id="notice-img" src="no_notice.png" onclick="clickNotice()">
                <span class="notice-count" id="notice-count" onclick="clickNotice()">(0)</span>
                <span class="notice-text" id="notice-text" onclick="clickNotice()">새로운 알림이 없습니다.</span>
            </section><br>
            <section class="privacy-btn-wrap">
                <button type="button" id="privacy-btn" onclick="location.href='privacy.jsp'">정보 변경</button>
            </section>
            <section class="friends-btn-wrap">
                <button type="button" id="friends-btn" onclick="location.href='friends.jsp'">친구 관리</button>
            </section>
        </section>
      </main>
</body>
</html>