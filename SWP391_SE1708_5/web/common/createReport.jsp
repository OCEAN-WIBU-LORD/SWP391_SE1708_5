<!DOCTYPE html>


<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Report</title>
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
        </style>
    </head>

    <body>

        <!-- ======= Mobile nav toggle button ======= -->
        <i class="bi bi-list mobile-nav-toggle d-xl-none"></i>

        <!-- ======= Header ======= -->
        <header id="header">
            <div class="d-flex flex-column">

                <div class="profile">
                    <img src="images/profile-img.jpg" alt="" class="img-fluid rounded-circle">
                    <h1 class="text-light"><a href="index.html">Alex Smith</a></h1>
                    <div class="social-links mt-3 text-center">
                        <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
                        <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
                        <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                        <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
                        <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
                    </div>
                </div>

                <nav id="navbar" class="nav-menu navbar">
                    <ul>
                        <li><a href="home" class="nav-link scrollto"><i class="bx bx-user"></i> <span>Home</span></a></li>
                        <li><a href="usermainprofile#historybooking" class="nav-link scrollto"><i class="bx bx-user"></i> <span>History Booking</span></a></li>
                        <li><a href="#about" class="nav-link scrollto"><i class="bx bx-user"></i> <span>Create Report</span></a></li>
                        <li><a href="#historybooking" class="nav-link scrollto"><i class="bx bx-file-blank"></i> <span>History Report</span></a></li>
                        <!--<li><a href="#portfolio" class="nav-link scrollto"><i class="bx bx-book-content"></i> <span>Portfolio</span></a></li>-->
                        <!--<li><a href="#services" class="nav-link scrollto"><i class="bx bx-server"></i> <span>Services</span></a></li>-->
                        <!--<li><a href="#contact" class="nav-link scrollto"><i class="bx bx-envelope"></i> <span>Contact</span></a></li>-->
                    </ul>
                </nav><!-- .nav-menu -->
            </div>
        </header><!-- End Header -->

        <main id="main">

            <!-- ======= About Section ======= -->
            <section id="about" class="about">
                <div class="container">

                    <div class="section-title">
                        <h2>Create report</h2>
                        <form action="" method="post">
                            <table>
                                <div class="transaction">
                                    <tr>
                                        <td>Transaction</td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <c:if test="${role == 'player'}">
                                        <tr>
                                        <td></td>
                                        <td>User: </td>
                                            <td>${transaction.user_id}</td>
                                        </tr>
                                    </c:if>
                                    <c:if test="${role == 'user'}">
                                        <tr>
                                            <td></td>
                                            <td>Player: </td>
                                            <td>${transaction.player_id}</td>
                                        </tr>
                                    </c:if>
                                        <tr>
                                            <td></td>
                                            <td>Date booking</td>
                                            <td>${transaction.getDate_booking()}</td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>Total Hour:</td>
                                            <td>${transaction.getTotal_hour()}</td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>Total Price: </td>
                                            <td>${transaction.getTotal_price()}</td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>Message:  </td>
                                            <td>${transaction.getMessage()}</td>
                                        </tr><br>
                                        <tr></tr>
                                </div>
                                        <div class="report">
                                            <tr>
                                                <td>Report</td>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td>Reason (With evidence): </td>
                                                <td><textarea name="reason"></textarea></td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td>
                                                    <c:if test="${transaction.getId() ne null}">
                                                        <input hidden name="booking_id" value="${transaction.getId()}">
                                                        <button type="submit">Create Report</button>                                                        
                                                    </c:if>
                                                </td>
                                            </tr>
                                        </div>
                            </table>
                        </form>
                    </div>

<!--                    <div class="row">
                        <div class="col-lg-4" data-aos="fade-right">
                            <img src="images/profile-img.jpg" class="img-fluid" alt="">
                        </div>
                        <div class="col-lg-8 pt-4 pt-lg-0 content" data-aos="fade-left">
                            <h3>UI/UX Designer &amp; Web Developer.</h3>
                            <p class="fst-italic">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                                magna aliqua.
                            </p>
                            <div class="row">
                                <div class="col-lg-6">
                                    <ul>
                                        <li><i class="bi bi-chevron-right"></i> <strong>Birthday:</strong> <span>1 May 1995</span></li>
                                        <li><i class="bi bi-chevron-right"></i> <strong>Website:</strong> <span>www.example.com</span></li>
                                        <li><i class="bi bi-chevron-right"></i> <strong>Phone:</strong> <span>+123 456 7890</span></li>
                                        <li><i class="bi bi-chevron-right"></i> <strong>City:</strong> <span>New York, USA</span></li>
                                    </ul>
                                </div>
                                <div class="col-lg-6">
                                    <ul>
                                        <li><i class="bi bi-chevron-right"></i> <strong>Age:</strong> <span>30</span></li>
                                        <li><i class="bi bi-chevron-right"></i> <strong>Degree:</strong> <span>Master</span></li>
                                        <li><i class="bi bi-chevron-right"></i> <strong>PhEmailone:</strong> <span>email@example.com</span></li>
                                        <li><i class="bi bi-chevron-right"></i> <strong>Freelance:</strong> <span>Available</span></li>
                                    </ul>
                                </div>
                            </div>
                            <p>
                                Officiis eligendi itaque labore et dolorum mollitia officiis optio vero. Quisquam sunt adipisci omnis et ut. Nulla accusantium dolor incidunt officia tempore. Et eius omnis.
                                Cupiditate ut dicta maxime officiis quidem quia. Sed et consectetur qui quia repellendus itaque neque. Aliquid amet quidem ut quaerat cupiditate. Ab et eum qui repellendus omnis culpa magni laudantium dolores.
                            </p>
                        </div>
                    </div>-->

                </div>
            </section><!-- End About Section -->

             <!-- ======= Resume Section ======= -->
            <section id="historybooking" class="historybooking">
                <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
                <div class="container" style="margin-left: 0px; width: 100%" >
                    <div class="section-title">
                        <h2>History Report</h2>

                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="main-box clearfix" style="width: 2000px">
                                <div class="table-responsive">
                                    <table class="table user-list" style="width: 2000px">
                                        <span>Total Booking: ${totalReport}</span></br></br>
                                        <c:if test="${totalReport == 0}">
                                            <h3>You have no reports!</h3>
                                        </c:if>
                                        <c:if test="${totalReport != 0}">
                                            <thead>
                                            <tr>
                                                <th style="width: 150px; "><span>Player</span></th>
                                                <th style="width: 150px;"><span>User</span></th>
                                                <th style="width: 100px;"><span>Total Hour</span></th>
                                                <th style="width: 150px;" class="text-center"><span>Total Price</span></th>
                                                <th style="width: 150px;"><span>Date Booking</span></th>
                                                <th style="width: 200px;"><span>Message</span></th>
                                                <th style="width: 150px;"><span>Reason report</span></th>
                                                <th style="width: 150px;"><span>Date report</span></th>
                                                <th style="width: 150px;"><span>Status Report</span></th>
                                                <th style="width: 150px;"><span>Action</span></th>
                                            </tr>
                                        </thead>

                                        <tbody>

                                            <c:forEach items="${reports}" var="r">
                                                <tr>
                                                    <td>${r.getPlayerId()}</td>
                                                    <td>${r.getUserId()}</td>
                                                    <td>${r.getBooking().getTotal_hour()}</td>
                                                    <td>${r.getBooking().getTotal_price()}</td>
                                                    <td>${r.getBooking().getDate_booking()}</td>
                                                    <td>${r.getBooking().getMessage()}</td>
                                                    <td>${r.getReason()}</td>
                                                    <td>${r.getCreatedAt()}</td>
                                                    <td>${r.getStatus()}</td>
                                                    <td>
                                                        <c:if test="${r.getStatus() eq 'processing'}">
                                                            <form action="cancelReport" method="post">
                                                                <input hidden name="report_id" value="${r.getId()}">
                                                                <button type="submit">Cancel Report</button>
                                                            </form>
                                                        </c:if>
                                                    </td>
                                                </tr>
                                            </c:forEach>

                                        </tbody>
                                        </c:if>
                                       
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

    </body>

</html>