<%-- 
    Document   : transaction
    Created on : Jul 13, 2023, 4:54:13 PM
    Author     : Cuthi
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Admin</title>

        <!-- Custom fonts for this template-->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="css/sb-admin-2.min.css" rel="stylesheet">

    </head>

    <body id="page-top">

        <!-- Page Wrapper -->
        <div id="wrapper">

            <!-- Sidebar -->
            <c:set  var="addmovie" value="active"/>
 <c:set  var="addmovie2" value="show"/>
            <%@include file="slide.jsp" %>
            <!-- End of Sidebar -->

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">

                <!-- Main Content -->
                <div id="content">

                    <!-- Topbar -->
                    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                        <!-- Sidebar Toggle (Topbar) -->
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>

                        <!-- Topbar Search -->
                        <form
                            class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                            <div class="input-group">
                                <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                       aria-label="Search" aria-describedby="basic-addon2">
                                <div class="input-group-append">
                                    <button class="btn btn-primary" type="button">
                                        <i class="fas fa-search fa-sm"></i>
                                    </button>
                                </div>
                            </div>
                        </form>

                        <!-- Topbar Navbar -->
                        <ul class="navbar-nav ml-auto">

                            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                            <li class="nav-item dropdown no-arrow d-sm-none">
                                <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-search fa-fw"></i>
                                </a>
                            </li>

                            <!-- Nav Item - Alerts -->
                            <li class="nav-item dropdown no-arrow mx-1">
                                <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-bell fa-fw"></i>
                                    <!-- Counter - Alerts -->
                                    <span class="badge badge-danger badge-counter">3+</span>
                                </a>
                            </li>

                            <!-- Nav Item - Messages -->
                            <li class="nav-item dropdown no-arrow mx-1">
                                <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-envelope fa-fw"></i>
                                    <!-- Counter - Messages -->
                                    <span class="badge badge-danger badge-counter">7</span>
                                </a>
                            </li>

                            <div class="topbar-divider d-none d-sm-block"></div>

                            <!-- Nav Item - User Information -->
                            <li class="nav-item dropdown no-arrow">
                                <a class="nav-link dropdown-toggle" href="./profile" id="userDropdown" role="button"
                                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span class="mr-2 d-none d-lg-inline text-gray-600 small">Douglas McGee</span>
                                    <img class="img-profile rounded-circle"
                                         src="img/undraw_profile.svg">
                                </a>
                            </li>

                        </ul>

                    </nav>
                    <!-- End of Topbar -->

                    <!-- Begin Page Content -->
                    <div class="container-fluid">

                        <!-- Page Heading -->
                        <h1 class="h3 mb-4 text-gray-800">Player</h1>

                        <div class="row">

                            <div class="col-lg-8">
                                <c:if test="${updaters ne null}">
                                    <p style="color: greenyellow">update successfull</p>
                                </c:if>
                                <!-- Circle Buttons -->
                                <div class="card shadow mb-4">
                                    <div class="card-header py-3">
                                        <h6 class="m-0 font-weight-bold text-primary">Player List</h6>
                                    </div>
                                    <div class="card-header py-3">
                                        <form id="myFormAccPerPage" action="player">
                                            <h6 class="m-0 font-weight-bold text-primary">Account per page</h6>
                                            <select name="accPerPage" onchange="submitForm()">
                                            <option value="5" <c:if test="${5==page.getItemPerPage()}" >selected</c:if>>5</option>
                                            <option value="10" <c:if test="${10==page.getItemPerPage()}" >selected</c:if>>10</option>
                                            <option value="15" <c:if test="${15==page.getItemPerPage()}" >selected</c:if>>15</option>
                                            <option value="20" <c:if test="${20==page.getItemPerPage()}" >selected</c:if>>20</option>
                                        </select>
                                        </form>
                                    </div>
                                    <div class="card-body"> 

                                        <table class="table table-hover">
                                            <thead>
                                                <tr>
                                                    <th>Player</th>
                                                    <th>User</th>
                                                    <th>Total Hour</th>
                                                    <th>Total price</th>
                                                    <th>Date</th>
                                                    <th>Message</th>
                                                    <th>Status</th>
                                                    <th>Update</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            Total Player: <a>${n}</a>

                                                <c:forEach items="${list}" var="o">
                                                    <tr>
                                                        <td>${o.player_id}</td>
                                                        <td>${o.player_name}</td>
                                                        <td>${o.phone_number}</td>
                                                        <td>${o.num_of_star}</td>
                                                        <td>${o.income}</td>
                                                        <td><img style="max-width: 10%;" src="${o.link_image}" alt="alt"/></td>
                                                        <td>${o.status_player eq "1" ? "Enable" : "Disable"}</td>
                                                        <td><a href="changeStatus?id=${o.player_id}">Change status</a></td>
                                                        <td><a href="editplayer?player_id=${o.player_id}">Update</a></td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                            <div style="text-align: center;">
                                                <table>
                                                    <tr>
                                                        <c:forEach begin="1" end="${page.getTottalPage()}" var="i">
                                                            <td style="border: 1px solid black">
                                                                <a href="player?paging=${i}" <c:if test="${i==currentPage}" >style="color:red;"</c:if> >${i}</a>
                                                            </td>
                                                        </c:forEach>
                                                    </tr>
                                                </table>
                                            </div>
                                </div>


                            </div>

                        </div>

                    </div>
                    <!-- /.container-fluid -->

                </div>
                <!-- End of Main Content -->

                <!-- Footer -->
                <footer class="sticky-footer bg-white">
                    <div class="container my-auto">
                        <div class="copyright text-center my-auto">
                            <span>Copyright &copy; Your Website 2020</span>
                        </div>
                    </div>
                </footer>
                <!-- End of Footer -->

            </div>
            <!-- End of Content Wrapper -->

        </div>
        <!-- End of Page Wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!-- Logout Modal-->
        <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                        <a class="btn btn-primary" href="login.html">Logout</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="js/sb-admin-2.min.js"></script>

    </body>

    <script type="text/javascript">
    function submitForm() {
        document.getElementById("myFormAccPerPage").submit();
    }
    </script>

</html>
