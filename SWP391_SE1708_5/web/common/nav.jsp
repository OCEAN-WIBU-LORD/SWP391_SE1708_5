
<nav class="site-nav">
            <div class="container">
                <div class="menu-bg-wrap">
                    <div class="site-navigation">
                        <a href="home" class="logo m-0 float-start"><img src="images/image-removebg-preview1.png" width="50px" alt="alt" />    <span style="font-family: fantasy">Play2Together</span></a>

                        <ul
                            class="js-clone-nav d-none d-lg-inline-block text-start site-menu float-end"
                            >
                            <li class="has-children">
                                <a href="#">Game List</a>
                                <ul class="dropdown">
                                    <li><a href="#">Action</a></li>
                                    <li><a href="#">Creative</a></li>
                                    <li><a href="#">Adventure</a></li>
                                    <li><a href="#">Sport</a></li>
                                    <li><a href="#">Puzzle</a></li>
                                    <li><a href="#">Moba 5v5</a></li>
                                    <li><a href="#">Real-time</a></li>

                                </ul>
                            </li>
                            <li class="has-children">
                                <a href="leaderboard">Leader Board</a>
                                <ul class="dropdown">
                                    <li><a href="leaderboard">Donate Leader Board</a></li>
                                    <li><a href="leaderboard">Top Star Players</a></li>
                                    <li><a href="#">Top Users</a></li>
                                    <li class="has-children">
                                        <a href="#">MORE</a>
                                        <ul class="dropdown">
                                            <li><a href="#">ACCOUNT CGV</a></li>
                                            <li><a href="#">BENEFITS</a></li>

                                        </ul>
                                    </li>
                                </ul>
                            </li>

                            <li class="has-children">
                                <a href="properties.html">MEMBER</a>
                                <ul class="dropdown">
                                    <li><a href="usermainprofile#historybooking">HISTORY BOOKING</a></li>
                                    <li><a href="#">BENEFITS</a></li>
                                </ul>
                            </li>

                            <c:if test="${usercurrent ne null}">
                                <li class="has-children">
                                <a href="#">${full_name} </a>
                                <ul class="dropdown">
                                    <li><a href="usermainprofile">PROFILE</a></li>
                                    <!--<li><a href="usermainpage=${user_id}">PROFILE</a></li>-->
                                    <li><a href="logout">LOGOUT</a></li>
                                </ul></li>
                            </c:if>
                            <c:if test="${usercurrent eq null}">
                                
                                <li class="">
                                    <a href="register">REGISTER</a></li>
                                <li class="has-children">
                                <a href="properties.html">Login</a>
                                <ul class="dropdown">
                                    <li><a href="login">As User</a></li>
                                    <li><a href="login_1">As Player</a></li>
                                </ul>
                            </li>
                            </c:if>
                        </ul>

                        <a
                            href="#"
                            class="burger light me-auto float-end mt-1 site-menu-toggle js-menu-toggle d-inline-block d-lg-none"
                            data-toggle="collapse"
                            data-target="#main-navbar"
                            >
                            <span></span>
                        </a>
                    </div>
                </div>
            </div>
        </nav>