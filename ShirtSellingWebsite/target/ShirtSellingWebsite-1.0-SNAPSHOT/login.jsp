<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link rel="stylesheet" href="css/login_style.css">
        <title>Login/Register Form</title>
    </head>
    <body>
        <div id="logreg-forms">
            <form class="form-signin" action="LoginControl" method="post">
                <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign in</h1>
                <c:if test="${not empty logFailed}">
                    <div class="alert alert-danger" role="alert"  >
                        ${logFailed}
                    </div>
                </c:if>

                <input type="text" name="user" id="inputEmail" class="form-control" placeholder="Username" required="" autofocus="">
                <input type="password" name="pass" id="inputPassword" class="form-control" placeholder="Password" required="">

                <button class="btn btn-success btn-block" type="submit"><i class="fas fa-sign-in-alt"></i> Sign in</button>
                <a href="#" id="forgot_pswd">Forgot password?</a>
                <hr>
                <!-- <p>Don't have an account!</p>  -->
                <button class="btn btn-primary btn-block" type="button" id="btn-signup"><i class="fas fa-user-plus"></i> Sign up </button>
            </form>

            <form action="/reset/password/" class="form-reset">
                <input type="email" id="resetEmail" class="form-control" placeholder="Email address" required="" autofocus="">
                <button class="btn btn-primary btn-block" type="submit">Reset Password</button>
                <a href="#" id="cancel_reset"><i class="fas fa-angle-left"></i> Back</a>
            </form>

            <form action="SignUpControl" class="form-signup">

                <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign up</h1>
                <input type="text" name="user" id="user-name" class="form-control" placeholder="Full name" required="" autofocus="">
                <input type="password" name="pass" id="user-pass" class="form-control" placeholder="Password" required autofocus="">
                <input type="password" name="repass" id="user-repeatpass" class="form-control" placeholder="Repeat Password" required autofocus="">

                <button class="btn btn-primary btn-block" type="submit"><i class="fas fa-user-plus"></i> Sign Up</button>
                <a href="#" id="cancel_signup"><i class="fas fa-angle-left"></i> Back</a>
            </form>
            <br>

        </div>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/loginPage.js"></script>
    </body>
</html>