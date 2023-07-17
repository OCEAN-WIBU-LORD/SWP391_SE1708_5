<%-- 
    Document   : manageUser
    Created on : Jun 26, 2023, 12:36:25 AM
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

        <title>SB Admin 2</title>

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
                                <!-- Dropdown - Messages -->
                                <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                     aria-labelledby="searchDropdown">
                                    <form class="form-inline mr-auto w-100 navbar-search">
                                        <div class="input-group">
                                            <input type="text" class="form-control bg-light border-0 small"
                                                   placeholder="Search for..." aria-label="Search"
                                                   aria-describedby="basic-addon2">
                                            <div class="input-group-append">
                                                <button class="btn btn-primary" type="button">
                                                    <i class="fas fa-search fa-sm"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
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
                                <!-- Dropdown - User Information -->
                                <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                     aria-labelledby="userDropdown">
                                    <a class="dropdown-item" href="#">
                                        <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Profile
                                    </a>
                                    <a class="dropdown-item" href="#">
                                        <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Settings
                                    </a>
                                    <a class="dropdown-item" href="#">
                                        <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Activity Log
                                    </a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="./logout" data-toggle="modal" data-target="#logoutModal">
                                        <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Logout
                                    </a>
                                </div>
                            </li>

                        </ul>

                    </nav>
                    <!-- End of Topbar -->

                    <!-- Begin Page Content -->
                    <div class="container-fluid">

                        <!-- Page Heading -->
                        <h1 class="h3 mb-4 text-gray-800">User</h1>

                        <div class="row">

                            <div class="col-lg-8">
                                <c:if test="${updaters ne null}">
                                    <p style="color: greenyellow">update successfull</p>
                                </c:if>
                                <!-- Circle Buttons -->
                                <div class="card shadow mb-4">
                                    <div class="card-header py-3">
                                        <h6 class="m-0 font-weight-bold text-primary">User List</h6>
                                    </div>
                                    <div class="card-body"> 

                                        <table class="table table-hover">
                                            <thead>
                                                <tr>
                                                    <th>User ID</th>
                                                    <th>User Name</th>
                                                    <th>Phone Number</th>
                                                    <th>Gender</th>
                                                    <th>Address</th>
                                                    <th>Link Image</th>
                                                    <th>Balance</th>
                                                    <th>Status</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            Total User <a>${n}</a>

                                                <c:forEach items="${userList}" var="o">
                                                    <tr>
                                                        <td>${o.user_id}</td>
                                                        <td>${o.full_name}</td>
                                                        <td>${o.phone_number}</td>
                                                        <td>
                                                            <c:if test="${o.gender eq true}">
                                                                Male
                                                            </c:if>
                                                            <c:if test="${o.gender ne true}">
                                                                Female
                                                            </c:if>
                                                        </td>
                                                        <td>${o.address}</td>
                                                        <td><img style="max-width: 10%;" src="${o.link_image}" alt=""/></td>
                                                        <td>${o.balance}</td>
                                                        <td>
                                                             <c:if test="${o.status eq 1}">
                                                                Enable
                                                            </c:if>
                                                            <c:if test="${o.status ne 1}">
                                                                Disable
                                                            </c:if>
                                                        </td>
                                                        <td><a href="manageUser?user_id=${o.user_id}">Update</a></td>
                                                    </tr>
                                                </c:forEach>


                                            </tbody>
                                        </table>


                                    </div>
                                </div>


                            </div>

                            <div class="col-lg-4">

                                <div class="card shadow mb-4">
                                    <div class="card-header py-3">
                                        <h6 class="m-0 font-weight-bold text-primary">User</h6>
                                    </div>
                                    <div class="card-body">
                                        <form action="manageUser" method="post">
                                            <table class="table table-hover">
                                                <tbody>
                                                    <tr>
                                                         <td><b>User ID</b></td>
                                                         <td><input disabled name="id" type="text" value="${user.user_id}" style="width: 90%"/></td>
                                                    </tr>
                                                    <tr>
                                                        <td><b>User Name</b></td>
                                                        <td><input disabled name="player_name" type="text" value="${user.full_name}" style="width: 90%"/></td>
                                                    </tr>
                                                    <tr>
                                                        <td><b>Gmail</b></td>
                                                        <td><textarea disabled name="description" cols="60" rows="3">${user.email}</textarea></td>
                                                    </tr>
                                                    <tr>
                                                        <td><b>Gender</b></td>
                                                        <td><textarea disabled name="gender" cols="60" rows="3">${user.gender}</textarea></td>
                                                    </tr>
                                                    <tr>
                                                        <td><b>Phone Number</b></td>
                                                        <td><input disabled name="phone_number" type="number" value="${user.phone_number}"/></td>
                                                    </tr>
                                                    <tr>
                                                        <td><b>Address</b></td>
                                                        <td><input disabled name="num_of_star" type="text" style="width: 90%" value="${user.address}"/></td>
                                                    </tr>
                                                    <tr>
                                                        <td><b>Link Image</b></td>
                                                        <td><input disabled name="link_image" type="text" style="width: 90%" value="${user.link_image}"/></td>
                                                    </tr>
                                                    <tr>
                                                        <td><b>Balance</b></td>
                                                        <td><input name="balance" type="number" style="width: 90%" value="${user.balance}"/></td>
                                                    </tr>
                                                    <tr>
                                                        <td><b>Status</b></td>
                                                        <td>
                                                            <select name="select_status">
                                                                <option value="0">Disable</option>
                                                                <option value="1" <c:if test="${user.getStatus() eq 1}">selected</c:if>>Enable</option>
                                                            </select>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><input hidden name="id" type="text" value="${user.user_id}" style="width: 90%"/></td>
                                                        <td><button type="submit">Update</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </form>

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
        function deleteMovie(id) {
            var option = confirm("Do you want to delete this movie ?");
            if (option === true) {
                window.location.href = 'deletemovie?movie_id=' + id;
            }
        }
    </script>

</html>