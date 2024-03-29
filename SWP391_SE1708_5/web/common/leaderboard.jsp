<%-- 
    Document   : leaderboard
    Created on : Jun 20, 2023, 6:17:31 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Leaderboard UI Design</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/style_5.css">
    </head>
    <body>
        <section class="main-content">
            <div class="container">
                <h1>Top Earning Player</h1>
                <br>
                <br>

                <div class="row">
                    <div class="col-sm-4">
                        <div class="leaderboard-card">
                            <div class="leaderboard-card__top">
                                <h3 class="text-center">$${top2Income}</h3>
                            </div>
                            <div class="leaderboard-card__body">
                                <div class="text-center">
                                    <img src="https://playerduo.net/api/upload-service/images/1d1fa3b4-fe53-4a76-983e-6e1470f79367__6260b250-eb2e-11ec-92ac-1b8d2f5bc2b5__player_album.jpg" class="circle-img mb-2" alt="User Img">
                                    <h5 class="mb-0">${player2.player_name}</h5>
                                    <p class="text-muted mb-0">@${player2.player_id}</p>
                                    <hr>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <span><c:forEach var="i" begin="0" end="${player2.num_of_star-1}">
                                                <span class="fa fa-star checked" style="color: yellow"></span>
                                        </c:forEach></span>
                                        <a href="playerdetail?player_id=${player2.player_id}"><button class="btn btn-outline-success btn-sm">View Detail</button></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="leaderboard-card leaderboard-card--first">
                            <div class="leaderboard-card__top">
                                <h3 class="text-center">$${top1Income}</h3>
                            </div>
                            <div class="leaderboard-card__body">
                                <div class="text-center">
                                    <img src="https://playerduo.net/api/upload-service/images/6885cb0a-74b9-4c50-a614-5f8e513a1225__cfaa3500-ce74-11ed-a19f-23a3b10d190e__player_album.jpg" class="circle-img mb-2" alt="User Img">
                                    <h5 class="mb-0">Em bé Chan ☁️❤️</h5>
                                    <p class="text-muted mb-0">@chanbaby95</p>
                                    <hr>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <span><c:forEach var="i" begin="0" end="${player1.num_of_star-1}">
                                                <span class="fa fa-star checked" style="color: yellow"></span>
                                            </c:forEach></span>
                                        <a href="playerdetail?player_id=${player1.player_id}"><button class="btn btn-outline-success btn-sm">View Detail</button></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="leaderboard-card">
                            <div class="leaderboard-card__top">
                                <h3 class="text-center">$${top3Income}</h3>
                            </div>
                            <div class="leaderboard-card__body">
                                <div class="text-center">
                                    <img src="https://playerduo.net/api/upload-service/images/dc805681-0d56-4dd6-a1d1-ae2cf3ea4813__5ab17d40-e39f-11ed-a19f-23a3b10d190e__player_album.jpg" class="circle-img mb-2" alt="User Img">
                                    <h5 class="mb-0">Thư</h5>
                                    <p class="text-muted mb-0">@muasaobang</p>
                                    <hr>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <span>
                                            <c:forEach var="i" begin="0" end="${player3.num_of_star-1}">
                                                <span class="fa fa-star checked" style="color: yellow"></span>
                                            </c:forEach>
                                        </span>
                                        <a href="playerdetail?player_id=${player3.player_id}"><button class="btn btn-outline-success btn-sm">View Detail</button></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <c:forEach items="${listPlayer}" var = "q">
                    <c:if test="${q.income eq 183324}">
                        ${q.player_id}
                    </c:if>
                </c:forEach>



                <h4>All Player</h4>
                <!--${a} - ${g} - ${h} - ${k}-->

                <table class="table">
                    <thead>
                        <tr>
                            <th>Player</th>
                            <th>Total-income</th>
                            <th>No of Star</th>
                            <th>Phone Number</th>
                            <th>View-Details</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listPlayer}" var = "m">
                                    <tr>
                                        <td>
                                            <div class="d-flex align-items-center">
                                                <img src="${m.link_image}" class="circle-img circle-img--small mr-2" alt="User Img">
                                                <div class="user-info__basic">
                                                    <h5 class="mb-0">${m.player_name}</h5>
                                                    <p class="text-muted mb-0">${m.player_id}</p>
                                                </div>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="d-flex align-items-baseline">
                                                <h4 class="mr-1">${m.income}</h4><small class="text-success"><i class="fa fa-arrow-up"></i>5%</small>
                                            </div>
                                        </td>
                                        <td> <c:forEach var="i" begin="0" end="${m.num_of_star-1}">
                                                <span class="fa fa-star checked" style="color: yellow"></span>
                                            </c:forEach></td>
                                        <td>${m.phone_number}</td>
                                        <td>
                                            <a href="playerdetail?player_id=${m.player_id}"><button class="btn btn-success btn-sm">View Detail</button></a>
                                        </td>
                                    </tr>
                        </c:forEach>
<!--                        <tr>
                            <td>
                                <div class="d-flex align-items-center">
                                    <img src="https://playerduo.net/api/upload-service/images/1d1fa3b4-fe53-4a76-983e-6e1470f79367__6260b250-eb2e-11ec-92ac-1b8d2f5bc2b5__player_album.jpg" class="circle-img circle-img--small mr-2" alt="User Img">
                                    <div class="user-info__basic">
                                        <h5 class="mb-0">Minh Ngoc</h5>
                                        <p class="text-muted mb-0">@congchuabongbong</p>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex align-items-baseline">
                                    <h4 class="mr-1">$160,124</h4><small class="text-success"><i class="fa fa-arrow-up"></i>5%</small>
                                </div>
                            </td>
                            <td>HCM,VietNam</td>
                            <td>sandeep@sandeepmail.com</td>
                            <td>
                                <button class="btn btn-success btn-sm">View Detail</button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="d-flex align-items-center">
                                    <img src="https://playerduo.net/api/upload-service/images/dc805681-0d56-4dd6-a1d1-ae2cf3ea4813__89118520-e3a1-11ed-a19f-23a3b10d190e__player_album.jpg" class="circle-img circle-img--small mr-2" alt="User Img">
                                    <div class="user-info__basic">
                                        <h5 class="mb-0">Hạ Lạ</h5>
                                        <p class="text-muted mb-0">@hala</p>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex align-items-baseline">
                                    <h4 class="mr-1">$66,500</h4><small class="text-success"><i class="fa fa-arrow-up"></i>5%</small>
                                </div>
                            </td>
                            <td>Hanoi,VietNam</td>
                            <td>kiran@kiranmail.com</td>
                            <td>
                                <button class="btn btn-success btn-sm">View Detail</button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="d-flex align-items-center">
                                    <img src="https://playerduo.net/api/upload-service/images/75c40a5c-dbda-4ac3-9106-55d6d7ca9b0f__a3c3aef0-cb0c-11ed-a19f-23a3b10d190e__player_album.jpg" class="circle-img circle-img--small mr-2" alt="User Img">
                                    <div class="user-info__basic">
                                        <h5 class="mb-0">Tran Thi Ha My</h5>
                                        <p class="text-muted mb-0">@johnnoakes</p>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex align-items-baseline">
                                    <h4 class="mr-1">$986</h4><small class="text-success"><i class="fa fa-arrow-up"></i>5%</small>
                                </div>
                            </td>
                            <td>Vinh,VietNam</td>
                            <td>kiran@kiranmail.com</td>
                            <td>
                                <button class="btn btn-success btn-sm">View Detail</button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="d-flex align-items-center">
                                    <img src="https://playerduo.net/api/upload-service/images/66f8b716-ee52-4590-aa0a-73bd28590f5f__3a2689a0-1d52-11eb-89a2-ed059467d76a__player_album.jpg" class="circle-img circle-img--small mr-2" alt="User Img">
                                    <div class="user-info__basic">
                                        <h5 class="mb-0">Pham Thuy Dung</h5>
                                        <p class="text-muted mb-0">@juncutee</p>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex align-items-baseline">
                                    <h4 class="mr-1">$951</h4><small class="text-success"><i class="fa fa-arrow-up"></i>5%</small>
                                </div>
                            </td>
                            <td>Hue,VietNam</td>
                            <td>kiran@kiranmail.com</td>
                            <td>
                                <button class="btn btn-success btn-sm">View Detail</button>
                            </td>
                        </tr>-->
                    </tbody>
                </table>
            </div>
        </section>

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    </body>
</html>