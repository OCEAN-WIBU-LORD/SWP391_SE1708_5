<%-- 
    Document   : bookingmovie
    Created on : Mar 12, 2023, 5:43:14 PM
    Author     : Nguyen Van Ky
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <title>Booking Form HTML Template</title>

        <!-- Google font -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">

        <!-- Bootstrap -->
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

        <!-- Custom stlylesheet -->
        <link type="text/css" rel="stylesheet" href="css/style_3.css" />

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
                  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
                  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
                <![endif]-->
        
    </head>

    <body>
        <div id="booking" class="section">
            <div class="section-center">
                <div class="container">
                    <div class="row">
                        <div class="col-md-7 col-md-push-5">
                            <div class="booking-cta">
                                <h1>Make your reservation</h1>  
                                <h1>${player.player_name}</h1>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi facere, soluta magnam consectetur molestias itaque
                                    ad sint fugit architecto incidunt iste culpa perspiciatis possimus voluptates aliquid consequuntur cumque quasi.
                                    Perspiciatis.
                                </p>
                                 <p>${player.description}
                                </p>
                            </div>
                        </div>
                        <div class="col-md-5 col-md-pull-7">
                            <div class="booking-form">
                                <form action="BookingPlayerServlet" method="post">
                                    <div class="form-group">
                                        <span class="form-label">Player Name:</span>
                                        <input class="form-control" type="text" placeholder="${player_name}" value="${player_name}">
                                    </div>
                                        
                                    <div class="row">
                                        <div class="col-sm-5">
                                            <div class="form-group">
                                                <span class="form-label">Choose number of hire hours</span>
                                                <select class=""  id ="numberSelect">
                                                    <option value="1">1 hour</option>
                                                    <option value="2">2 hours</option>
                                                    <option value="3">3 hours</option>
                                                    <option value="4">4 hours</option>
                                                    <option value="5">5 hours</option>
                                                    <option value="6">6 hours</option>
                                                    <option value="7">7 hours</option>
                                                    <option value="8">8 hours</option>
                                                    <option value="9">9 hours</option>
                                                    <option value="10">10 hours</option>
                                                    <option value="11">11 hours</option>
                                                    <option value="12">12 hours</option>
                                                    <option value="13">13 hours</option>
                                                    <option value="14">14 hours</option>
                                                    <option value="15">15 hours</option>
                                                    <option value="16">16 hours</option>
                                                    <option value="17">17 hours</option>
                                                    <option value="18">18 hours</option>
                                                    <option value="19">19 hours</option>
                                                    <option value="20">20 hours</option>
                                                    <option value="21">21 hours</option>
                                                    <option value="22">22 hours</option>
                                                    <option value="23">23 hours</option>
                                                    <option value="24">24 hours</option>
                                                </select>
                                                <span class="select-arrow"></span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <span class="form-label">Total Cost</span>
                                            <div id="result" ></div>
                                        </div>
                                        <div class="form-group">
                                            <span class="form-label">Balance:</span>
                                            <a href="https://twitter.com/mertskaplan">${balance} </span></a>
                                        </div>
                                        <div class="form-group">
                                            <span class="form-label">Type Message</span>
                                            <input class="form-control" type="text" placeholder="Enter a destination or hotel name">
                                        </div>
                                       
                                    </div>
                                    <div class="form-btn">
                                        <button class="submit-btn">Check availability</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            const numberSelect = document.getElementById('numberSelect');
            const resultElement = document.getElementById('result');
            resultElement.textContent = "1" * 100;
// Add an event listener to the select element
            numberSelect.addEventListener('change', function () {
                // Get the selected value from the select element
                const selectedValue = numberSelect.value;

                // Set the corresponding value in the result element
                resultElement.textContent = selectedValue * 100;
            });
        </script>
    </body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>