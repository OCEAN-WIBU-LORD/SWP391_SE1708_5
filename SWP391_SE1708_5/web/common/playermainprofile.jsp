<!DOCTYPE html>


<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>iPortfolio Bootstrap Template - Index</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link href="images/favicon.png" rel="icon">
        <link href="images/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="vendor/aos/aos.css" rel="stylesheet">
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="css/style_4.css" rel="stylesheet">

        <!-- =======================================================
        * Template Name: iPortfolio
        * Updated: May 30 2023 with Bootstrap v5.3.0
        * Template URL: https://bootstrapmade.com/iportfolio-bootstrap-portfolio-websites-template/
        * Author: BootstrapMade.com
        * License: https://bootstrapmade.com/license/
        ======================================================== -->
        <style>
            body{margin-top:20px;}


            /* USER LIST TABLE */
            .user-list tbody td > img {
                position: relative;
                max-width: 50px;
                float: left;
                margin-right: 15px;
            }
            .user-list tbody td .user-link {
                display: block;
                font-size: 1.25em;
                padding-top: 3px;
                margin-left: 60px;
            }
            .user-list tbody td .user-subhead {
                font-size: 0.875em;
                font-style: italic;
            }

            /* TABLES */
            .table {
                border-collapse: separate;
            }
            .table-hover > tbody > tr:hover > td,
            .table-hover > tbody > tr:hover > th {
                background-color: #eee;
            }
            .table thead > tr > th {
                border-bottom: 1px solid #C2C2C2;
                padding-bottom: 0;
            }
            .table tbody > tr > td {
                font-size: 0.875em;
                background: #f5f5f5;
                border-top: 10px solid #fff;
                vertical-align: middle;
                padding: 12px 8px;
            }
            .table tbody > tr > td:first-child,
            .table thead > tr > th:first-child {
                padding-left: 20px;
            }
            .table thead > tr > th span {
                border-bottom: 2px solid #C2C2C2;
                display: inline-block;
                padding: 0 5px;
                padding-bottom: 5px;
                font-weight: normal;
            }
            .table thead > tr > th > a span {
                color: #344644;
            }
            .table thead > tr > th > a span:after {
                content: "\f0dc";
                font-family: FontAwesome;
                font-style: normal;
                font-weight: normal;
                text-decoration: inherit;
                margin-left: 5px;
                font-size: 0.75em;
            }
            .table thead > tr > th > a.asc span:after {
                content: "\f0dd";
            }
            .table thead > tr > th > a.desc span:after {
                content: "\f0de";
            }
            .table thead > tr > th > a:hover span {
                text-decoration: none;
                color: #2bb6a3;
                border-color: #2bb6a3;
            }
            .table.table-hover tbody > tr > td {
                -webkit-transition: background-color 0.15s ease-in-out 0s;
                transition: background-color 0.15s ease-in-out 0s;
            }
            .table tbody tr td .call-type {
                display: block;
                font-size: 0.75em;
                text-align: center;
            }
            .table tbody tr td .first-line {
                line-height: 1.5;
                font-weight: 400;
                font-size: 1.125em;
            }
            .table tbody tr td .first-line span {
                font-size: 0.875em;
                color: #969696;
                font-weight: 300;
            }
            .table tbody tr td .second-line {
                font-size: 0.875em;
                line-height: 1.2;
            }
            .table a.table-link {
                margin: 0 5px;
                font-size: 1.125em;
            }
            .table a.table-link:hover {
                text-decoration: none;
                color: #2aa493;
            }
            .table a.table-link.danger {
                color: #fe635f;
            }
            .table a.table-link.danger:hover {
                color: #dd504c;
            }

            .table-products tbody > tr > td {
                background: none;
                border: none;
                border-bottom: 1px solid #ebebeb;
                -webkit-transition: background-color 0.15s ease-in-out 0s;
                transition: background-color 0.15s ease-in-out 0s;
                position: relative;
            }
            .table-products tbody > tr:hover > td {
                text-decoration: none;
                background-color: #f6f6f6;
            }
            .table-products .name {
                display: block;
                font-weight: 600;
                padding-bottom: 7px;
            }
            .table-products .price {
                display: block;
                text-decoration: none;
                width: 50%;
                float: left;
                font-size: 0.875em;
            }
            .table-products .price > i {
                color: #8dc859;
            }
            .table-products .warranty {
                display: block;
                text-decoration: none;
                width: 50%;
                float: left;
                font-size: 0.875em;
            }
            .table-products .warranty > i {
                color: #f1c40f;
            }
            .table tbody > tr.table-line-fb > td {
                background-color: #9daccb;
                color: #262525;
            }
            .table tbody > tr.table-line-twitter > td {
                background-color: #9fccff;
                color: #262525;
            }
            .table tbody > tr.table-line-plus > td {
                background-color: #eea59c;
                color: #262525;
            }
            .table-stats .status-social-icon {
                font-size: 1.9em;
                vertical-align: bottom;
            }
            .table-stats .table-line-fb .status-social-icon {
                color: #556484;
            }
            .table-stats .table-line-twitter .status-social-icon {
                color: #5885b8;
            }
            .table-stats .table-line-plus .status-social-icon {
                color: #a75d54;
            }
            .clip-me {  
                position: absolute;
                clip: rect(110px, 160px, 170px, 60px); 
                /* values describe a top/left point and bottom/right point */

                clip-path: inset(10px 20px 30px 40px); /* or "none" */
                /* values are from-top, from-right, from-bottom, from-left */

            } 


        </style>
    </head>

    <body>

        <!-- ======= Mobile nav toggle button ======= -->
        <i class="bi bi-list mobile-nav-toggle d-xl-none"></i>

        <!-- ======= Header ======= -->
        <header id="header">
            <div class="d-flex flex-column">

                <div class="profile">
                    <img src="${player.getLink_image()}" alt="" class="img-fluid rounded-circle" style="width: 200px; height: 200px">
                    <h1 class="text-light"><a href="index.html">${username}</a></h1>
                    <div class="social-links mt-3 text-center">
                        <a href="home" class="twitter"><i class="bx bxl-twitter"></i></a>
                        <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
                        <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                        <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
                        <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
                    </div>
                </div>

                <nav id="navbar" class="nav-menu navbar">
                    <ul>
                        <li><a href="#hero" class="nav-link scrollto active"><i class="bx bx-home"></i> <span>Home</span></a></li>
                        <li><a href="#about" class="nav-link scrollto"><i class="bx bx-user"></i> <span>About</span></a></li>
                        <li><a href="#historybooking" class="nav-link scrollto"><i class="bx bx-file-blank"></i> <span>History Booking</span></a></li>
                        <li><a href="#portfolio" class="nav-link scrollto"><i class="bx bx-book-content"></i> <span>Portfolio</span></a></li>
                        <li><a href="#services" class="nav-link scrollto"><i class="bx bx-server"></i> <span>Services</span></a></li>
                        <li><a href="#contact" class="nav-link scrollto"><i class="bx bx-envelope"></i> <span>Contact</span></a></li>
                    </ul>
                </nav><!-- .nav-menu -->
            </div>
        </header><!-- End Header -->

        <!-- ======= Hero Section ======= -->

        <section id="hero" class="d-flex flex-column justify-content-center align-items-center">
            <div class="hero-container" data-aos="fade-in">

                <h1>${player.player_name}</h1>
                <p>I'm <span class="typed" data-typed-items="Gamer, Player, Co-Player, Web Designer"></span></p>
            </div>
        </section><!-- End Hero -->

        <main id="main">

            <!-- ======= About Section ======= -->
            <section id="about" class="about">
                <div class="container">

                    <div class="section-title">
                        <a href="editprofile" type="button" class="btn btn-secondary btn-rounded" style="margin-left: 1200px; width: 170px">Edit Profile</a>
                        <h2>About</h2>
                        <p>Exploring forests, hiking trails, or camping under starlit skies rejuvenates my spirit and nourishes my soul. The serenity of nature inspires me and fuels my creativity. Whether it's capturing breathtaking landscapes through photography or simply immersing myself in the peacefulness of the outdoors, I find solace and a deep sense of connection with the natural world.</p>
                    </div>

                    <div class="row">
                        <div class="col-lg-4" data-aos="fade-right">
                            <img src="${player.getLink_image()}" class="img-fluid" alt="">
                        </div>
                        <div class="col-lg-8 pt-4 pt-lg-0 content" data-aos="fade-left">
                            <h3>University Student &amp; Web Developer.</h3>
                            <p class="fst-italic">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                                magna aliqua.
                            </p>
                            <div class="row">
                                <div class="col-lg-6">
                                    <ul>
                                        <li><i class="bi bi-chevron-right"></i> <strong>Birthday:</strong> <span>14 Sep 2003</span></li>
                                        <li><i class="bi bi-chevron-right"></i> <strong>Website:</strong> <span>https://github.com/OCEAN-WIBU-LORD</span></li>
                                        <li><i class="bi bi-chevron-right"></i> <strong>Phone:</strong> <span>0978123456</span></li>
                                        <li><i class="bi bi-chevron-right"></i> <strong>City:</strong> <span>HaNoi, VietNam</span></li>
                                    </ul>
                                </div>
                                <div class="col-lg-6">
                                    <ul>
                                        <li><i class="bi bi-chevron-right"></i> <strong>Age:</strong> <span>21</span></li>
                                        <li><i class="bi bi-chevron-right"></i> <strong>Degree:</strong> <span>Master</span></li>
                                        <li><i class="bi bi-chevron-right"></i> <strong>Email:</strong> <span>duongddhe176496@fpt.edu.vn</span></li>
                                        <li><i class="bi bi-chevron-right"></i> <strong>Freelance:</strong> <span>Available</span></li>
                                    </ul>
                                </div>
                            </div>
                            <p>
                                ${account.getDescription()}
                            </p>
                        </div>
                    </div>

                </div>
            </section><!-- End About Section -->

            <!-- ======= Facts Section ======= -->
            <section id="facts" class="facts">
                <div class="container">

                    <div class="section-title">
                        <h2>Information</h2>
                        <p>I have an inherent passion for music, and playing the guitar has been a significant part of my life. Whether strumming the strings to create soothing melodies or rocking out to energetic tunes, music allows me to express myself and find solace. It has taught me discipline, perseverance, and the power of artistic expression. Sharing my music with others brings me joy and connects me with people on a deeper level.</p>
                    </div>

                    <div class="row no-gutters">

                        <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch" data-aos="fade-up">
                            <div class="count-box">
                                <i class="bi bi-emoji-smile"></i>
                                <span data-purecounter-start="0" data-purecounter-end="${totalmoney}" data-purecounter-duration="1" class="purecounter" ></span><h1>Dollar $</h1>
                                <p><strong>Total Money Spend</strong> 100% Confirmation</p>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch" data-aos="fade-up" data-aos-delay="100">
                            <div class="count-box">
                                <i class="bi bi-journal-richtext"></i>
                                <span data-purecounter-start="0" data-purecounter-end="521" data-purecounter-duration="1" class="purecounter"></span>
                                <p><strong>Number of Donation</strong> Best Good Attitude User</p>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch" data-aos="fade-up" data-aos-delay="200">
                            <div class="count-box">
                                <i class="bi bi-headset"></i>
                                <span data-purecounter-start="0" data-purecounter-end="${m}" data-purecounter-duration="1" class="purecounter"></span>
                                <p><strong>Hours Of Bookings</strong> On the mic with Player</p>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch" data-aos="fade-up" data-aos-delay="300">
                            <div class="count-box">
                                <i class="bi bi-people"></i>
                                <span data-purecounter-start="0" data-purecounter-end="32" data-purecounter-duration="1" class="purecounter"></span>
                                <p><strong>Relation Ship</strong> Include Friends and Player in game</p>
                            </div>
                        </div>

                    </div>

                </div>
            </section><!-- End Facts Section -->

            <!-- ======= Skills Section ======= -->
            <section id="skills" class="skills section-bg">
                <div class="container">

                    <div class="section-title">
                        <h2>Skills</h2>
                        <p>I possess a diverse range of IT skills that enable me to navigate the digital landscape with confidence. With a solid foundation in programming languages such as Java and Python, I can develop efficient and robust applications. Additionally, my proficiency in web development technologies like HTML, CSS, and JavaScript allows me to create dynamic and interactive websites. I am well-versed in database management, utilizing SQL to handle data effectively. Moreover, I have experience in network administration and troubleshooting, ensuring smooth connectivity and resolving technical issues. With a continuous drive for learning and adapting to new technologies, I am eager to tackle any IT challenge that comes my way.</p>
                    </div>

                    <div class="row skills-content">

                        <div class="col-lg-6" data-aos="fade-up">

                            <div class="progress">
                                <span class="skill">HTML <i class="val">100%</i></span>
                                <div class="progress-bar-wrap">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>

                            <div class="progress">
                                <span class="skill">CSS <i class="val">90%</i></span>
                                <div class="progress-bar-wrap">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>

                            <div class="progress">
                                <span class="skill">JavaScript <i class="val">75%</i></span>
                                <div class="progress-bar-wrap">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>

                        </div>

                        <div class="col-lg-6" data-aos="fade-up" data-aos-delay="100">

                            <div class="progress">
                                <span class="skill">PHP <i class="val">80%</i></span>
                                <div class="progress-bar-wrap">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>

                            <div class="progress">
                                <span class="skill">WordPress/CMS <i class="val">90%</i></span>
                                <div class="progress-bar-wrap">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>

                            <div class="progress">
                                <span class="skill">Photoshop <i class="val">55%</i></span>
                                <div class="progress-bar-wrap">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>

                        </div>

                    </div>

                </div>
            </section><!-- End Skills Section -->

            <!-- ======= Resume Section ======= -->
            <section id="historybooking" class="historybooking">
                <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
                <div class="container" style="margin-left: 0px; width: 100%" >
                    <div class="section-title">
                        <h2>History Booking</h2>

                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="main-box clearfix" style="width: 2000px">
                                <div class="table-responsive">
                                    <table class="table user-list" style="width: 2000px">
                                        <span>Total Booking: ${n}</span></br></br>
                                        <thead>
                                            <tr>
                                                <th style="width: 150px; "><span>Player Image</span></th>
                                                <th style="width: 400px;"><span>Player Name</span></th>
                                                <th style="width: 150px;"><span>Date Booking</span></th>
                                                <th style="width: 150px;" class="text-center"><span>Total Hour</span></th>
                                                <th style="width: 150px;"><span>Money</span></th>
                                                <th ><span>Message</span></th>
                                                <th ><span>Status</span></th>
                                                <th ><span>Action</span></th>
                                                <th>&nbsp;</th>
                                            </tr>
                                        </thead>

                                        <tbody>

                                            <c:forEach items="${historyBooking}" var = "m">
                                                <tr>
                                                    <td >
                                                        <c:forEach var="user" items="${userlist}">
                                                            <c:if test="${user.user_id eq m.user_id}">
                                                                <img src="${user.getLink_image()}"alt="Image" width="70" height="50" style="border-radius: 50%; left: 20%" >
                                                            </c:if>
                                                        </c:forEach>

                                                    </td>
                                                    <td>
                                                        <c:forEach var="user" items="${userlist}">
                                                            <c:if test="${user.user_id eq m.user_id}">
                                                                <h1 class="" style="font-size: 20px">${user.getUser_id()}</h1>
                                                                <!--<span class="user-subhead">${player.getPlayer_name()}</span>-->
                                                                <!--<img src="${m.getPlayer_id()}" alt="">-->
                                                                User Details:<a href="playerdetail?player_id=${m.user_id}" style="font-size: 20px">${m.getUser_id()}</a>
                                                            </c:if>
                                                        </c:forEach>
                                                    </td>
                                                    <td>
                                                        ${m.getDate_booking()}
                                                    </td>
                                                    <td class="text-center">
                                                        <span class="label label-default">${m.getTotal_hour()}</span>
                                                    </td>
                                                    <td>
                                                        <a href="#">${m.getTotal_price()}</a>$
                                                    </td>
                                                    <td>
                                                        <c:forEach var="user" items="${userlist}">
                                                            <c:if test="${user.user_id eq m.user_id}">
                                                                <h1 class="user-subhead">${m.getMessage()}</h1>
                                                            </c:if>
                                                        </c:forEach>
                                                    </td>
                                                    <td style="width: 10%;">
                                                        <b>Status: </b>
                                                        <c:if test="${m.status_booking eq '3'}">
                                                            <a href="#" class="table-link">
                                                                <span class="fa-stack">
                                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                                    <i class="fa fa-check fa-stack-1x fa-inverse"></i>
                                                                </span>
                                                                Finish
                                                            </a>
                                                        </c:if>
                                                        <c:if test="${m.status_booking eq '2'}">
                                                            <a href="#" class="table-link">
                                                                <span class="fa-stack">
                                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                                    <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                                                                </span>
                                                            </a>
                                                        </c:if>
                                                        <c:if test="${m.status_booking eq '0'}">
                                                            <a href="#" class="table-link danger">
                                                                <span class="fa-stack">
                                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                                    <i class="fa fa-close fa-stack-1x fa-inverse"></i>
                                                                </span>
                                                                Not Finish
                                                            </a>
                                                        </c:if>



<!--<a href="#" onclick="deleteMovie(${o.movie_id})">delete</a></td>-->

                                                    </td>
                                                    <td style="width: 10%;">
                                                        <c:if test="${m.status_booking eq '0'}">
                                                            <a href="#" class="table-link">
                                                                <span class="fa-stack">
                                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                                    <i class="fa fa-check-circle-o fa-stack-1x fa-inverse"></i>
                                                                </span>
                                                                Accept
                                                            </a>
                                                        </c:if>
                                                        <c:if test="${m.status_booking eq '2'} ">
                                                            <a href="#" class="table-link">
                                                                <span class="fa-stack">
                                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                                    <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                                                                </span>
                                                            </a>
                                                        </c:if>
                                                        <c:if test="${m.status_booking eq '0'} ">
                                                            <a href="#" class="table-link danger">
                                                                <span class="fa-stack">
                                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                                    <i class="fa fa-check-circle fa-stack-1x fa-inverse"></i>
                                                                </span>
                                                            </a>
                                                        </c:if>
                                                        <br>
                                                        <c:if test="${m.status_booking eq '0'}">
                                                            <a href="#" class="table-link danger" onclick="deniedBooking(${m.booking_id})">
                                                                <span class="fa-stack">
                                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                                    <i class="fa fa-ban fa-stack-1x fa-inverse"></i>
                                                                </span>
                                                                Reject
                                                            </a>
                                                        </c:if>



<!--<a href="#" onclick="deleteMovie(${o.movie_id})">delete</a></td>-->

                                                    </td>
                                                </tr>
                                            </c:forEach>

                                        </tbody>
                                    </table>
                                </div>
                                <ul class="pagination pull-right">
                                    <li><a href="#"><i class="fa fa-chevron-left"></i></a></li>
                                    <li><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                    <li><a href="#"><i class="fa fa-chevron-right"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section><!-- End Resume Section -->

            <!-- ======= Portfolio Section ======= -->
            <section id="portfolio" class="portfolio section-bg">
                <div class="container">

                    <div class="section-title">
                        <h2>Portfolio</h2>
                        <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
                    </div>

                    <div class="row" data-aos="fade-up">
                        <div class="col-lg-12 d-flex justify-content-center">
                            <ul id="portfolio-flters">
                                <li data-filter="*" class="filter-active">All</li>
                                <li data-filter=".filter-app">App</li>
                                <li data-filter=".filter-card">Card</li>
                                <li data-filter=".filter-web">Web</li>
                            </ul>
                        </div>
                    </div>

                    <div class="row portfolio-container" data-aos="fade-up" data-aos-delay="100">

                        <div class="col-lg-4 col-md-6 portfolio-item filter-app">
                            <div class="portfolio-wrap">
                                <img src="images/portfolio-1.jpg" class="img-fluid" alt="">
                                <div class="portfolio-links">
                                    <a href="images/portfolio-1.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="App 1"><i class="bx bx-plus"></i></a>
                                    <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                            <div class="portfolio-wrap">
                                <img src="images/portfolio-2.jpg" class="img-fluid" alt="">
                                <div class="portfolio-links">
                                    <a href="images/portfolio-2.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Web 3"><i class="bx bx-plus"></i></a>
                                    <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 portfolio-item filter-app">
                            <div class="portfolio-wrap">
                                <img src="images/portfolio-3.jpg" class="img-fluid" alt="">
                                <div class="portfolio-links">
                                    <a href="images/portfolio-3.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="App 2"><i class="bx bx-plus"></i></a>
                                    <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 portfolio-item filter-card">
                            <div class="portfolio-wrap">
                                <img src="images/portfolio-4.jpg" class="img-fluid" alt="">
                                <div class="portfolio-links">
                                    <a href="images/portfolio-4.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Card 2"><i class="bx bx-plus"></i></a>
                                    <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                            <div class="portfolio-wrap">
                                <img src="images/portfolio-5.jpg" class="img-fluid" alt="">
                                <div class="portfolio-links">
                                    <a href="images/portfolio-5.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Web 2"><i class="bx bx-plus"></i></a>
                                    <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 portfolio-item filter-app">
                            <div class="portfolio-wrap">
                                <img src="images/portfolio-6.jpg" class="img-fluid" alt="">
                                <div class="portfolio-links">
                                    <a href="images/portfolio-6.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="App 3"><i class="bx bx-plus"></i></a>
                                    <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 portfolio-item filter-card">
                            <div class="portfolio-wrap">
                                <img src="images/portfolio-7.jpg" class="img-fluid" alt="">
                                <div class="portfolio-links">
                                    <a href="images/portfolio-7.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Card 1"><i class="bx bx-plus"></i></a>
                                    <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 portfolio-item filter-card">
                            <div class="portfolio-wrap">
                                <img src="images/portfolio-8.jpg" class="img-fluid" alt="">
                                <div class="portfolio-links">
                                    <a href="images/portfolio-8.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Card 3"><i class="bx bx-plus"></i></a>
                                    <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                            <div class="portfolio-wrap">
                                <img src="images/portfolio-9.jpg" class="img-fluid" alt="">
                                <div class="portfolio-links">
                                    <a href="images/portfolio-9.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Web 3"><i class="bx bx-plus"></i></a>
                                    <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </section><!-- End Portfolio Section -->

            <!-- ======= Services Section ======= -->
            <section id="services" class="services">
                <div class="container">

                    <div class="section-title">
                        <h2>Services</h2>
                        <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
                    </div>

                    <div class="row">
                        <div class="col-lg-4 col-md-6 icon-box" data-aos="fade-up">
                            <div class="icon"><i class="bi bi-briefcase"></i></div>
                            <h4 class="title"><a href="">Lorem Ipsum</a></h4>
                            <p class="description">Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident</p>
                        </div>
                        <div class="col-lg-4 col-md-6 icon-box" data-aos="fade-up" data-aos-delay="100">
                            <div class="icon"><i class="bi bi-card-checklist"></i></div>
                            <h4 class="title"><a href="">Dolor Sitema</a></h4>
                            <p class="description">Minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat tarad limino ata</p>
                        </div>
                        <div class="col-lg-4 col-md-6 icon-box" data-aos="fade-up" data-aos-delay="200">
                            <div class="icon"><i class="bi bi-bar-chart"></i></div>
                            <h4 class="title"><a href="">Sed ut perspiciatis</a></h4>
                            <p class="description">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur</p>
                        </div>
                        <div class="col-lg-4 col-md-6 icon-box" data-aos="fade-up" data-aos-delay="300">
                            <div class="icon"><i class="bi bi-binoculars"></i></div>
                            <h4 class="title"><a href="">Magni Dolores</a></h4>
                            <p class="description">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>
                        </div>
                        <div class="col-lg-4 col-md-6 icon-box" data-aos="fade-up" data-aos-delay="400">
                            <div class="icon"><i class="bi bi-brightness-high"></i></div>
                            <h4 class="title"><a href="">Nemo Enim</a></h4>
                            <p class="description">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque</p>
                        </div>
                        <div class="col-lg-4 col-md-6 icon-box" data-aos="fade-up" data-aos-delay="500">
                            <div class="icon"><i class="bi bi-calendar4-week"></i></div>
                            <h4 class="title"><a href="">Eiusmod Tempor</a></h4>
                            <p class="description">Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi</p>
                        </div>
                    </div>

                </div>
            </section><!-- End Services Section -->

            <!-- ======= Testimonials Section ======= -->
            <section id="testimonials" class="testimonials section-bg">
                <div class="container">

                    <div class="section-title">
                        <h2>Nhận xét, đánh giá:</h2>
                        <p>Tôi rất ấn tượng với khả năng của bạn trong việc thể hiện các kỹ năng IT. Bạn đã trình bày một tập hợp đa dạng các kỹ năng mà bạn sở hữu, cho thấy sự đa năng và tự tin của mình khi làm việc trong môi trường kỹ thuật số. Sự thông thạo của bạn trong các ngôn ngữ lập trình như Java và Python, cùng với khả năng phát triển ứng dụng hiệu quả và mạnh mẽ, làm cho bạn trở thành một lập trình viên đáng tin cậy. Sự thành thạo của bạn trong các công nghệ phát triển web như HTML, CSS, và JavaScript cho phép bạn tạo ra các trang web động và tương tác. Khả năng quản lý cơ sở dữ liệu của bạn và sử dụng SQL để xử lý dữ liệu một cách hiệu quả là một lợi thế vô cùng quan trọng. Bên cạnh đó, bạn cũng có kinh nghiệm trong quản trị mạng và khắc phục sự cố, đảm bảo sự kết nối liên tục và giải quyết các vấn đề kỹ thuật. Tinh thần học hỏi và sẵn lòng thích nghi với các công nghệ mới của bạn cũng là một điểm mạnh. Tôi tin rằng với tập hợp các kỹ năng ấn tượng này, bạn có thể đối mặt với bất kỳ thách thức nào trong lĩnh vực IT.</p>
                    </div>

                    <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
                        <div class="swiper-wrapper">

                            <div class="swiper-slide">
                                <div class="testimonial-item" data-aos="fade-up">
                                    <p>
                                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                        User này thật tuyệt vời, chúc bạn ý luôn làm ăn phát đạt. Lần sau nhớ thuê mình tiếp nhé <3
                                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                    </p>
                                    <img src="images/testimonials/testimonials-1.jpg" class="testimonial-img" alt="">
                                    <h3>Saul Goodman</h3>
                                    <h4>Ceo &amp; Founder</h4>
                                </div>
                            </div><!-- End testimonial item -->

                            <div class="swiper-slide">
                                <div class="testimonial-item" data-aos="fade-up" data-aos-delay="100">
                                    <p>
                                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                        Một người bạn tuyệt vời, người thường xuyên giúp đỡ tôi khi chơi game cùng. Rất vui khi được làm bạn với anh ấy.
                                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                    </p>
                                    <img src="images/testimonials/testimonials-2.jpg" class="testimonial-img" alt="">
                                    <h3>Sara Wilsson</h3>
                                    <h4>Designer</h4>
                                </div>
                            </div><!-- End testimonial item -->

                            <div class="swiper-slide">
                                <div class="testimonial-item" data-aos="fade-up" data-aos-delay="200">
                                    <p>
                                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                        User này rất uy tín, lại còn hay donate mình nữa <3
                                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                    </p>
                                    <img src="images/testimonials/testimonials-3.jpg" class="testimonial-img" alt="">
                                    <h3>Jena Karlis</h3>
                                    <h4>Store Owner</h4>
                                </div>
                            </div><!-- End testimonial item -->

                            <div class="swiper-slide">
                                <div class="testimonial-item" data-aos="fade-up" data-aos-delay="300">
                                    <p>
                                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                        Bạn này tuyệt vời lắm, video call chơi game cùng mình rất thoải mái, hay tặng xu và quà nữa.
                                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                    </p>
                                    <img src="images/testimonials/testimonials-4.jpg" class="testimonial-img" alt="">
                                    <h3>Matt Brandon</h3>
                                    <h4>Freelancer</h4>
                                </div>
                            </div><!-- End testimonial item -->

                            <div class="swiper-slide">
                                <div class="testimonial-item" data-aos="fade-up" data-aos-delay="400">
                                    <p>
                                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                        Theo dõi mình với bạn thân yêu ơi <3 <3 <3 
                                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                    </p>
                                    <img src="images/testimonials/testimonials-5.jpg" class="testimonial-img" alt="">
                                    <h3>John Larson</h3>
                                    <h4>Entrepreneur</h4>
                                </div>
                            </div><!-- End testimonial item -->

                        </div>
                        <div class="swiper-pagination"></div>
                    </div>

                </div>
            </section><!-- End Testimonials Section -->

            <!-- ======= Contact Section ======= -->
            <section id="contact" class="contact">
                <div class="container">

                    <div class="section-title">
                        <h2>Contact</h2>
                        <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
                    </div>

                    <div class="row" data-aos="fade-in">

                        <div class="col-lg-5 d-flex align-items-stretch">
                            <div class="info">
                                <div class="address">
                                    <i class="bi bi-geo-alt"></i>
                                    <h4>Location:</h4>
                                    <p>A108 Adam Street, New York, NY 535022</p>
                                </div>

                                <div class="email">
                                    <i class="bi bi-envelope"></i>
                                    <h4>Email:</h4>
                                    <p>info@example.com</p>
                                </div>

                                <div class="phone">
                                    <i class="bi bi-phone"></i>
                                    <h4>Call:</h4>
                                    <p>+1 5589 55488 55s</p>
                                </div>

                                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12097.433213460943!2d-74.0062269!3d40.7101282!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb89d1fe6bc499443!2sDowntown+Conference+Center!5e0!3m2!1smk!2sbg!4v1539943755621" frameborder="0" style="border:0; width: 100%; height: 290px;" allowfullscreen></iframe>
                            </div>

                        </div>

                        <div class="col-lg-7 mt-5 mt-lg-0 d-flex align-items-stretch">
                            <form action="forms/contact.php" method="post" role="form" class="php-email-form">
                                <div class="row">
                                    <div class="form-group col-md-6">
                                        <label for="name">Your Name</label>
                                        <input type="text" name="name" class="form-control" id="name" required>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="name">Your Email</label>
                                        <input type="email" class="form-control" name="email" id="email" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="name">Subject</label>
                                    <input type="text" class="form-control" name="subject" id="subject" required>
                                </div>
                                <div class="form-group">
                                    <label for="name">Message</label>
                                    <textarea class="form-control" name="message" rows="10" required></textarea>
                                </div>
                                <div class="my-3">
                                    <div class="loading">Loading</div>
                                    <div class="error-message"></div>
                                    <div class="sent-message">Your message has been sent. Thank you!</div>
                                </div>
                                <div class="text-center"><button type="submit">Send Message</button></div>
                            </form>
                        </div>

                    </div>

                </div>
            </section><!-- End Contact Section -->

        </main><!-- End #main -->

        <!-- ======= Footer ======= -->
        <footer id="footer">
            <div class="container">
                <div class="copyright">
                    &copy; Copyright <strong><span>Play2Together</span></strong>
                </div>
                <div class="credits">
                    <!-- All the links in the footer should remain intact. -->
                    <!-- You can delete the links only if you purchased the pro version. -->
                    <!-- Licensing information: https://bootstrapmade.com/license/ -->
                    <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/iportfolio-bootstrap-portfolio-websites-template/ -->
                    <!--Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>-->
                </div>
            </div>
        </footer><!-- End  Footer -->

        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

        <!-- Vendor JS Files -->
        <script src="vendor/purecounter/purecounter_vanilla.js"></script>
        <script src="vendor/aos/aos.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="vendor/glightbox/js/glightbox.min.js"></script>
        <script src="vendor/isotope-layout/isotope.pkgd.min.js"></script>
        <script src="vendor/swiper/swiper-bundle.min.js"></script>
        <script src="vendor/typed.js/typed.umd.js"></script>
        <script src="vendor/waypoints/noframework.waypoints.js"></script>
        <script src="vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="js/main.js"></script>
        <script>
            function deniedBooking(id) {
                var option = confirm("Do you want to denied this Booking ?");
                if (option === true) {
                    window.location.href = 'changestatusbooking?booking_id=' + id;
                }
            }
        </script>

    </body>

</html>