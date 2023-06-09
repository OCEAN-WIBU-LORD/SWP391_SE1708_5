<%-- 
    Document   : login
    Created on : Mar 11, 2023, 8:52:50 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V16</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="login_atr/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_atr/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_atr/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_atr/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_atr/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="login_atr/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_atr/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_atr/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="login_atr/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_atr/css/util.css">
	<link rel="stylesheet" type="text/css" href="login_atr/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('login_atr/images/bg-01.jpg');">
			<div class="wrap-login100 p-t-30 p-b-50">
				<span class="login100-form-title p-b-41">
					Login to Play2Together as Player
				</span>
                            <form action="login_1" method="post" class="login100-form validate-form p-b-33 p-t-5">
                                        <p style="text-align: center;color: red" >${mess}</p>
					<div class="wrap-input100 validate-input" data-validate = "Enter username">
                                            <input class="input100" type="text" name="username" value="${username eq null ? "" : username}" placeholder="User name">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" type="password" name="pass" value="${password eq null ? "" : password}" placeholder="Password">
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>

					<div class="container-login100-form-btn m-t-32">
						<button class="login100-form-btn">
							Login
						</button>
					</div>
					<div class="container-login100-form-btn m-t-32">
						
                                            <a
                                                    href="repass?player_id=${username}"
                                                    class="login100-form-btn"
                                                    >Forgot Password</a
                                                >
					</div>
                                                

				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="login_atr/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================--> 
	<script src="login_atr/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="login_atr/vendor/bootstrap/js/popper.js"></script>
	<script src="login_atr/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="login_atr/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="login_atr/vendor/daterangepicker/moment.min.js"></script>
	<script src="login_atr/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="login_atr/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="login_atr/js/main.js"></script>

</body>
</html>