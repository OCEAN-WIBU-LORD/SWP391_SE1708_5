<%-- 
    Document   : editprofile
    Created on : Jun 28, 2023, 5:39:25 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
            <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
            <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js" rel="stylesheet">
            <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" rel="stylesheet">
        <style>
            body{background: rgb(99, 39, 120)}.form-control:focus{box-shadow: none;border-color: #BA68C8}.profile-button{background: rgb(99, 39, 120);box-shadow: none;border: none}.profile-button:hover{background: #682773}.profile-button:focus{background: #682773;box-shadow: none}.profile-button:active{background: #682773;box-shadow: none}.back:hover{color: #682773;cursor: pointer}.labels{font-size: 11px}.add-experience:hover{background: #BA68C8;color: #fff;cursor: pointer;border: solid 1px #BA68C8}
        </style>
    </head>
    <body>
        <div class="container rounded bg-white mt-5 mb-5">
            <div class="row"> <div class="col-md-3 border-right"> 
                    <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                        <img class="rounded-circle mt-5" src="${udetail.link_image}" style="width: 200px; height: 200px">
                        <span class="font-weight-bold">${username}</span>
                        <span class="text-black-50">duong123@gmail.com</span>
                        <span> </span>
                    </div> 
                </div> 
                <div class="col-md-5 border-right">
                    <div class="p-3 py-5"> 
                        <div class="d-flex justify-content-between align-items-center mb-3"> 
                            <h4 class="text-right">Profile Settings</h4> 
                        </div> 
                        <div class="row mt-2"> <div class="col-md-6">
                                <label class="labels">User_ID</label><input type="text" class="form-control" placeholder="${udetail.user_id}" value="" readonly="">
                            </div> 
                            <div class="col-md-6">
                                <label class="labels">User Role</label>
                                <input type="text" class="form-control" value="" placeholder="${user_role}" readonly="">
                            </div> 
                        </div> 
                        <div class="row mt-3"> <div class="col-md-12">
                                <label class="labels">PhoneNumber</label>
                                <input type="text" class="form-control" placeholder="${udetail.phone_number}" value="" name="phonenumber">
                            </div>
                            <div class="col-md-12">
                                <label class="labels">Address</label>
                                <input type="text" class="form-control" placeholder="${udetail.address}" value="" name="address">
                            </div>
                            <div class="col-md-12">
                                <label class="labels">Description</label>
                                <textarea style="height: 200px"type="text" class="form-control" placeholder="Write something about your self, hobby, work, or main strength. . .etc . ." value="" name="description"></textarea>
                            </div>
                            <div class="col-md-12"><label class="labels">Link Image</label>
                                <input type="text" class="form-control" placeholder="${udetail.link_image}" value="" name="link_image">
                            </div> 
                        </div> 
                        <div class="row mt-3">
                            <div class="col-md-6">
                                <label class="labels">Password</label>
                                <input type="password" class="form-control" placeholder="password" value="" name="password">
                            </div> 
                            <div class="col-md-6">
                                <label class="labels">Re Password</label>
                                <input type="password" class="form-control" value="" placeholder="repassword" name="repassword">
                            </div> 
                        </div> 
                        <div class="mt-5 text-center">
                            <button class="btn btn-primary profile-button" type="button">Save Profile</button>
                        </div> 
                    </div> 
                </div> 
                <div class="col-md-4"> 
                    <div class="p-3 py-5"> 
                        <div class="d-flex justify-content-between align-items-center experience">
                            <span>Edit Experience</span>
                            <span class="border px-3 p-1 add-experience">
                                <i class="fa fa-plus"></i>&nbsp;Experience
                            </span>
                        </div>
                        <br> 
                        <div class="col-md-12">
                            <label class="labels">Experience in Designing</label>
                            <input type="text" class="form-control" placeholder="experience" value="">
                        </div> <br> <div class="col-md-12">
                            <label class="labels">Additional Details</label>
                            <input type="text" class="form-control" placeholder="additional details" value="">
                        </div> 
                    </div> 
                </div> 
            </div>
        </div>
    </div>
</div>
</body>
</html>
