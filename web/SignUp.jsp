
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- <link rel="stylesheet" href="css/style.css"> -->
        <link rel="stylesheet" href="css/style.css">
        <!--Boostrap-->
        <link rel="stylesheet" href="css/bootstrap.css"> 


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
                    <span><a href="index.html">CK</a></span>
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
                        <div class="share-button">
                            <span>Share Me</span>

                            <a href="#" ><i class="fa fa-facebook-f"></i></a>
                            <a href="#" ><i class="fa fa-twitter"></i></a>
                            <a href="#" ><i class="fa fa-instagram"></i></a>
                            <a href="#" ><i class="fa fa-linkedin-in"></i></a>

                        </div>
                    </div>
                </div>
                <div class="cart">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-bag" viewBox="0 0 16 16">
                    <path d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1zm3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4h-3.5zM2 5h12v9a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V5z"/>
                    </svg>
                </div>
            </div>
            <div class="about-hero">
                <div class="container content">
                    <form action="CustomerController" method="get" class="wow fadeInUp">
                        <div class="row">
                            <div class="input-group col-lg-12 mb-4">
                                <div class="input-group-prepend">
                                    <span class="input-group-text bg-white px-4 border-md border-right-0">
                                        <i class="fa fa-user text-muted"></i>
                                    </span>
                                </div>
                                <input  type="text" name="username" placeholder="Username" class="form-control bg-white border-left-0 border-md">
                            </div>
                            <!-- First Name -->
                            <div class="input-group col-lg-6 mb-4">
                                <div class="input-group-prepend">
                                    <span class="input-group-text bg-white px-4 border-md border-right-0">
                                        <i class="fa fa-user text-muted"></i>
                                    </span>
                                </div>
                                <input id="firstName" type="text" name="firstname" placeholder="First Name" class="form-control bg-white border-left-0 border-md">
                            </div>

                            <!-- Last Name -->
                            <div class="input-group col-lg-6 mb-4">
                                <div class="input-group-prepend">
                                    <span class="input-group-text bg-white px-4 border-md border-right-0">
                                        <i class="fa fa-user text-muted"></i>
                                    </span>
                                </div>
                                <input id="lastName" type="text" name="lastname" placeholder="Last Name" class="form-control bg-white border-left-0 border-md">
                            </div>
                            <!-- Password  -->
                            <div class="input-group col-lg-6 mb-4">
                                <div class="input-group-prepend">
                                    <span class="input-group-text bg-white px-4 border-md border-right-0">
                                        <i class="fa fa-lock text-muted"></i>
                                    </span>
                                </div>
                                <input id="password" type="password" name="password" placeholder="Password" class="form-control bg-white border-left-0 border-md">
                            </div>

                            <!-- Password Confirmation -->
                            <div class="input-group col-lg-6 mb-4">
                                <div class="input-group-prepend">
                                    <span class="input-group-text bg-white px-4 border-md border-right-0">
                                        <i class="fa fa-lock text-muted"></i>
                                    </span>
                                </div>
                                <input id="passwordConfirmation" type="text" name="passwordConfirmation" placeholder="Confirm Password" class="form-control bg-white border-left-0 border-md">
                            </div>

                            <!-- Email Address -->

                            <div class="input-group col-lg-12 mb-4">
                                <div class="input-group-prepend">
                                    <span class="input-group-text bg-white px-4 border-md border-right-0">
                                        <i class="fa fa-envelope text-muted"></i>
                                    </span>
                                </div>
                                <input id="email" type="email" name="email" placeholder="Email Address" class="form-control bg-white border-left-0 border-md">
                            </div>

                            <!-- Phone Number -->
                            <div class="input-group col-lg-12 mb-4">
                                <div class="input-group-prepend">
                                    <span class="input-group-text bg-white px-4 border-md border-right-0">
                                        <i class="fa fa-phone-square text-muted"></i>
                                    </span>
                                </div>
                                <select id="countryCode" name="countryCode" style="max-width: 80px" class="custom-select form-control bg-white border-left-0 border-md h-100 font-weight-bold text-muted">
                                    <option value="">+84</option>
                                    <option value="">+10</option>
                                    <option value="">+15</option>
                                    <option value="">+18</option>
                                </select>
                                <input id="phoneNumber" type="tel" name="phone" placeholder="Phone Number" class="form-control bg-white border-md border-left-0 pl-3">
                            </div>.


                            <!-- Street and City -->
                            <div class="input-group col-lg-12 mb-4">
                                <div class="input-group-prepend">
                                    <span class="input-group-text bg-white px-4 border-md border-right-0">
                                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                                    </span>
                                </div>
                                <select id="street" name="street" class="form-control custom-select bg-white border-left-0 border-md">
                                    <option value="">Choose Street</option>
                                    <option value="Hoan Kiem">Hoan Kiem</option>
                                    <option value="Ba Dinh">Ba Dinh</option>
                                    <option value="Cau Giay">Cau Giay</option>
                                    <option value="Dong Da">Dong Da</option>
                                    <option value="Hoang Mai">Hoang Mai</option>
                                    <option value="Long Bien">Long Bien</option>
                                </select>
                            </div>
                            <div class="input-group col-lg-12 mb-4">
                                <div class="input-group-prepend">
                                    <span class="input-group-text bg-white px-4 border-md border-right-0">
                                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                                    </span>
                                </div>
                                <select id="city" name="city" class="form-control custom-select bg-white border-left-0 border-md">
                                    <option value="">Choose your City</option>
                                    <option value="Ha Noi">Ha Noi</option>
                                    <option value="TP Ho Chi Minh">TP Ho Chi Minh</option>
                                    <option value="Da Nang">Da Nang</option>
                                    <option value="Hai Phong">Hai Phong</option>
                                </select>
                            </div>

                            <!-- Password -->


                            <!-- Divider Text -->
                            <!--                            <div class="form-group col-lg-12 mx-auto d-flex align-items-center my-4">
                                                            <div class="border-bottom w-100 ml-5"></div>
                                                            <span class="px-2 small text-muted font-weight-bold text-muted">OR</span>
                                                            <div class="border-bottom w-100 mr-5"></div>
                                                        </div>
                            
                                                         Social Login 
                                                        <div class="form-group col-lg-12 mx-auto">
                                                            <a href="#" class="btn btn-block py-2 btn-facebook">
                                                                <i class="fa fa-facebook-f mr-2"></i>
                                                                <span class="font-weight-bold">Continue with Facebook</span>
                                                            </a>
                                                            <a href="#" class="btn btn-block py-2 btn-twitter">
                                                                <i class="fa fa-twitter mr-2"></i>
                                                                <span class="font-weight-bold">Continue with Twitter</span>
                                                            </a>
                                                        </div>-->

                            <!-- Already Registered -->
                            <button class="big-button">
                                Create
                            </button>
                            <div class="text-center w-100">
                                <p class="text-muted font-weight-bold">Already Registered? <a href="Login.jsp" class="text-primary ml-2">Login</a></p>
                            </div>

                        </div>

                    </form>
                </div>
            </div>
            <div class="container-fluid footer">
                <div class="section container">
                    <footer>
                        <div class="row">
                            <div class="col-lg-3 block">
                                <p>A ChrisKien's Style,
                                    <br>
                                    Hoa Lac, Ha Noi. 2021,
                                    <br>
                                    @Copyright by Chi Kien Nguyen.
                                </p>
                            </div>
                            <div class="col-lg-3 block">
                                <p>FAQs
                                    <br>
                                    Return Policy
                                    <br>
                                    Shipping</p>
                            </div>
                            <div class="col-lg-3 block">
                                <p>Careers
                                    <br>
                                    Community
                                    <br>
                                    Wholesale</p>
                            </div>
                            <div class="col-lg-3 block">
                                <div class="media">
                                    <div class="share-button">
                                        <span>Share Me</span>
                                        <a href="#" ><i class="fa fa-facebook-f"></i></a>
                                        <a href="#" ><i class="fa fa-twitter"></i></a>
                                        <a href="#" ><i class="fa fa-instagram"></i></a>
                                        <a href="#" ><i class="fa fa-linkedin-in"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </footer>
                </div>
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
