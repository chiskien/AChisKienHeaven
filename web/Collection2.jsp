<%@page import="model.Brand"%>
<%@page import="model.Category"%>
<%@page import="DAL.CategoryDAO"%>
<%@page import="model.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>A ChrisKien's Collection</title>
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
          <% session.getAttribute("username");
            CategoryDAO dao = new CategoryDAO();
            ArrayList<Category> listCategory = dao.getAllCategory();
            ArrayList<Brand> listBrand = dao.getAllBrand();
            session.setAttribute("listCate", listCategory);
            session.setAttribute("listBrand", listBrand);
        %>
        <div class="container-fluid" style="padding: 0;">
            <div class="nav2">
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
            <div class="container-fluid">
                <nav id="navigation">
                    <ul class="links">
                        <li class="dropdown"><a href="#" class="trigger-drop">Category<i class="arrow"></i></a>
                            <ul class="drop">
                                <c:forEach items="${listCate}" var="cate">
                                    <li><a href="ListController3?name=${cate.category_name}">${cate.category_name}</a></li>
                                    </c:forEach>
                            </ul>
                        </li>
                        <li class="dropdown"><a href="#" class="trigger-drop">Brand<i class="arrow"></i></a>
                            <ul class="drop">
                                <c:forEach items="${listBrand}" var="brand">
                                    <li><a href="ListController2?name=${brand.brand_name}">${brand.brand_name}</a></li>
                                    </c:forEach>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <form onsubmit="event.preventDefault();" role="search">
                                <label class="label-search" for="search">Search for stuff</label>
                                <input id="search" type="search" placeholder="Search..." autofocus required class="input-search" />
                                <button class="button-search" type="submit">Go</button>    
                            </form>
                        </li>
                    </ul>

                </nav>
            </div>
            <div class="contaniner-fluid  hero wow fadeInUp">
                <h1 id="hero-title">A ChrisKien's Collection</h1>
            </div>
            <div class='container'>
                <div class="row">
                    <c:forEach items="${list2}" var="product">
                        <div class="card mx-auto col-lg-3 wow fadeInUp" data-wow-delay="0.8s"> 
                            <img class='mx-auto img-thumbnail' src="${product.image}" width="auto" height="auto" />
                            <div class="card-body text-center mx-auto">
                                <div class='cvp'>
                                    <h5 class="card-title">${product.name}</h5>
                                    <p class="card-text">${product.price}vnd</p> <a href="ProductDetail.jsp?id=${product.product_id}" class="btn details px-auto">view details</a><br /> 
                                    <a href="Cart?id=${product.product_id}" class="btn cart2 px-auto" style="color: white !important;">ADD TO CART</a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <div class="footer">
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
                                Shipping
                            </p>
                        </div>
                        <div class="col-lg-3 block">
                            <p>Careers
                                <br>
                                Community
                                <br>
                                Wholesale
                            </p>
                        </div>
                        <div class="col-lg-3 block">
                            <div class="media">

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