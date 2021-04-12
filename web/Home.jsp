<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAL.ProductDAO"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>A ChrisKien'Heaven </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
        <% ProductDAO dao = new ProductDAO();
            ArrayList<Product> list = dao.getProductWithBrandandCategory();
            session.setAttribute("list", list);
        %>
        <div class="container-fluid" style="padding: 0;">
            <div class="nav">
                <div class="menu-open">
                    <i class="fa fa-bars"></i>
                </div>
                <div class="brand">
                    <span><a href="Home.jsp">CK</a></span>
                </div>
                <div class="menu">
                    <div class="menu-close">
                        <i class="fa fa-bars"></i>
                    </div>
                    <ul>
                       <li><a href="Home.jsp">A ChrisKien's Heaven</a></li>
                        <li><a href="ListController">A ChrisKien's Collection</a></li>
                        <li><a href="about.html">A ChrisKien's Story</a></li>
                        <li><a href="Adminn.jsp">A ChrisKien's Territory</a></li>
                        <li><a href="Email.jsp">Email Subscription</a></li>
                        <li> <a href="Login.jsp">Login</a></li>
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
                <a href="Cart.jsp">
                    <div class="cart">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-bag" viewBox="0 0 16 16">
                        <path d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1zm3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4h-3.5zM2 5h12v9a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V5z"/>
                        </svg>
                    </div>
                </a>
            </div>
            <div class="hero-section">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-6 hero-left">
                            <div class="tagline">
                                <h2 class="wow fadeInUp" >
                                    A ChrisKien's Style</h2>
                                <br><br>
                                <p class= "wow fadeInUp" data-wow-delay="0.5s">
                                    An easy way to become more <br> attractive<br>
                                    confident and successful<br>
                                </p>
                            </div>
                            <div class="shipping">
                                <button class="big-button">
                                    <a href="ListController" 
                                       class="wow fadeInUp" data-wow-delay="1s">Explore
                                    </a></button>

                            </div>
                        </div>

                        <div class="col-lg-6 hero-right"> 
                            <div class="hero-image"  data-wow-delay="0.5s">
                                <img src="image/undraw_welcoming_xvuq.svg" alt="" class="img">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="small-container">
                <h2 class="wow fadeInUp" data-wow-delay="0.5s"> <span>ChrisKien's Favorite:</span> Hanz De Fuko</h2>
            </div>
            <div class="section prod-list">
                <div class="container-fluid">
                    <div class="row">
                        <c:forEach items="${list}" var="product" begin="1" end="4">
                            <div class="col-lg-3 prod wow fadeInUp" data-wow-delay="1s">
                                <a href="AddtoCart?id=${product.product_id}">
                                    <img src="${product.image}" alt="" class="img">
                                    <p id="price">${product.price}</p>
                                    <p id="prod-desc">${product.name}<br>
                                    </p>
                                </a>
                            </div>
                        </c:forEach>
                    </div>

                </div>
            </div>
            <div class="small-container">
                <h2 class="wow fadeInUp" data-wow-delay="0.5s"> <span>Explore your self</span></h2>
            </div>
            <div class="row prod-sec">
                <div class="col-lg-6 prod-img wow fadeInUp" data-wow-delay="0.5s">
                    <img src="image/undraw_shopping_app_flsj.svg" alt="" class="img">
                </div>
                <div class="col-lg-4 prod-desc">
                    <p class="wow fadeInUp" data-wow-delay="0.5s" style="font-size: 24px;"
                       >A ChrisKien's Collection</p>
                    <div class="link">
                        <a href="ListController">Shop now <i class="fa fa-arrow-right"></i>
                        </a>
                    </div>
                </div>
            </div>
            <div>

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
