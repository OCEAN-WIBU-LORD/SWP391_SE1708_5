<%-- 
    Document   : moviedetail
    Created on : Mar 12, 2023, 5:08:19 PM
    Author     : Nguyen Van Ky
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- /*
* Template Name: Property
* Template Author: Untree.co
* Template URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
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


        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

        <title>
            Property &mdash; Free Bootstrap 5 Website Template by Untree.co
        </title>
        <style>
            body{margin-top:20px;
                 background-color: #eee;
            }

            .search-result-categories>li>a {
                color: #b6b6b6;
                font-weight: 400
            }

            .search-result-categories>li>a:hover {
                background-color: #ddd;
                color: #555
            }

            .search-result-categories>li>a>.glyphicon {
                margin-right: 5px
            }

            .search-result-categories>li>a>.badge {
                float: right
            }

            .search-results-count {
                margin-top: 10px
            }

            .search-result-item {
                padding: 20px;
                background-color: #fff;
                border-radius: 4px
            }

            .search-result-item:after,
            .search-result-item:before {
                content: " ";
                display: table
            }

            .search-result-item:after {
                clear: both
            }

            .search-result-item .image-link {
                display: block;
                overflow: hidden;
                border-top-left-radius: 4px;
                border-bottom-left-radius: 4px
            }

            @media (min-width:768px) {
                .search-result-item .image-link {
                    display: inline-block;
                    margin: -20px 0 -20px -20px;
                    float: left;
                    width: 200px
                }
            }

            @media (max-width:767px) {
                .search-result-item .image-link {
                    max-height: 200px
                }
            }

            .search-result-item .image {
                max-width: 100%
            }

            .search-result-item .info {
                margin-top: 2px;
                font-size: 12px;
                color: #999
            }

            .search-result-item .description {
                font-size: 13px
            }

            .search-result-item+.search-result-item {
                margin-top: 20px
            }

            @media (min-width:768px) {
                .search-result-item-body {
                    margin-left: 200px
                }
            }

            .search-result-item-heading {
                font-weight: 400
            }

            .search-result-item-heading>a {
                color: #555
            }

            @media (min-width:768px) {
                .search-result-item-heading {
                    margin: 0
                }
            }
        </style>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

        <script>
            // Function to perform the search and display the results
            function searchTop5() {
                var searchInput = $('#searchInput').val();
                var condition = $('#conditionSelect').val();

                $.get('SearchServlet', {action: 'search', keyword: searchInput, condition: condition}, function (data) {
                    displaySearchResults(data);
                });
            }
            function searchBestDonate() {
                var searchInput = $('#searchInput').val();
                var condition = $('#conditionSelect').val();

                $.get('SearchServlet', {action: 'search', keyword: searchInput, condition: condition}, function (data) {
                    displaySearchResults(data);
                });
            }
            function searchBestBooking() {
                var searchInput = $('#searchInput').val();
                var condition = $('#conditionSelect').val();

                $.get('SearchServlet', {action: 'search', keyword: searchInput, condition: condition}, function (data) {
                    displaySearchResults(data);
                });
            }

            // Function to display the search results

        </script>


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

        <div
            class="hero page-inner overlay"
            style="background-image: url('images/hero_bg_3.jpg'); height: 50%"
            >

        </div>    
        <%
        int a = 1;
        %>

        <form method="POST" action="SearchServlet">
            <div class="container mt-5">

                <div class="row d-flex justify-content-center">

                    <div class="col-md-10">

                        <div class="card p-3  py-4">

                            <!--<h5>An Easier way to find your Player</h5>-->

                            <div class="row g-3 mt-2">

                                <div class="col-md-3">

<!--                                    <div class="dropdown">
                                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-expanded="false">
                                            Any Status
                                        </button>
                                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                            <li><a class="dropdown-item" href="SearchServlet?action=<%=a%>" onclick="login" type="button">Top 5 Player</a></li>
                                            <li><a class="dropdown-item" href="SearchServlet" onclick="searchBestDonate()" type="submit">Best Donated Player</a></li>
                                            <li><a class="dropdown-item" href="SearchServlet" onclick="searchBestBooking()" type="submit">Best Booking Player</a></li>
                                        </ul>
                                    </div>-->
                                    <label for="filter">Choose Filter:</label>

                                    <select name="filter" id="filter"  >
                                        <option value="none">None</option>
                                        <option value="topIncome">Top High Income Player</option>
                                        <option value="bestdonate">Best Donated Player</option>
                                        <option value="bestbooking">Best Booking Player</option>
                                    </select>


                                </div>

                                <div class="col-md-6">

                                    <input name="searchInput" type="text" class="form-control" placeholder="Enter player Name or Player ID" id="searchInput">

                                </div>
                                <div class="col-md-3">

                                    <button class="btn btn-secondary btn-block">Search Results</button>

                                </div>

                            </div>


                            <div class="mt-3">

                                <a data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample" class="advanced">
                                    Advance Search With Filters <i class="fa fa-angle-down"></i>
                                </a>


                                <div class="collapse" id="collapseExample">
                                    <div class="card card-body">

                                        <div class="row">

                                            <div class="col-md-4">

                                                <input type="text" placeholder="Player ID" class="form-control">

                                            </div>


                                            <div class="col-md-4">

                                                <input type="text" class="form-control" placeholder="Search by Post">

                                            </div>


                                            <div class="col-md-4">
                                                    Search by Price Range
                                                <input type="text" class="form-control" placeholder="Price Range From" name="pricefrom">
                                                <input type="text" class="form-control" placeholder="To" name="priceto">

                                            </div>

                                        </div>

                                    </div>
                                </div>


                            </div>






                        </div>

                    </div>

                </div>





            </div>

            <div class="container">
                <div class="row ng-scope">
                    <div class="col-md-3 col-md-push-9">
                        <h4>Results <span class="fw-semi-bold">Filtering</span></h4>
                        <p class="text-muted fs-mini">Listed content is categorized by the following groups:</p>
                        <ul class="nav nav-pills nav-stacked search-result-categories mt">
                            <li><a href="#">Friends <span class="badge">34</span></a>
                            </li>
                            <li><a href="#">Pages <span class="badge">9</span></a>
                            </li>
                            <li><a href="#">Images</a>
                            </li>
                            <li><a href="#">Groups</a>
                            </li>
                            <li><a href="#">Globals <span class="badge">18</span></a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-9 col-md-pull-3">
                        <p class="search-results-count">About 94 700 000 (0.39 sec.) results</p>
                        <c:forEach items="${player}" var="player">
                            <section class="search-result-item">
                                <a class="image-link" href="#"><img class="image" src="${player.getLink_image()}">
                                </a>
                                <div class="search-result-item-body">
                                    <div class="row">
                                        <div class="col-sm-9">
                                            <h4 class="search-result-item-heading"><a href="#">${player.getPlayer_name()}</a></h4>
                                            <p class="info">${player.getPhone_number()}</p>
                                            <p class="description">${player.getDescription()}</p>
                                        </div>
                                        <div class="col-sm-3 text-align-center">
                                            <p class="value3 mt-sm" style="font-size: 20px; font-weight: bold">${player.getIncome()}</p>
                                            <p class="fs-mini text-muted">PER HOUR</p><a class="btn btn-primary btn-info btn-sm" href="playerdetail?player_id=${player.player_id}">Learn More</a>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </c:forEach>
                        <div class="text-align-center">
                            <ul class="pagination pagination-sm">
                                <li class="disabled"><a href="#">Prev</a>
                                </li>
                                <li class="active"><a href="#">1</a>
                                </li>
                                <li><a href="#">2</a>
                                </li>
                                <li><a href="#">3</a>
                                </li>
                                <li><a href="#">4</a>
                                </li>
                                <li><a href="#">5</a>
                                </li>
                                <li><a href="#">Next</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>



            <!--                ${message}
                            <input type="submit" value="submit">-->

        </form>

    </body>
</html>
