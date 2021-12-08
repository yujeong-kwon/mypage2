<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*, javax.naming.*" %>
<%
request.setCharacterEncoding("utf-8");
String login_id = (String) session.getAttribute("login_id");
%>
<html>
<head>
<meta charset="UTF-8">
<title>받은 요청 목록</title>
<style>
    .request-list{list-style: none; margin:0px; padding: 0px; width: 100%;}
    .request-friend{ margin-bottom:5px; padding: 5px 0px 5px 5px; border-bottom: 1px solid #cacaca; text-align: left;}
</style>
<script>
	window.onload = start;
	var request = null;
	
	function createRequest(){
		try{
			request = new XMLHttpRequest();
		} catch(failed){
			request = null;
		}
		if (request == null)
			alert("Error creating request object!");
	}
	
	function start(){
		//session id로 데베 검색해서 받은 요청 불러오기
		//ox에 따라서 YN값 집어넣기
		
		createRequest();
        
		var url = "requestUpdate.jsp?loginId=" + <%= login_id %>;
		request.open("POST",url, true);
		var qry = "loginId=" + <%= login_id %>;
		
		request.onreadystatechange = updatePage;
		request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		request.send(qry);
		
	}
	
	
	function updatePage(){
		if(request.readyState==4){
			var findId = document.getElementById("find-input");
			var list = document.getElementById("request-list");
			
			var responsetext = request.responseText;
			var response = responsetext.split(",");
            for(var i = 0; i < response.length; i++){
            	
    			var newList = document.createElement("li");
    			newList.setAttribute("id", "li" + i);
    			newList.innerText = response[i];
    			list.appendChild(newList);
            }
            
//          addBtn.setAttribute("id", "add-btn")
//          addBtn.innerText = "요청하기";
//          //요청하기 눌렀을 경우 이벤트
//          addBtn.onclick = function(e){
//              window.close();
//          }
//          addBtnWrap.appendChild(addBtn);
		}
	}
    function requestList(){
        
    }

</script>
</head>
<body>
    <main class="main">
        <section>
            <h3>받은 요청 목록</h3>
            <hr>
            <ul class="request-list" id="request-list">
                <li class="request-friend">친구1<input style='float:right;' type="button" value="X">
                    <input style='float:right;' type="button" value="O"></li>
                <li class="request-friend">친구1<input style='float:right;' type="button" value="X">
                    <input style='float:right;' type="button" value="O"></li>
            </ul>
        </section>
    </main>
</body>
</html>