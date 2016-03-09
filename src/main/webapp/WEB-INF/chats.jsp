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
    function sendChat() {
        var message = document.getElementById('new-chat-input').value.trim(),
                xhr = new XMLHttpRequest();

        xhr.open('POST', encodeURI('/post-chat'));
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.onload = function(response) {
            if (xhr.status === 200) {

            } else {
                alert('Request failed.  Returned status of ' + xhr.status);
            }
        };
        xhr.send(encodeURI('message=' + message));
    }

    function fetchAllChats() {
        var xhr = new XMLHttpRequest();
        xhr.open('GET', encodeURI('/get-all-chats'));
        xhr.onload = function(response) {
            if (xhr.status === 200) {
                console.log(response);
            } else {
                alert('Request failed.  Returned status of ' + xhr.status);
            }
        };
        xhr.send();
    }

    function fetchAllUsers() {
        var xhr = new XMLHttpRequest();
        xhr.open('GET', encodeURI('/get-all-users'));
        xhr.onload = function(response) {
            if (xhr.status === 200) {
                console.log(response);
            } else {
                alert('Request failed.  Returned status of ' + xhr.status);
            }
        };
        xhr.send();
    }

    document.getElementById('new-chat-button').addEventListener('click', sendChat);
    document.getElementById('new-chat-input').addEventListener('keyUp', function (e) {
        var code = (e.keyCode ? e.keyCode : e.which);
        if (code == 13) { // enter key press
            sendChat();
        }
    });

    setInterval(fetchAllChats, 2000);
    setInterval(fetchAllUsers, 2000);

</script>
</html>