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
        <link type="text/css" rel="stylesheet" href="css/style_2.css" />

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
                  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
                  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
                <![endif]-->
        <style>
            .section {
                position: relative;
                height: 100vh;
            }

            .section .section-center {
                position: absolute;
                top: 50%;
                left: 0;
                right: 0;
                -webkit-transform: translateY(-50%);
                transform: translateY(-50%);
            }

            #booking {
                font-family: 'Montserrat', sans-serif;
                background-image: url('../images/background.jpg');
                background-size: cover;
                background-position: center;
            }

            #booking::before {
                content: '';
                position: absolute;
                left: 0;
                right: 0;
                bottom: 0;
                top: 0;
                background: rgba(47, 103, 177, 0.6);
            }

            .booking-form {
                background-color: #fff;
                padding: 50px 20px;
                -webkit-box-shadow: 0px 5px 20px -5px rgba(0, 0, 0, 0.3);
                box-shadow: 0px 5px 20px -5px rgba(0, 0, 0, 0.3);
                border-radius: 4px;
            }

            .booking-form .form-group {
                position: relative;
                margin-bottom: 30px;
            }

            .booking-form .form-control {
                background-color: #ebecee;
                border-radius: 4px;
                border: none;
                height: 40px;
                -webkit-box-shadow: none;
                box-shadow: none;
                color: #3e485c;
                font-size: 14px;
            }

            .booking-form .form-control::-webkit-input-placeholder {
                color: rgba(62, 72, 92, 0.3);
            }

            .booking-form .form-control:-ms-input-placeholder {
                color: rgba(62, 72, 92, 0.3);
            }

            .booking-form .form-control::placeholder {
                color: rgba(62, 72, 92, 0.3);
            }

            .booking-form input[type="date"].form-control:invalid {
                color: rgba(62, 72, 92, 0.3);
            }

            .booking-form select.form-control {
                -webkit-appearance: none;
                -moz-appearance: none;
                appearance: none;
            }

            .booking-form select.form-control+.select-arrow {
                position: absolute;
                right: 0px;
                bottom: 4px;
                width: 32px;
                line-height: 32px;
                height: 32px;
                text-align: center;
                pointer-events: none;
                color: rgba(62, 72, 92, 0.3);
                font-size: 14px;
            }

            .booking-form select.form-control+.select-arrow:after {
                content: '\279C';
                display: block;
                -webkit-transform: rotate(90deg);
                transform: rotate(90deg);
            }

            .booking-form .form-label {
                display: inline-block;
                color: #3e485c;
                font-weight: 700;
                margin-bottom: 6px;
                margin-left: 7px;
            }

            .booking-form .submit-btn {
                display: inline-block;
                color: #fff;
                background-color: #1e62d8;
                font-weight: 700;
                padding: 14px 30px;
                border-radius: 4px;
                border: none;
                -webkit-transition: 0.2s all;
                transition: 0.2s all;
            }

            .booking-form .submit-btn:hover,
            .booking-form .submit-btn:focus {
                opacity: 0.9;
            }

            .booking-cta {
                margin-top: 80px;
                margin-bottom: 30px;
            }

            .booking-cta h1 {
                font-size: 52px;
                text-transform: uppercase;
                color: #fff;
                font-weight: 700;
            }

            .booking-cta p {
                font-size: 16px;
                color: rgba(255, 255, 255, 0.8);
            }
        </style>
    </head>

    <body>
        <div id="booking" class="section">
            <div class="section-center">
                <div class="container">
                    <div class="row">
                        <div class="col-md-7 col-md-push-5">
                            <div class="booking-cta">
                                <h1>Make your reservation</h1>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi facere, soluta magnam consectetur molestias itaque
                                    ad sint fugit architecto incidunt iste culpa perspiciatis possimus voluptates aliquid consequuntur cumque quasi.
                                    Perspiciatis.
                                </p>
                            </div>
                        </div>
                        <div class="col-md-4 col-md-pull-7">
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
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <span class="form-label">Children</span>
                                                <select class="form-control">
                                                    <option>0</option>
                                                    <option>1</option>
                                                    <option>2</option>
                                                </select>
                                                <span class="select-arrow"></span>
                                            </div>
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