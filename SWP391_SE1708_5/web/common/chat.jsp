


<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Chat</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css">
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.js"></script>
        <style>
            body,html{
                height: 100%;
                margin: 0;
                background: #7F7FD5;
                background: -webkit-linear-gradient(to right, #91EAE4, #86A8E7, #7F7FD5);
                background: linear-gradient(to right, #91EAE4, #86A8E7, #7F7FD5);
            }

            .chat{
                margin-top: auto;
                margin-bottom: auto;
            }
            .card{
                height: 100%;
                border-radius: 15px !important;
                background-color: rgba(0,0,0,0.4) !important;
            }
            .contacts_body{
                padding:  0.75rem 0 !important;
                overflow-y: auto;
                white-space: nowrap;
            }
            .msg_card_body{
                overflow-y: auto;
            }
            .card-header{
                border-radius: 15px 15px 0 0 !important;
                border-bottom: 0 !important;
            }
            .card-footer{
                border-radius: 0 0 15px 15px !important;
                border-top: 0 !important;
            }
            .container{
                align-content: center;
            }
            .search{
                border-radius: 15px 0 0 15px !important;
                background-color: rgba(0,0,0,0.3) !important;
                border:0 !important;
                color:white !important;
            }
            .search:focus{
                box-shadow:none !important;
                outline:0px !important;
            }
            .type_msg{
                background-color: rgba(0,0,0,0.3) !important;
                border:0 !important;
                color:white !important;
                height: 60px !important;
                overflow-y: auto;
            }
            .type_msg:focus{
                box-shadow:none !important;
                outline:0px !important;
            }
            .attach_btn{
                border-radius: 15px 0 0 15px !important;
                background-color: rgba(0,0,0,0.3) !important;
                border:0 !important;
                color: white !important;
                cursor: pointer;
            }
            .send_btn{
                border-radius: 0 15px 15px 0 !important;
                background-color: rgba(0,0,0,0.3) !important;
                border:0 !important;
                color: white !important;
                cursor: pointer;
            }
            .search_btn{
                border-radius: 0 15px 15px 0 !important;
                background-color: rgba(0,0,0,0.3) !important;
                border:0 !important;
                color: white !important;
                cursor: pointer;
            }
            .contacts{
                list-style: none;
                padding: 0;
            }
            .contacts li{
                width: 100% !important;
                padding: 5px 10px;
                margin-bottom: 15px !important;
            }
            .active{
                background-color: rgba(0,0,0,0.3);
            }
            .user_img{
                height: 70px;
                width: 70px;
                border:1.5px solid #f5f6fa;

            }
            .user_img_msg{
                height: 40px;
                width: 40px;
                border:1.5px solid #f5f6fa;

            }
            .img_cont{
                position: relative;
                height: 70px;
                width: 70px;
            }
            .img_cont_msg{
                height: 40px;
                width: 40px;
            }
            .online_icon{
                position: absolute;
                height: 15px;
                width:15px;
                background-color: #4cd137;
                border-radius: 50%;
                bottom: 0.2em;
                right: 0.4em;
                border:1.5px solid white;
            }
            .offline{
                background-color: #c23616 !important;
            }
            .user_info{
                margin-top: auto;
                margin-bottom: auto;
                margin-left: 15px;
            }
            .user_info span{
                font-size: 20px;
                color: white;
            }
            .user_info p{
                font-size: 10px;
                color: rgba(255,255,255,0.6);
            }
            .video_cam{
                margin-left: 50px;
                margin-top: 5px;
            }
            .video_cam span{
                color: white;
                font-size: 20px;
                cursor: pointer;
                margin-right: 20px;
            }
            .msg_cotainer{
                margin-top: auto;
                margin-bottom: auto;
                margin-left: 10px;
                border-radius: 25px;
                background-color: #82ccdd;
                padding: 10px;
                position: relative;
            }
            .msg_cotainer_send{
                margin-top: auto;
                margin-bottom: auto;
                margin-right: 10px;
                border-radius: 25px;
                background-color: #78e08f;
                padding: 10px;
                position: relative;
            }
            .msg_time{
                position: absolute;
                left: 0;
                bottom: -15px;
                color: rgba(255,255,255,0.5);
                font-size: 10px;
            }
            .msg_time_send{
                position: absolute;
                right:0;
                bottom: -15px;
                color: rgba(255,255,255,0.5);
                font-size: 10px;
            }
            .msg_head{
                position: relative;
            }
            #action_menu_btn{
                position: absolute;
                right: 10px;
                top: 10px;
                color: white;
                cursor: pointer;
                font-size: 20px;
            }
            .hidden-input {
                display: none;
            }
            .action_menu{
                z-index: 1;
                position: absolute;
                padding: 15px 0;
                background-color: rgba(0,0,0,0.5);
                color: white;
                border-radius: 15px;
                top: 30px;
                right: 15px;
                display: none;
            }
            .action_menu ul{
                list-style: none;
                padding: 0;
                margin: 0;
            }
            .action_menu ul li{
                width: 100%;
                padding: 10px 15px;
                margin-bottom: 5px;
            }
            .action_menu ul li i{
                padding-right: 10px;

            }
            .my-element:hover {
                background-color: #38525D; /* Color change on hover */
            }
            .action_menu ul li:hover{
                cursor: pointer;
                background-color: rgba(0,0,0,0.2);
            }
            hr.new5 {
                border: 2px solid white;
                border-radius: 5px;
            }
            .scrollable-container {
                height: 200px;
                overflow: auto;
            }
            @media(max-width: 576px){
                .contacts_card{
                    margin-bottom: 15px !important;
                }
            }
        </style>
        <script>
            window.onload = function () {
                // Get the scrollable element by ID or class
                var scrollableElement = document.getElementById('my-scrollable-element');

                // Scroll the desired scrollable element to the bottom
                scrollableElement.scrollTop = scrollableElement.scrollHeight;
                // Get the element containing the sentence
                var element = document.getElementById('sentence');

                // Check if the sentence contains "http"
                if (element.innerHTML.includes("http")) {
                    // Create a new image element
                    var img = document.createElement('img');

                    // Set the src attribute to the URL
                    img.src = element.innerHTML;

                    // Replace the div element with the image element
                    element.parentNode.replaceChild(img, element);
                }
            };


        </script>
    </head>
    <!--Coded With Love By Mutiullah Samim-->
    <body id="dynamicContent">
        <div class="container-fluid h-100" style="height: 5000px">
            <div class="row justify-content-center h-100">
                <div class="col-md-4 col-xl-3 chat"><div class="card mb-sm-3 mb-md-0 contacts_card">
                        <div class="card-header">
                            <div class="input-group">
                                <input type="text" placeholder="Search..." name="" class="form-control search">
                                <div class="input-group-prepend">
                                    <span class="input-group-text search_btn"><i class="fas fa-search"></i></span>
                                </div>
                            </div>
                        </div>
                        <div class="card-body contacts_body">
                            <ui class="contacts">
                                <a href="chat?player_id=${player.player_id}" class="img" >
                                    <li class="active">
                                        <div class="d-flex bd-highlight">
                                            <div class="img_cont">
                                                <img src="${player.link_image}" class="rounded-circle user_img">
                                                <span class="online_icon"></span>
                                            </div>
                                            <div class="user_info">
                                                <span>${player.player_name}</span>
                                                <p>${player.player_id} is online</p>
                                            </div>
                                        </div>
                                    </li>
                                </a>
                                <!--                                                                <button id="button1" onclick="changeColor('button1')">Button 1</button>
                                                                                                <button id="button2" onclick="changeColor('button2')">Button 2</button>
                                                                                                <button id="buttonA" onclick="changeColor('buttonA')">Button A</button>
                                                                                                <button id="buttonB" onclick="changeColor('buttonB')">Button B</button>-->
                                <c:forEach items="${messageList}" var = "m">
                                    <c:forEach items="${playerList}" var = "p">
                                        <c:if test="${p.player_id eq m.player_id}">
                                            <button id="buttonA" onclick="changeColor('buttonA')" style=" background-color: #558089; width: 100%; border: none">
                                                <li onclick="changeColor('button1')" id="button1">
                                                    <div class="d-flex bd-highlight">
                                                        <div class="img_cont">
                                                            <img src="${p.link_image}" class="rounded-circle user_img">
                                                            <span class="online_icon offline"></span>
                                                        </div>
                                                        <div class="user_info">
                                                            <span>${p.player_name}</span>
                                                            <p>Taherah left 7 mins ago</p>
                                                        </div>
                                                    </div>
                                                </li>
                                            </button><br>
                                        </c:if>
                                    </c:forEach>
                                </c:forEach>

                                <!--
                                ${n}
                                ${m}
                                ${q}  -->

                                <hr class="new5">
                                <b style="font-size: 20px">List Message: </b>
                                <c:forEach items="${playerlist}" var = "p">
                                    <c:forEach items="${playerIds1}" var = "q">
                                        <c:if test="${q eq p.player_id}">
                                            <a href="chat?player_id=${p.player_id}" class="img my-element" >
                                                <li onclick="activate()" id="button">
                                                    <div class="d-flex bd-highlight ">
                                                        <div class="img_cont">
                                                            <img src="${p.link_image}" class="rounded-circle user_img">
                                                            <span class="online_icon offline"></span>
                                                        </div>
                                                        <div class="user_info">
                                                            <span>${p.player_name}</span>
                                                            <p>${p.player_id} left 30 mins ago</p>
                                                        </div>
                                                    </div>
                                                </li>
                                            </a>
                                        </c:if>
                                    </c:forEach>  
                                </c:forEach>  

                            </ui>
                        </div>
                        <div class="card-footer"></div>
                    </div></div>
                <div class="col-md-8 col-xl-6 chat">
                    <div class="card">
                        <div class="card-header msg_head">
                            <div class="d-flex bd-highlight">
                                <div class="img_cont" >

                                    <a href="playerdetail?player_id=${player.player_id}">
                                        <img src="${player.link_image}" class="rounded-circle user_img" >
                                        <span class="online_icon"></span>
                                    </a>
                                </div>
                                <div class="user_info">
                                    <span>${player.player_name}</span>
                                    <p>${n} Messages</p>
                                </div>
                                <div class="video_cam">
                                    <span><i class="fas fa-video"></i></span>
                                    <span><i class="fas fa-phone"></i></span>
                                </div>
                            </div>
                            <span id="action_menu_btn"><i class="fas fa-ellipsis-v"></i></span>
                            <div class="action_menu">
                                <ul>
                                    <a href="playerdetail?player_id=${player.player_id}"><li><i class="fas fa-user-circle"></i> View profile</li></a>
                                    <li><i class="fas fa-users"></i> Add to close friends</li>
                                    <li><i class="fas fa-plus"></i> Add to group</li>
                                    <li><i class="fas fa-ban"></i> Block</li>
                                    <li><a href="deletemessage?player_id=${player.player_id}" onclick="deleteMessage(${player.player_id})"><i class="fas fa-trash"></i> Delete</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-body msg_card_body scrollable-container" id="my-scrollable-element">

                            <!--                            <c:forEach items="${historyMessage}" var = "m">
                                <c:if test="${m.status eq '1'}">
                                    <div class="d-flex justify-content-start mb-4">
                                        <div class="img_cont_msg">
                                            <img src="${udetail.link_image}" class="rounded-circle user_img_msg">
                                        </div>
                                        <div class="msg_cotainer">
                                            alo alo
                                            <span class="msg_time">8:40 AM, Today</span>
                                        </div>
                                    </div>
                                </c:if>
                            </c:forEach>-->




                            <c:forEach items="${historyMessage}" var = "m">
                                <c:if test="${m.status eq '1'}">
                                    <div class="d-flex justify-content-end mb-4">
                                        <div class="img_cont_msg">
                                            <img src="${udetail.link_image}" class="rounded-circle user_img_msg">
                                        </div>
                                        <div class="msg_cotainer" style="min-width: 100px" id="sentence">
                                            ${m.message}
                                            <span class="msg_time">${m.date_time}</span>
                                        </div>
                                    </div>
                                </c:if>
                                <c:if test="${m.status eq '0'}">
                                    <div class="d-flex justify-content-start mb-4">
                                        <div class="msg_cotainer_send" style="min-width: 100px" >
                                            ${m.message}
                                            <span class="msg_time_send" >${m.date_time}</span>
                                        </div>
                                        <div class="img_cont_msg">
                                            <img src="${player.link_image}" class="rounded-circle user_img_msg">
                                        </div>
                                    </div>
                                </c:if>
                            </c:forEach>            

                            <!--
                            <c:forEach items="${historyMessage}" var = "m">
                                ${m.status}
                            </c:forEach>  -->

                        </div>
                        <form action="chat" method="post"  id="myForm">
                            <input type="text" value="${player.player_id}" name="player_id" class="hidden-input">
                            <div class="card-footer">
                                <div class="input-group wrap-input100 validate-input"  data-validate="Please type message">
                                    <div class="input-group-append">
                                        <span class="input-group-text attach_btn"><i class="fas fa-paperclip"></i></span>
                                    </div>
                                    <textarea name="message" class="form-control type_msg" placeholder="Type your message..." required></textarea>

                                    <div class="input-group-append" style="color: #4F5E88" >
                                        <button style="color: #4F5E88">
                                            <span class="input-group-text send_btn" style="color: #4F5E88"><i class="fas fa-location-arrow"></i></span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script>
        $(document).ready(function () {
            $('#action_menu_btn').click(function () {
                $('.action_menu').toggle();
            });
        });

        function activate() {
            document.getElementById("button").style.backgroundColor = '#3A5460';
        }
        var previousColor = {
            button1: '',
            button2: ''
        };

        function changeColor(buttonId) {
            var button = document.getElementById(buttonId);

            // Check the current color of the button
            var currentColor = button.style.backgroundColor;

            // Change the color of the clicked button
            if (currentColor === 'red') {
                button.style.backgroundColor = 'blue';
                previousColor[buttonId] = 'blue';
            } else {
                button.style.backgroundColor = 'red';
                previousColor[buttonId] = 'red';
            }

            // Change the color of the other button to its previous color
            var otherButtonId = buttonId === 'button1' ? 'button2' : 'button1';
            var otherButton = document.getElementById(otherButtonId);
            var otherButtonPreviousColor = previousColor[otherButtonId];
            otherButton.style.backgroundColor = otherButtonPreviousColor;
        }
        var buttonA = document.getElementById('buttonA');
        var buttonB = document.getElementById('buttonB');

        function changeColor(buttonId) {
            if (buttonId === 'buttonA') {
                buttonA.style.backgroundColor = '#3B5460';
                buttonB.style.backgroundColor = '#558089';
            } else if (buttonId === 'buttonB') {
                buttonB.style.backgroundColor = '#3B5460';
                buttonA.style.backgroundColor = '#558089';
            }
        }
        function handleSubmit() {
            // Add your logic here
            alert("Submit button clicked!");

            // Submit the form
            document.getElementById("myForm").submit();
        }
        window.onload = function () {
            // Get the scrollable element by ID or class
            var scrollableElement = document.getElementById('my-scrollable-element');

            // Scroll the desired scrollable element to the bottom
            scrollableElement.scrollTop = scrollableElement.scrollHeight;
        };

        function deleteMessage(player_id) {
            var option = confirm("Do you want to delete this Message ?");
            if (option === true) {
                window.location.href = 'deletemessage?player_id=' + player_id;
            }
        }
    </script>

    <script type="text/javascript">
        function deleteMessage(id) {
            var option = confirm("Do you want to delete this Message ?");
            if (option === true) {
                window.location.href = 'deletemessage?player_id=' + id;
            }
        }
        function fetchData() {
            $.ajax({
                url: "chat?player_id=${player.player_id}", // URL that retrieves the updated data from the database
                method: "GET",
                success: function (response) {
                    $("#dynamicContent").html(response); // Update the dynamic content
                },
                error: function (xhr, status, error) {
                    console.log("Error retrieving data: " + error);
                }
            });
            
        }
        // Poll the server every 5 seconds (adjust the interval as needed)
        setInterval(fetchData, 10000);


        

        function functionB() {
            // Code for functionB
            console.log("FunctionB executed");
        }

// Usage: Call functionA and chain it with window.onload using .then()
        
    </script>
</html>
