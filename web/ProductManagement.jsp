<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="DAL.ProductDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="model.Product"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Collapsible sidebar using Bootstrap 4</title>
        <!-- Bootstrap CSS CDN -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
        <!-- Our Custom CSS -->
        <link rel="stylesheet" href="css/manage.css">
        <!-- Font Awesome JS -->
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
        <script>
            function submitDelete(id)
            {
                if (confirm("Are you sure about that?")) {
                    window.location.href = "DeleteProductManagement?id=" + id;
                } else {
                    return;
                }
            }
        </script>
    </head>
    <body>
        <% session.getAttribute("username");
            ProductDAO dao = new ProductDAO();
            ArrayList<Product> list = dao.getProductWithBrandandCategory();
            session.setAttribute("list", list);
        %>
        <div class="wrapper">
            <!-- Sidebar  -->
            <nav id="sidebar">
                <div class="sidebar-header">
                    <h4>Hello ${username}</h4>
                </div>
                <div class ="menu-content">
                   <ul class="list-unstyled components">
                    <li>
                        <a href="Adminn.jsp">Home</a>
                    </li>
                    <li>
                        <a href="ProductManagement.jsp">Manage Products</a>
                    </li>
                    <li>
                        <a href="CategoryController">Manage Categories</a>
                    </li>
                    <li>
                        <a href="BrandController">Manage Brand</a>
                    </li>
                    <li>
                        <a href="CustomerController">Manage Customers</a>
                    </li>
                    <li>
                        <a href="PaymentManagement.jsp">View Payments</a>
                    </li>
                    <li>
                        <a href="OrderManagement.jsp">View Orders</a>
                    </li>
                    <li>
                        <a href="#">Email list</a>
                    </li>
                </ul>
                </div>

            </nav>
            <!-- Page Content  -->
            <div id="content">
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <div class="container-fluid">
                        <button type="button" id="sidebarCollapse" class="btn btn-info">
                            <i class="fas fa-align-left"></i>
                            <span>Toggle Sidebar</span>
                        </button>
                        <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <i class="fas fa-align-justify"></i>
                        </button>
                        <div class="collapse navbar-collapse navbarr" id="navbarSupportedContent">
                            <ul class="nav navbar-nav ml-auto">
                                <li class="nav-item active">
                                    <a class="nav-link" href="Home.jsp">ChrisKien's Heaven</a>
                                </li>
                                <li class="nav-item active">
                                    <a class="nav-link" href="ListController">ChrisKien's Collection</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <h2 style="text-align: center">Welcome to The ChrisKien's Territory</h2>
                <h3 style="color: black;">Add a Product?
                    <a href="AddProduct.jsp" style="color: #7386D5;">Click Here</a> 
                    </h3>
                <div class="wrapper">

                    <div class="table">
                        <div class="row header">
                            <div class="cell">
                                Product Code
                            </div>
                            <div class="cell">
                                Name
                            </div>
                            <div class="cell">
                                Price
                            </div>
                            <div class="cell">
                                Quantity
                            </div>
                            <div class="cell">
                                Image
                            </div>
                            <div class="cell">
                                Category
                            </div>
                            <div class="cell">
                                Brand
                            </div>
                            <div class="cell">
                                Status
                            </div>
                            <div class="cell">
                                Actions
                            </div>
                        </div>
                        <c:forEach items="${list}" var="product">
                            <div class="row">
                                <div class="cell">
                                    ${product.product_code}
                                </div>
                                <div class="cell">
                                    ${product.name}
                                </div>
                                <div class="cell">
                                    ${product.price}
                                </div>
                                <div class="cell">
                                    ${product.quantity}
                                </div>
                                <div class="cell">
                                    <img class="imgg" src="${product.image}" alt="alt"/>
                                </div>
                                <div class="cell">
                                    ${product.category.category_name}
                                </div>
                                <div class="cell">
                                    ${product.brand.brand_name}
                                </div>
                                <div class="cell">
                                    ${product.status}
                                </div>

                                <div class="cell">
                                    <a href="UpdateProductController?id=${product.product_id}" style="color: #7386D5" >Update</a>
                                    <a href="DeleteProductController?id=${product.product_id}" onclick="submitDelete(${product.product_id})" style="color: #7386D5" >
                                        Delete</a>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <div>

                    </div>
                </div>
            </div>
        </div>
        <!-- jQuery CDN - Slim version (=without AJAX) -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <!-- Popper.JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
        <!-- Bootstrap JS -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
        <script type="text/javascript">
                                        $(document).ready(function () {
                                            $('#sidebarCollapse').on('click', function () {
                                                $('#sidebar').toggleClass('active');
                                            });
                                        });
        </script>
    </body>
</html>
