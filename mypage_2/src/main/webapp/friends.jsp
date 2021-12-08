<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>친구 관리</title>
<style>
    .content-wrap{width: 400px;position: absolute; left:50%; top:25%; transform: translate(-50%, -50%); text-align:center;}
    #lbl-friends{font-size:30px; text-align: center;}
    #find-btn{height: 40px; width: 100%;}
    .friends-list{list-style: none; margin:0px; padding: 0px; width: 100%;}
    .friend{ margin-bottom:5px; padding: 5px 0px 5px 5px; border: 1px solid #cacaca; text-align: left;}
</style>
<script>
    function findFriends(){
        window.open("findFriends.jsp", "childForm", "width=300, height=220, left=600, top=100");
    }
</script>
</head>
<body>
    <main class="main">
        <h1 id="lbl-friends">친구 관리</h2>
        <hr>
        <section class="content-wrap">
            <button type="button" id="find-btn" onclick="findFriends()">친구 검색</button><br><br>
            <section>
                <ul class="friends-list">
                    <li class="friend">친구1<img style='float:right;' src="delete.png" ></li>
                    <li class="friend">친구2<img style='float:right;' src="delete.png" ></li>
                </ul>
            </section>
        </section>
      </main>
</body>
</html>