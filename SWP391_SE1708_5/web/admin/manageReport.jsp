<%-- 
    Document   : manageReport
    Created on : Jul 17, 2023, 10:57:09 AM
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

        <title>SB Admin 2 - Buttons</title>

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
                        <ul class="navbar-nav ml-auto">                        </ul>

                    </nav>
                    <!-- End of Topbar -->

                    <!-- Begin Page Content -->
                    <div class="container-fluid">

                        <!-- Page Heading -->
                        <h1 class="h3 mb-4 text-gray-800">Reports</h1>

                        <div class="row">

                            <div class="col-lg-6">

                                <!-- Circle Buttons -->
                                <div class="card shadow mb-12" style="width: 3000px;">
                                    <div class="card-header py-3">
                                        <h6 class="m-0 font-weight-bold text-primary">Game Type List</h6>
                                    </div>
                                    <div class="card-body">
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
                                                <th style="width: 150px;"><span>Update</span></th>                                                
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
                                                        <select name="new_status">
                                                            <c:if test="${r.getStatus() eq 'processing'}">
                                                                <option value="process">Process</option>
                                                                <option value="accept">Accept</option>
                                                                <option value="reject">Reject</option>
                                                            </c:if>
                                                            <c:if test="${r.getStatus() eq 'accept'}">
                                                                <option value="accept">Accept</option>
                                                            </c:if>
                                                            <c:if test="${r.getStatus() eq 'reject'}">
                                                                <option value="reject">Reject</option>
                                                            </c:if>
                                                            </select>
                                                    </td>
                                                    <td>
                                                        <form action="cancelReport" method="post">
                                                                <input hidden name="report_id" value="${r.getId()}">
                                                                <button type="submit">Update Report</button>
                                                            </form>
                                                    </td>
                                                </tr>
                                            </c:forEach>

                                        </tbody>
                                        </c:if>
                                       
                                    </table>


                                    </div>
                                </div>


                            </div>

<!--                            <div class="col-lg-6">

                                <div class="card shadow mb-4">
                                    <div class="card-header py-3">
                                        <c:if test="${type ne null}">
                                            <h6 class="m-0 font-weight-bold text-primary">Edit game type</h6>
                                        </c:if>
                                        <c:if test="${type eq null}">
                                            <h6 class="m-0 font-weight-bold text-primary">Add game type</h6>
                                        </c:if>
                                        <h6>${mess}</h6>
                                    </div>
                                    <div class="card-body">
                                        <form action="addGameType" method="post">
                                            <table class="table table-hover">

                                                <tbody>
                                                    
                                                    <tr>
                                                        <td><b>Game Type</b></td>
                                                        <td>
                                                            <input name="name_type_new" type="text"style="width: 90%" value="${type.getGame_type()}"/>
                                                        </td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <td><input hidden name="name_type" type="text"style="width: 90%" value="${type.getGame_type()}"/></td>
                                                        <td><button type="submit">
                                                                ${type eq null ? "Add" : "Update"}
                                                            </button></td>

                                                    </tr>

                                                </tbody>
                                            </table>
                                        </form>

                                    </div>
                                </div>

                            </div>-->

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

</html>>