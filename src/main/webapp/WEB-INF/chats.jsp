<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">
<head>
    <style type="text/css">
        #container {
            width: 100%;
            height: auto;
        }

        .inner-container {
            min-height: 400px;
            display: inline-block;
            overflow-y: auto;
            border: 1px solid black;
        }

        #chats-container {
            height: 70%;
            width: 80%;
        }

        #users-container {
            height: 70%;
            width: 15%;
        }
    </style>
</head>
<body>
<div id="container">
    <div id="chats-container" class="inner-container">
        <div><strong>Ram:</strong><span>my message</span></div>
        <div><strong>Ram:</strong><span>my measdfsdf sdgfdsfds dsfdsf sdfdsf sdfdsfretuyi yuiuyi hxcv dsf dsfsf dsfdsf sdfds ewrwe qweqwewqe vcbbvcb trytr rtererjkkzxc asdwqeq we dfasdqwebvnj ghiuyi tyuy ty werewr sdfxcvb gfytry try retyrey ser sdf sarewrew ewrr dsfgfdgfdge</span>
        </div>
        <div><strong>Ram:</strong><span>my message</span></div>
        <div><strong>Ram:</strong><span>my message</span></div>
    </div>
    <div id="users-container" class="inner-container">

    </div>
</div>
<div id="new-chat-container">
    <textarea id="new-chat-input" cols="50"></textarea>
    <br/>
    <input type="button" value="Send" id="new-chat-button">
    <form method="post" action="/logout">
        <input type="submit" value="logout"/>
    </form>
</div>
</body>
<script type="text/javascript">
    // utility methods
    function ajaxRequest(url, type, callback, data) {
        httpRequest = new XMLHttpRequest();

        if (!httpRequest) {
            alert('Giving up :( Cannot create an XMLHTTP instance');
            return false;
        }
        httpRequest.onreadystatechange = callback;
        httpRequest.open(type, url);
        httpRequest.send();
    }

    function sendChat() {
        var message = document.getElementById('new-chat-input').value.trim();

    }

    function fetchAllChats() {

    }

    document.getElementById('new-chat-button').addEventListener('click', sendChat);

    setInterval(fetchAllChats, 2000);

</script>
</html>