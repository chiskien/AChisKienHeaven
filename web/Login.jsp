
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- <link rel="stylesheet" href="css/style.css"> -->
        <link rel="stylesheet" href="css/login.css">
        <!--Boostrap-->
        <!-- <link rel="stylesheet" href="css/bootstrap.css"> -->

        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <script src="https://code.jquery.com/jquery-3.4.1.js"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.2/TweenMax.min.js"></script>

        <!--Scrolling-->
        <link rel="stylesheet" href="css/animate.css">
        <script src="js/wow.min.js"></script>
    </head>
    <body>

        <div class="container-fluid">
            <div class="nav2">
                <div class="menu-open">
                    <i class="fa fa-bars"></i>
                </div>
                <div class="brand">
                    <span><a href="Home.jsp" style="text-decoration: none !important;">CK</a></span>
                </div>
                <div class="menu">
                    <div class="menu-close">
                        <i class="fa fa-bars"></i>
                    </div>
                    <ul>
                       <li><a href="Home.jsp">A ChrisKien's Heaven</a></li>
                        <li><a href="ListController">A ChrisKien's Collection</a></li>
                        <li><a href="about.html">A ChrisKien's Story</a></li>
                        <li><a href="Login.jsp">A ChrisKien's Territory</a></li>
                        <li><a href="Email.jsp">Email Subscription</a></li>
                    </ul>
                    <div class="media-menu">
                        <ul>
                            <li><a href="http://github.com"><i class="fa fa-github" style="font-size: 24px;"></i></a></li>
                            <li><a href="http://facebook.com"><i class="fa fa-facebook" style="font-size: 24px;"></i></a></li>
                            <li><a href="http://instagram.com"><i class="fa fa-instagram" style="font-size: 24px;"></i></a></li>
                            <li><a href="http://linkedin.com"><i class="fa fa-linkedin" style="font-size: 24px;"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="cart">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-bag" viewBox="0 0 16 16">
                    <path d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1zm3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4h-3.5zM2 5h12v9a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V5z"/>
                    </svg>
                </div>
            </div>
        </div>
        
        <div class="container wow fadeInUp">
            <div class="img">
                <img src="image/undraw_Login_re_4vu2 (2).svg" alt="">
            </div>
            <div class="login-container">
                <form action="LoginController   " method="get">
                    <img class="avatar" src="image/undraw_profile_pic_ic5t.svg" alt="">
                    <h2> ChrisKien's Territory</h2>

                    <div class="input-div one focus">
                        <div class="i">
                            <i class="fa fa-user" style="font-size: 24px;"></i>
                        </div>
                        <div>
                            <h5>Username </h5>
                            <input type="text" class="input" name="username" placeholder="Username">
                        </div>
                    </div>

                    <div class="input-div two focus">
                        <div class="i">
                            <i class="fa fa-lock" style="font-size: 24px;"></i>
                        </div>
                        <div>
                            <h5>Password </h5>
                            <input type="password" class="input" name="password" placeholder="Password">
                        </div>
                    </div>
                    <a href="#" class="forgot">Forgot Password</a>
                    <input type="checkbox" name="remember" value="remember">
                    <span class="custom-checkbox"> Remember me </span><br>
                    <a href="SignUp.jsp" class="create">Create Account</a>

                    <input type="submit" class="btn" value="Login">
                </form>
            </div>
        </div>

        <script type="text/javascript">

            //Scroll reveal animations

            new WOW().init();

            //Scroll activated background change
            $(function () {
                $(document).scroll(function () {
                    var $nav = $(".nav");
                    $nav.toggleClass('scrolled', $(this).scrollTop() > $nav.height());
                });
            });

            var t1 = new TimelineMax({paused: true});
            t1.to(".menu", 0.5, {
                left: "0%",
                ease: Power2.easeInOut
            });

            t1.reverse();
            $(document).on("click", ".menu-open", function () {
                t1.reversed(!t1.reversed());
            });
            $(document).on("click", ".menu-close", function () {
                t1.reversed(!t1.reversed());
            });

        </script>
    </body>
</html>
