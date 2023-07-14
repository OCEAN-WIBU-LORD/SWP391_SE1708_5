
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta name="author" content="Untree.co" />
        <link rel="shortcut icon" href="favicon.png" />

        <meta name="description" content="" />
        <meta name="keywords" content="bootstrap, bootstrap5" />

        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@400;500;600;700&display=swap"
            rel="stylesheet"
            />

        <link rel="stylesheet" href="fonts/icomoon/style.css" />
        <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css" />

        <link rel="stylesheet" href="css/tiny-slider.css" />
        <link rel="stylesheet" href="css/aos.css" />
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/style_6.css" />

        <title>
            Play2Together &mdash; Player_Hiring
        </title>
        

    </head>
    <body>


        <div class="site-mobile-menu site-navbar-target">
            <div class="site-mobile-menu-header">
                <div class="site-mobile-menu-close">
                    <span class="icofont-close js-menu-toggle"></span>
                </div>
            </div>
            <div class="site-mobile-menu-body"></div>
        </div>

        <%@include file="nav.jsp" %>

        <div class="hero">
            <div class="hero-slide">
                <div
                    class="img overlay"
                    style="background-image: url('https://encdn.ldmnq.com/ldstore/en/SwfDs8-1628579160714.webp')"
                    ></div>


            </div>


            <div class="container"style="max-width: 100%">
                <div class="row justify-content-center align-items-center " style="max-width: 100%">
                    <div class="col-lg-9 text-center" style="max-width: 100%">
                        <h1 class="heading" data-aos="fade-up">
                            Easiest way to find your Gaming Co-Players
                        </h1>
                        <form
                            action="SearchServlet"
                            class="narrow-w form-search d-flex align-items-stretch mb-3"
                            data-aos="fade-up"
                            data-aos-delay="200" method="post"
                            >
                            <input
                                type="text"
                                class="form-control px-4"
                                placeholder="Input Player ID, Player Name or Game Name"
                                name="searchInput"/>
                            <button type="submit" class="btn btn-primary">Search</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <div class="section">
            <div class="container">
                <div class="row mb-5 align-items-center">
                    <div class="col-lg-6">
                        <h2 class="font-weight-bold text-primary heading">
                            Popular Player
                        </h2>
                    </div>
                    <div class="col-lg-6 text-lg-end">
                        <p>
                            <a
                                href="allplayer"
                                target="_blank"
                                class="btn btn-primary text-white py-3 px-4"
                                >View all</a
                            >
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="property-slider-wrap">
                            <div class="property-slider">

                                <c:forEach items="${playerList}" var = "o">
                                    <!--//-->
                                    <div class="property-item" >
                                        <a href="playerdetail?player_id=${o.player_id}" class="img" >
                                            <img src="${o.link_image}" alt="Image" class="img-fluid" style="height: 500px; weight: 500px; object-fit: scale-down; object-position: 100%;"/>
                                        </a>

                                        <div class="property-content" style="height: 300px">
                                            <div class="price mb-2"><span>${o.player_name}</span></div>
                                            <div style="height:90%">

                                                <a
                                                    href="playerdetail?player_id=${o.player_id}"
                                                    class="btn btn-primary py-2 px-3"
                                                    >See details</a
                                                >
                                            </div>
                                        </div>
                                    </div>
                                    <!-- .item -->
                                </c:forEach>
                                <br>
                                <c:forEach items="${playerList2}" var = "o">
                                    <!--//-->
                                    <div class="property-item" >
                                        <a href="playerdetail?player_id=${o.player_id}" class="img" >
                                            <img src="${o.link_image}" alt="Image" class="img-fluid" style="height: 500px; weight: 500px; object-fit: scale-down; object-position: 100%;"/>
                                        </a>

                                        <div class="property-content" style="height: 300px">
                                            <div class="price mb-2"><span>${o.player_name}</span></div>
                                            <div style="height:90%">

                                                <a
                                                    href="playerdetail?player_id=${o.player_id}"
                                                    class="btn btn-primary py-2 px-3"
                                                    >See details</a
                                                >
                                            </div>
                                        </div>
                                    </div>
                                    <!-- .item -->
                                </c:forEach>

                            </div>

                            <div
                                id="property-nav"
                                class="controls"
                                tabindex="0"
                                aria-label="Carousel Navigation"
                                >
                                <span
                                    class="prev"
                                    data-controls="prev"
                                    aria-controls="property"
                                    tabindex="-1"
                                    >Prev</span
                                >
                                <span
                                    class="next"
                                    data-controls="next"
                                    aria-controls="property"
                                    tabindex="-1"
                                    >Next</span
                                >
                            </div>
                        </div>
                    </div>
                </div>
                <a>${a}</a>
                <a>${full_name}</a>

            </div>



        </div>
                <a type="button" href="chat" style="position: fixed; right: 0px; bottom: 0px; z-index: 2;">
                    <img src="images/vector-chat-icon-png_302635-removebg-preview.png" style="height: 250px; width: 250px">
        </a>




    </div>






    <div class="site-footer" >
        <div class="container" >
            <div class="row">
                <div class="col-lg-4">
                    <div class="widget">
                        <h3>Contact</h3>
                        <address>43 Raymouth Rd. Baltemoer, London 3910</address>
                        <ul class="list-unstyled links">
                            <li><a href="tel://11234567890">+1(123)-456-7890</a></li>
                            <li><a href="tel://11234567890">+1(123)-456-7890</a></li>
                            <li>
                                <a href="mailto:info@mydomain.com">info@mydomain.com</a>
                            </li>
                        </ul>
                    </div>
                    <!-- /.widget -->
                </div>
                <!-- /.col-lg-4 -->
                <div class="col-lg-4">
                    <div class="widget">
                        <h3>Sources</h3>
                        <ul class="list-unstyled float-start links">
                            <li><a href="#">About us</a></li>
                            <li><a href="#">Services</a></li>
                            <li><a href="#">Vision</a></li>
                            <li><a href="#">Mission</a></li>
                            <li><a href="#">Terms</a></li>
                            <li><a href="#">Privacy</a></li>
                        </ul>
                        <ul class="list-unstyled float-start links">
                            <li><a href="#">Partners</a></li>
                            <li><a href="#">Business</a></li>
                            <li><a href="#">Careers</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">FAQ</a></li>
                            <li><a href="#">Creative</a></li>
                        </ul>
                    </div>
                    <!-- /.widget -->
                </div>
                <!-- /.col-lg-4 -->
                <div class="col-lg-4">
                    <div class="widget">
                        <h3>Links</h3>
                        <ul class="list-unstyled links">
                            <li><a href="#">Our Vision</a></li>
                            <li><a href="#">About us</a></li>
                            <li><a href="#">Contact us</a></li>
                        </ul>

                        <ul class="list-unstyled social">
                            <li>
                                <a href="#"><span class="icon-instagram"></span></a>
                            </li>
                            <li>
                                <a href="#"><span class="icon-twitter"></span></a>
                            </li>
                            <li>
                                <a href="#"><span class="icon-facebook"></span></a>
                            </li>
                            <li>
                                <a href="#"><span class="icon-linkedin"></span></a>
                            </li>
                            <li>
                                <a href="#"><span class="icon-pinterest"></span></a>
                            </li>
                            <li>
                                <a href="#"><span class="icon-dribbble"></span></a>
                            </li>
                        </ul>
                    </div>
                    <!-- /.widget -->
                </div>
                <!-- /.col-lg-4 -->
            </div>
            <!-- /.row -->

            <div class="row mt-5">
                <div class="col-12 text-center">
                    <!-- 
                      **==========
                      NOTE: 
                      Please don't remove this copyright link unless you buy the license here https://untree.co/license/  
                      **==========
                    -->

                    <p>
                        Copyright &copy;
                        <script>
                            document.write(new Date().getFullYear());
                        </script>
                        . All Rights Reserved. &mdash; Designed with love by
                        <a href="https://untree.co">Untree.co</a>
                        <!-- License information: https://untree.co/license/ -->
                    </p>
                    <div>
                        <c:forEach items="${actorList}" var = "o">${o.actor_id}</c:forEach>
                        <a href="https://themewagon.com/" target="_blank">themewagon</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.container -->
    </div>
    <!-- /.site-footer -->

    <!-- Preloader -->
    <div id="overlayer"></div>
    <div class="loader">
        <div class="spinner-border" role="status">
            <span class="visually-hidden">Loading...</span>
        </div>
    </div>

    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/tiny-slider.js"></script>
    <script src="js/aos.js"></script>
    <script src="js/navbar.js"></script>
    <script src="js/counter.js"></script>
    <script src="js/custom.js"></script>

<!--
    <section style="background-color: #eee;">
        <div class="container py-5">

            <div class="row d-flex justify-content-center">
                <div class="col-md-8 col-lg-6 col-xl-4">

                    Buttons trigger collapse 
                    <a class="btn btn-info btn-lg btn-block" data-mdb-toggle="collapse" href="home#collapseExample"
                       role="button" aria-expanded="false" aria-controls="collapseExample">
                        <div class="d-flex justify-content-between align-items-center">
                            <span>Collapsible Chat App</span>
                            <i class="fas fa-chevron-down"></i>
                        </div>
                    </a>

                     Collapsed content 
                    <div class="collapse mt-3" id="collapseExample">
                        <div class="card" id="chat4">
                            <div class="card-body" data-mdb-perfect-scrollbar="true"
                                 style="position: relative; height: 400px">

                                <div class="d-flex flex-row justify-content-start">
                                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava5-bg.webp"
                                         alt="avatar 1" style="width: 45px; height: 100%;">
                                    <div>
                                        <p class="small p-2 ms-3 mb-1 rounded-3" style="background-color: #f5f6f7;">Hi</p>
                                        <p class="small p-2 ms-3 mb-1 rounded-3" style="background-color: #f5f6f7;">How are you
                                            ...???</p>
                                        <p class="small p-2 ms-3 mb-1 rounded-3" style="background-color: #f5f6f7;">What are you
                                            doing
                                            tomorrow? Can we come up a bar?</p>
                                        <p class="small ms-3 mb-3 rounded-3 text-muted">23:58</p>
                                    </div>
                                </div>

                                <div class="divider d-flex align-items-center mb-4">
                                    <p class="text-center mx-3 mb-0" style="color: #a2aab7;">Today</p>
                                </div>

                                <div class="d-flex flex-row justify-content-end mb-4 pt-1">
                                    <div>
                                        <p class="small p-2 me-3 mb-1 text-white rounded-3 bg-info">Hiii, I'm good.</p>
                                        <p class="small p-2 me-3 mb-1 text-white rounded-3 bg-info">How are you doing?</p>
                                        <p class="small p-2 me-3 mb-1 text-white rounded-3 bg-info">Long time no see! Tomorrow
                                            office. will
                                            be free on sunday.</p>
                                        <p class="small me-3 mb-3 rounded-3 text-muted d-flex justify-content-end">00:06</p>
                                    </div>
                                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava2-bg.webp"
                                         alt="avatar 1" style="width: 45px; height: 100%;">
                                </div>

                                <div class="d-flex flex-row justify-content-start mb-4">
                                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava5-bg.webp"
                                         alt="avatar 1" style="width: 45px; height: 100%;">
                                    <div>
                                        <p class="small p-2 ms-3 mb-1 rounded-3" style="background-color: #f5f6f7;">Okay</p>
                                        <p class="small p-2 ms-3 mb-1 rounded-3" style="background-color: #f5f6f7;">We will go on
                                            Sunday?</p>
                                        <p class="small ms-3 mb-3 rounded-3 text-muted">00:07</p>
                                    </div>
                                </div>

                                <div class="d-flex flex-row justify-content-end mb-4">
                                    <div>
                                        <p class="small p-2 me-3 mb-1 text-white rounded-3 bg-info">That's awesome!</p>
                                        <p class="small p-2 me-3 mb-1 text-white rounded-3 bg-info">I will meet you Sandon Square
                                            sharp at
                                            10 AM</p>
                                        <p class="small p-2 me-3 mb-1 text-white rounded-3 bg-info">Is that okay?</p>
                                        <p class="small me-3 mb-3 rounded-3 text-muted d-flex justify-content-end">00:09</p>
                                    </div>
                                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava2-bg.webp"
                                         alt="avatar 1" style="width: 45px; height: 100%;">
                                </div>

                                <div class="d-flex flex-row justify-content-start mb-4">
                                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava5-bg.webp"
                                         alt="avatar 1" style="width: 45px; height: 100%;">
                                    <div>
                                        <p class="small p-2 ms-3 mb-1 rounded-3" style="background-color: #f5f6f7;">Okay i will meet
                                            you on
                                            Sandon Square</p>
                                        <p class="small ms-3 mb-3 rounded-3 text-muted">00:11</p>
                                    </div>
                                </div>

                                <div class="d-flex flex-row justify-content-end mb-4">
                                    <div>
                                        <p class="small p-2 me-3 mb-1 text-white rounded-3 bg-info">Do you have pictures of Matley
                                            Marriage?</p>
                                        <p class="small me-3 mb-3 rounded-3 text-muted d-flex justify-content-end">00:11</p>
                                    </div>
                                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava2-bg.webp"
                                         alt="avatar 1" style="width: 45px; height: 100%;">
                                </div>

                                <div class="d-flex flex-row justify-content-start mb-4">
                                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava5-bg.webp"
                                         alt="avatar 1" style="width: 45px; height: 100%;">
                                    <div>
                                        <p class="small p-2 ms-3 mb-1 rounded-3" style="background-color: #f5f6f7;">Sorry I don't
                                            have. i
                                            changed my phone.</p>
                                        <p class="small ms-3 mb-3 rounded-3 text-muted">00:13</p>
                                    </div>
                                </div>

                                <div class="d-flex flex-row justify-content-end">
                                    <div>
                                        <p class="small p-2 me-3 mb-1 text-white rounded-3 bg-info">Okay then see you on sunday!!
                                        </p>
                                        <p class="small me-3 mb-3 rounded-3 text-muted d-flex justify-content-end">00:15</p>
                                    </div>
                                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava2-bg.webp"
                                         alt="avatar 1" style="width: 45px; height: 100%;">
                                </div>

                            </div>
                            <div class="card-footer text-muted d-flex justify-content-start align-items-center p-3">
                                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava5-bg.webp"
                                     alt="avatar 3" style="width: 40px; height: 100%;">
                                <input type="text" class="form-control form-control-lg" id="exampleFormControlInput3"
                                       placeholder="Type message">
                                <a class="ms-1 text-muted" href="#!"><i class="fas fa-paperclip"></i></a>
                                <a class="ms-3 text-muted" href="#!"><i class="fas fa-smile"></i></a>
                                <a class="ms-3 link-info" href="#!"><i class="fas fa-paper-plane"></i></a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </div>


    </section>
    
    -->
</body>
</html>

