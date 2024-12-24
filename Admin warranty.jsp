<%-- 
    Document   : Admin warranty
    Created on : Mar 18, 2024, 1:45:14 PM
    Author     : wfh_khan
--%>
<%        try {
        String user = (String) session.getAttribute("uname");
        String type = (String) session.getAttribute("type");
        System.out.println("type: " + type);
        if (user != null && !user.isEmpty()) {                // Continue with the processing    %>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="included.jsp" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <% if (Function.NewClass.getUserTypeFromTable(name_)) {%>
        <title>Admin | Warranty Sheets Data</title>
        <% } else { %>
        <title>Agent | Warranty Sheets Data</title>
        <% }%>

        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description">
        <meta content="Coderthemes" name="author">
        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.png">

        <!-- App css -->
        <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css">
        <link href="assets/css/app.min.css" rel="stylesheet" type="text/css" id="light-style">
        <link href="assets/css/app-dark.min.css" rel="stylesheet" type="text/css" id="dark-style">
        <style>
            thead, tbody{
                text-align-last: center;
                text-wrap: nowrap;
            }
            tbody tr{
                text-align-last: left;
            }
        </style>
    </head>


    <body class="loading"
          data-layout-config='{"leftSideBarTheme":"dark","layoutBoxed":false, "leftSidebarCondensed":false, "leftSidebarScrollable":false,"darkMode":false, "showRightSidebarOnStart": true}'>



        <div class="wrapper">
            <!-- ========== Left Sidebar Start ========== -->
            <div class="leftside-menu" style="background-image: linear-gradient(to bottom, #0f0c29, #302b63, #24243e);">

                <!-- LOGO -->
                <a href="#" class="logo text-center logo-light">
                    <span class="logo-lg" style="background-image: linear-gradient(to bottom, #0f0c29, #302b63, #24243e);">
                        <img src="images/AP_headerlogo.png" alt="" height="50">
                    </span>
                    <span class="logo-sm" style="background-image: linear-gradient(to bottom, #0f0c29, #302b63, #24243e);">
                        <img src="images/APheaderlogo.png" alt="" height="50">
                    </span>
                </a>

                <!-- LOGO -->
                <a href="index.html" class="logo text-center logo-dark">
                    <span class="logo-lg">
                        <img src="images/logo-dark.png" alt="" height="16">
                    </span>
                    <span class="logo-sm">
                        <img src="images/logo_sm_dark.png" alt="" height="16">
                    </span>
                </a>

                <div class="h-100" id="leftside-menu-container" data-simplebar="">

                    <!--- Sidemenu -->
                    <ul class="side-nav" style="margin-top: 20px;">

                        <% if (!Function.NewClass.getUserTypeFromTable(name_)) {%>
                        <li class="side-nav-item">
                            <a href="general query.jsp" class="side-nav-link">
                                <i class=" uil-home-alt"></i>
                                <span> General Query </span>
                            </a>
                        </li>
                        <% }%>

                        <li class="side-nav-item">
                            <a href="CACAd.jsp?value=" class="side-nav-link">
                                <i class="uil-copy-alt"></i>
                                <span> Complaint / Concern </span>
                            </a>
                        </li>
                        <li class="side-nav-item">
                            <a href="Admin call back.jsp?value=" class="side-nav-link">
                                <i class="uil-copy-alt"></i>
                                <span> Call Back </span>
                            </a>
                        </li>
                        <li class="side-nav-item">
                            <a href="Admin APPS_1.jsp?value=" class="side-nav-link">
                                <i class="uil-copy-alt"></i>
                                <span> APPS Data </span>
                            </a>
                        </li>
                        <li class="side-nav-item">
                            <a href="Admin Lead.jsp?value=" class="side-nav-link">
                                <i class="uil-copy-alt"></i>
                                <span> Leads Data </span>
                            </a>
                        </li><!--
                        -->                                                <li class="side-nav-item">
                            <a href="Others.jsp?value=" class="side-nav-link">
                                <i class="uil-copy-alt"></i>
                                <span> Other Sheets </span>
                            </a>
                        </li><!--
                        -->                                                <li class="side-nav-item">
                            <a href="Admin warranty.jsp?value=" class="side-nav-link">
                                <i class="uil-copy-alt"></i>
                                <span> Warranty Sheets </span>
                            </a>
                        </li><!--
                        -->                        <li class="side-nav-item">
                            <a href="Query for helpline.jsp?value=" class="side-nav-link">
                                <i class="uil-copy-alt"></i>
                                <span>  Helpline Query / Voice </span>
                            </a>
                        </li><!--
                        -->                      <!--
                        -->                        <li class="side-nav-item">
                            <a data-bs-toggle="collapse" href="#sidebarPages" aria-expanded="false"
                               aria-controls="sidebarPages" class="side-nav-link">
                                <i class="uil-apps"></i>
                                <span> Asian Paints PIS </span>
                                <span class="menu-arrow"></span>
                            </a>
                            <div class="collapse" id="sidebarPages">
                                <ul class="side-nav-second-level">
                                    <li>
                                        <a href="Admin PIS int-ext.jsp">Interior | Exterior</a>
                                    </li>
                                    <li>
                                        <a href="Admin PIS Ancillaries.jsp">Ancillaries</a>
                                    </li>
                                    <li>
                                        <a href="Admin PIS more categories.jsp">Other Categories</a>
                                    </li>
                                    <hr></hr>
                                </ul>
                            </div>
                        </li>                  
                        <li class="side-nav-item">
                            <a href="Admin helpline scripts.jsp" target="_blank" class="side-nav-link">
                                <i class="uil-file"></i>
                                <span> Helpline Scripts </span>
                            </a>
                        </li>
                        <% if (Function.NewClass.getUserTypeFromTable(name_)) {%>
                        <li class="side-nav-item">
                            <a href="Users.jsp" class="side-nav-link">
                                <i class="uil-users-alt"></i>
                                <span> Users Data </span>
                            </a>
                        </li>
                        <% }%>
                    </ul>



                    <!-- End Sidebar -->



                </div>
                <!-- Sidebar -left -->

            </div>
            <!-- Left Sidebar End -->

            <!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->

            <div class="content-page" style="background-color: #e7e5e5;">
                <div class="content" style="background-color:none; margin-bottom: -24px;">
                    <!-- Topbar Start -->
                    <div class="navbar-custom">
                        <ul class="list-unstyled topbar-menu float-end mb-0">
                            <li class="dropdown notification-list d-lg-none">
                                <a class="nav-link dropdown-toggle arrow-none" data-bs-toggle="dropdown" href="#"
                                   role="button" aria-haspopup="false" aria-expanded="false">
                                    <i class="dripicons-search noti-icon"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-animated dropdown-lg p-0">
                                    <form class="p-3">
                                        <input type="text" class="form-control" placeholder="Search ..."
                                               aria-label="Recipient's username">
                                    </form>
                                </div>
                            </li>
                            <li class="notification-list">
                                <a class="nav-link end-bar-toggle" href="notepad.jsp">
                                    <i class="dripicons-clipboard noti-icon"></i> Open Notepad
                                </a>
                            </li>
                            <li class="dropdown notification-list">
                                <a class="nav-link dropdown-toggle nav-user arrow-none me-0" data-bs-toggle="dropdown"
                                   href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                    <span class="account-user-avatar">
                                        <img src="assets/images/users/avatar-1.png" alt="user-image" class="rounded-circle">
                                    </span>
                                    <span class="account-user-name"><%= name_%></span>
                                    <% if (Function.NewClass.getUserTypeFromTable(name_)) { %>
                                    <span class="account-position">Admin</span>
                                    <% } else { %>
                                    <span class="account-position">Agent</span>
                                    <% }%>
                                </a>
                                <div
                                    class="dropdown-menu dropdown-menu-end dropdown-menu-animated topbar-dropdown-menu profile-dropdown">
                                    <!-- item-->
                                    <a href="ChangePassword.jsp" class="dropdown-item notify-item">
                                        <i class="mdi mdi-key me-1"></i>
                                        <span>Change Password</span>
                                    </a>
                                    <a href="javascript:redirectToServlet()" class="dropdown-item notify-item">
                                        <i class="mdi mdi-logout me-1"></i>
                                        <span>Logout</span>
                                    </a>
                                </div>

                                <script>
                                    function redirectToServlet() {
                                        // Replace "/your-servlet-url" with the actual URL of your servlet
                                        window.location.href = "Logout";
                                    }

                                </script>
                            </li>

                        </ul>
                        <!-- <button class="button-menu-mobile open-left">
                                <i class="mdi mdi-menu"></i>
                            </button> -->
                        <div class="app-search dropdown d-none d-lg-block">
                            <form>
                                <div class="input-group">
                                    <input type="text" class="form-control dropdown-toggle" placeholder="Search..."
                                           id="top-search">
                                    <span class="mdi mdi-magnify search-icon"></span>
                                    <button class="input-group-text btn-primary" type="submit">Search</button>
                                </div>
                            </form>


                        </div>
                    </div>
                    <!-- end Topbar -->

                    <!-- Start Content-->
                    <div class="container-fluid">

                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">

                                    <h4 class="page-title">Warranty Sheets</h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->
                        <div class="row" style="margin-top:-10px; background-color:none;">
                            <div class="col-md-12">
                                <div class="card" style="background-color:none;">
                                    <div class="card-body" style="height:85px">
                                        <div class="tab-content" style="background-color:none;">
                                            <div class="tab-pane show active" id="inline-form-preview"
                                                 style="background-color: none; display: flex; justify-content: space-between ;">
                                                <ul class="list-unstyled topbar-menu float-end mb-0"
                                                    style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                    <li class="dropdown notification-list topbar-dropdown" style="background-color: #5ab7d3; height:40px; margin-left:0; border-radius:3px;">
                                                        <a class="dropdown-toggle arrow-none" data-bs-toggle="dropdown"
                                                           href="#" role="button" aria-haspopup="false"
                                                           aria-expanded="false">
                                                            <span class="align-middle d-none d-sm-inline-block"
                                                                  style="color: #fff; padding: 10px;"><i class="uil-apps"></i>
                                                                Select
                                                                category <i
                                                                    class="mdi mdi-chevron-down d-none d-sm-inline-block align-middle"></i></span>
                                                        </a>
                                                        <div
                                                            class="dropdown-menu dropdown-menu-start dropdown-menu-animated topbar-dropdown-menu">

                                                            <!-- item-->
                                                            <a href="Admin warranty.jsp?value=Product" class="dropdown-item notify-item">
                                                                <i class="mdi mdi-file-document-edit-outline"></i>
                                                                <span class="align-middle"> Product Warranty Registration</span>
                                                            </a>

                                                            <!-- item-->
                                                            <a href="Admin warranty.jsp?value=Mechtool" class="dropdown-item notify-item">
                                                                <i class="mdi mdi-file-document-edit-outline"></i>
                                                                <span class="align-middle"> Mechtool & Graco Registration</span>
                                                            </a>
                                                            <!-- item-->
                                                            <a href="Admin warranty.jsp?value=Hard" class="dropdown-item notify-item">
                                                                <i class="mdi mdi-file-document-edit-outline"></i>
                                                                <span class="align-middle"> Hard & Soft Copies</span>
                                                            </a>
                                                        </div>
                                                    </li><li>
                                                        <% if (name != null && !name.isEmpty()) {%>
                                                        <a  href = "Admin Add warranty.jsp?value=<%= name%>">
                                                            <button type="submit" class="btn btn-primary mb-2"><i
                                                                    class="mdi mdi-plus-circle me-1"></i> Add New
                                                                Data</button>
                                                        </a>
                                                        <% } %>
                                                    </li>
                                                    <% if (Function.NewClass.getUserTypeFromTable(name_) || Function.NewClass.getUserTypeFromTableOthers(name_)) {%>

                                                    <li style="display: flex; justify-content: space-evenly; background-color: none;">
                                                        <form id="myForm" method="post" class="row gy-2 gx-2 align-items-center justify-content-around" action="ExportWarrantey">
                                                            <div class="col-xl-4" style="background-color: none; width:auto; margin-top: -1px;">

                                                                <div class="col-auto">
                                                                    <div class="d-flex align-items-center"
                                                                         style="background-color: none;">
                                                                        <label for="status-select" class="me-2">Select Date
                                                                            Range</label>
                                                                        <input name="range" type="text" class="form-control date"
                                                                               data-toggle="date-picker" data-picker="true"
                                                                               data-locale="{'format': 'DD/MM hh:mm A'}"
                                                                               style="width:200px; height:35px;">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <input type="hidden" name="type" value="<%= name%>">
                                                            <div class="col-xl-4" style="background-color:none; width:auto;">
                                                                <div class="text-xl-end mt-xl-0 mt-2">
                                                                    <a href="#" id="myAnchor">
                                                                        <button type="button" class="btn btn-danger mb-2 me-2"><i
                                                                                class="mdi mdi-export me-1"></i> Export
                                                                            Data</button>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="col-xl-4" style="background-color:none; width:auto;">
                                                                <div class="text-xl-end mt-xl-0 mt-2">
                                                                    <a href="#" id="myAnchor0">
                                                                        <button type="button" class="btn btn-danger mb-2 me-2"><i
                                                                                class="mdi mdi-export me-1"></i> Export All</button>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </form>
                                                    </li>

                                                    <% } %>
                                                    <script>
                                                        document.addEventListener("DOMContentLoaded", function () {
                                                            var anchor = document.getElementById("myAnchor");
                                                            var form = document.getElementById("myForm");

                                                            anchor.addEventListener("click", function (event) {
                                                                event.preventDefault(); // Prevents the default action of following the link

                                                                // Submit the form
                                                                form.submit();
                                                            });
                                                        });
                                                    </script>

                                                    <script>
                                                        document.addEventListener("DOMContentLoaded", function () {
                                                            var anchor = document.getElementById("myAnchor0");
                                                            var form = document.getElementById("myForm");

                                                            anchor.addEventListener("click", function (event) {
                                                                event.preventDefault(); // Prevents the default action of following the link

                                                                // Set the form action dynamically
                                                                form.action = "DesignedWarranty";

                                                                // Submit the form
                                                                form.submit();
                                                            });
                                                        });
                                                    </script>
                                                </ul>
                                            </div>
                                        </div> <!-- end preview-->
                                    </div> <!-- end tab-content-->
                                </div> <!-- end card-body -->
                            </div> <!-- end card -->
                        </div> <!-- end col -->
                    </div>


                    <%
                        if (name.equals("Product")) {%>
                    <!-- table start -->
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Product Warranty Registration</h4></li>
                                <li style="background-color: none; height: fit-content; margin-top: 15px;"><input id="gfg" class="int-productdata" type="text"
                                                                                                                  placeholder="Search table data here..."></li>
                            </ul>
                        </div>
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body" style="height:500px; background-color: none;">
                                    <div class="tab-content">
                                        <div class="tab-pane show active" id="responsive-preview">
                                            <div style="overflow-x:auto; overflow-y:auto;" class="appointment-table">
                                                <table class="table table-bordered table-centered mb-0" id="table">
                                                    <thead>
                                                        <tr>
                                                            <% if (Function.NewClass.getUserTypeFromTable(name_)) {%>
                                                            <th scope="col">Edit</th>
                                                                <% } %>

                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">Product Name</th>
                                                            <th scope="col">Type Of Query</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <%int i = 1;
                                                            ResultSet rs = Table.product.prod();
                                                            while (rs.next()) {%>
                                                        <tr>
                                                            <% if (Function.NewClass.getUserTypeFromTable(name_)) {%>
                                                            <td><a href="Edit warranty.jsp?value=<%=request.getParameter("value")%>&val1=<%=rs.getString("srno")%>">
                                                                    <i class="mdi mdi-pencil me-1"></i>
                                                                </a>
                                                            </td>
                                                            <% }%>

                                                            <td><%=i++%></td>
                                                            <td><%= rs.getString("date")%></td>
                                                            <td><%= rs.getString("time")%></td>
                                                            <td><%= rs.getString("customer_name")%></td>
                                                            <td><%= rs.getString("mobile_number")%></td>
                                                            <td><%= rs.getString("alternate_number")%></td>
                                                            <td><%= rs.getString("pincode")%></td>
                                                            <td><%= rs.getString("product_name")%></td>
                                                            <td><%= rs.getString("type_of_query")%></td>
                                                            <td><%= rs.getString("agent_name")%></td>
                                                            <td><%= rs.getString("aspect_id")%></td>
                                                        </tr>
                                                    </tbody>
                                                    <%}%>
                                                </table>
                                            </div>
                                        </div> <!-- end preview-->


                                    </div> <!-- end tab-content-->

                                </div> <!-- end card body-->
                            </div> <!-- end card -->
                        </div><!-- end col-->
                    </div>
                    <!-- end row-->
                    <!-- Product Warranty Registration table end -->

                    <!--                     table start 
                                        <div class="row" style="margin-top:5px; background-color: none; ">
                                            <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                                <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                    <li><h4 class="page-title">Mechtool & Graco Registration</h4></li>
                                                    <li style="background-color: none; height: fit-content; margin-top: 15px;"><input id="gfg" class="int-productdata" type="text"
                                                                                                                                      placeholder="Search table data here..."></li>
                                                </ul>
                                            </div>
                                            <div class="col-12">
                                                <div class="card">
                                                    <div class="card-body" style="height:500px; background-color: none;">
                                                        <div class="tab-content">
                                                            <div class="tab-pane show active" id="responsive-preview">
                                                                <div style="overflow-x:auto; overflow-y:auto;" class="appointment-table">
                                                                    <table style="width:250%" id="table">
                                                                        <thead>
                                                                            <tr>
                                                                                <th scope="col">Edit</th>
                                                                                <th scope="col">Sr. No.</th>
                                                                                <th scope="col">Date</th>
                                                                                <th scope="col">Time</th>
                                                                                <th scope="col">Customer Name</th>
                                                                                <th scope="col">Mobile Number</th>
                                                                                <th scope="col">Alternate Number</th>
                                                                                <th scope="col">Pincode</th>
                                                                                <th scope="col">Machine Name</th>
                                                                                <th scope="col">Type Of Query</th>
                                                                                <th scope="col">Description</th>
                                                                                <th scope="col">Agent Name</th>
                                                                                <th scope="col">Aspect ID</th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody id="geeks">
                                                                            <tr>
                                                                                <td><a href="Edit warranty.html">
                                                                                        <i class="mdi mdi-pencil me-1"></i>
                                                                                    </a>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>  end preview
                                                        </div>  end tab-content
                                                    </div>  end card body
                                                </div>  end card 
                                            </div> end col
                                        </div>
                                         end row
                                         Mechtool & Graco Registration table end 
                    
                                         table start 
                                        <div class="row" style="margin-top:5px; background-color: none; ">
                                            <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                                <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                    <li><h4 class="page-title">Hard & Soft Copies</h4></li>
                                                    <li style="background-color: none; height: fit-content; margin-top: 15px;"><input id="gfg" class="int-productdata" type="text"
                                                                                                                                      placeholder="Search table data here..."></li>
                                                </ul>
                                            </div>
                                            <div class="col-12">
                                                <div class="card">
                                                    <div class="card-body" style="height:500px; background-color: none;">
                                                        <div class="tab-content">
                                                            <div class="tab-pane show active" id="responsive-preview">
                                                                <div style="overflow-x:auto; overflow-y:auto;" class="appointment-table">
                                                                    <table style="width:250%" id="table">
                                                                        <thead>
                                                                            <tr>
                                                                                <th scope="col">Edit</th>
                                                                                <th scope="col">Sr. No.</th>
                                                                                <th scope="col">Date</th>
                                                                                <th scope="col">Time</th>
                                                                                <th scope="col">Customer Name</th>
                                                                                <th scope="col">Mobile Number</th>
                                                                                <th scope="col">Product Name</th>
                                                                                <th scope="col">Type Of Warranty Copy</th>
                                                                                <th scope="col">Description</th>
                                                                                <th scope="col">Email ID</th>
                                                                                <th scope="col">Warranty Number</th>
                                                                                <th scope="col">Agent Name</th>
                                                                                <th scope="col">Aspect ID</th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody id="geeks">
                                                                            <tr>
                                                                                <td><a href="Edit warranty.html">
                                                                                        <i class="mdi mdi-pencil me-1"></i>
                                                                                    </a>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>  end preview
                                                        </div>  end tab-content
                                                    </div>  end card body
                                                </div>  end card 
                                            </div> end col
                                        </div>
                                         end row
                                         Hard & Soft Copies table end 
                                    </div>  container 
                                </div>  container 
                    
                            </div>  content -->

                    <!-- Footer Start -->
                    <footer class="footer" style="background-color: #fff;">

                    </footer>
                    <!-- end Footer -->

                </div>

                <!-- ============================================================== -->
                <!-- End Page content -->
                <!-- ============================================================== -->


            </div>
            <!-- END wrapper -->

            <% } else if (name.equals("Mechtool")) {%>  <!-- table start -->
            <!--                    <div class="row" style="margin-top:5px; background-color: none; ">
                                    <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                        <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                            <li><h4 class="page-title">Product Warranty Registration</h4></li>
                                            <li style="background-color: none; height: fit-content; margin-top: 15px;"><input id="gfg" class="int-productdata" type="text"
                                                                                                                              placeholder="Search table data here..."></li>
                                        </ul>
                                    </div>
                                    <div class="col-12">
                                        <div class="card">
                                            <div class="card-body" style="height:500px; background-color: none;">
                                                <div class="tab-content">
                                                    <div class="tab-pane show active" id="responsive-preview">
                                                        <div style="overflow-x:auto; overflow-y:auto;" class="appointment-table">
                                                            <table style="width:250%" id="table">
                                                                <thead>
                                                                    <tr>
                                                                        <th scope="col">Edit</th>
                                                                        <th scope="col">Sr. No.</th>
                                                                        <th scope="col">Date</th>
                                                                        <th scope="col">Time</th>
                                                                        <th scope="col">Customer Name</th>
                                                                        <th scope="col">Mobile Number</th>
                                                                        <th scope="col">Alternate Number</th>
                                                                        <th scope="col">Pincode</th>
                                                                        <th scope="col">Product Name</th>
                                                                        <th scope="col">Type Of Query</th>
                                                                        <th scope="col">Agent Name</th>
                                                                        <th scope="col">Aspect ID</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody id="geeks">
                                                                    <tr>
                                                                        <td><a href="Edit warranty.html">
                                                                                <i class="mdi mdi-pencil me-1"></i>
                                                                            </a>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>  end preview
            
            
                                                </div>  end tab-content
            
                                            </div>  end card body
                                        </div>  end card 
                                    </div> end col
                                </div>
                                 end row
                                 Product Warranty Registration table end -->

            <!-- table start -->
            <div class="row" style="margin-top:5px; background-color: none; ">
                <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                    <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                        <li><h4 class="page-title">Mechtool & Graco Registration</h4></li>
                        <li style="background-color: none; height: fit-content; margin-top: 15px;"><input id="gfg" class="int-productdata" type="text"
                                                                                                          placeholder="Search table data here..."></li>
                    </ul>
                </div>
                <div class="col-12">
                    <div class="card">
                        <div class="card-body" style="height:500px; background-color: none;">
                            <div class="tab-content">
                                <div class="tab-pane show active" id="responsive-preview">
                                    <div style="overflow-x:auto; overflow-y:auto;" class="appointment-table">
                                        <table class="table table-bordered table-centered mb-0" id="table">
                                            <thead>
                                                <tr>
                                                    <% if (Function.NewClass.getUserTypeFromTable(name_)) { %>
                                                    <th scope="col">Edit</th>
                                                        <% } %>
                                                    <th scope="col">Sr. No.</th>
                                                    <th scope="col">Date</th>
                                                    <th scope="col">Time</th>
                                                    <th scope="col">Customer Name</th>
                                                    <th scope="col">Mobile Number</th>
                                                    <th scope="col">Alternate Number</th>
                                                    <th scope="col">Pincode</th>
                                                    <th scope="col">Machine Name</th>
                                                    <th scope="col">Type Of Query</th>
                                                    <th scope="col">Description</th>
                                                    <th scope="col">Agent Name</th>
                                                    <th scope="col">Aspect ID</th>
                                                </tr>
                                            </thead>
                                            <tbody id="geeks">
                                                <%
                                                    int j = 1;
                                                    ResultSet rs1 = Table.Mechtool.Mech();
                                                    while (rs1.next()) {%>
                                                <tr>
                                                    <% if (Function.NewClass.getUserTypeFromTable(name_)) {%>
                                                    <td><a href="Edit warranty.jsp?value=<%=request.getParameter("value")%>&val1=<%=rs1.getString("id")%>">
                                                            <i class="mdi mdi-pencil me-1"></i>
                                                        </a>
                                                    </td>
                                                    <% }%>
                                                    <td><%=j++%></td>
                                                    <td><%= rs1.getString("date")%></td>
                                                    <td><%= rs1.getString("time")%></td>
                                                    <td><%= rs1.getString("customer_name")%></td>
                                                    <td><%= rs1.getString("mobile_number")%></td>
                                                    <td><%= rs1.getString("alternate_number")%></td>
                                                    <td><%= rs1.getString("pincode")%></td>
                                                    <td><%= rs1.getString("machine_name")%></td>
                                                    <td><%= rs1.getString("type_of_query")%></td>
                                                    <td><%= rs1.getString("description")%></td>
                                                    <td><%= rs1.getString("agent_name")%></td>
                                                    <td><%= rs1.getString("aspect_id")%></td>
                                                </tr>
                                                <% } %>
                                            </tbody>
                                        </table>
                                    </div>
                                </div> <!-- end preview-->
                            </div> <!-- end tab-content-->
                        </div> <!-- end card body-->
                    </div> <!-- end card -->
                </div><!-- end col-->
            </div>
            <!-- end row-->
            <!-- Mechtool & Graco Registration table end -->

            <!-- table start -->
            <!--                    <div class="row" style="margin-top:5px; background-color: none; ">
                                    <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                        <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                            <li><h4 class="page-title">Hard & Soft Copies</h4></li>
                                            <li style="background-color: none; height: fit-content; margin-top: 15px;"><input id="gfg" class="int-productdata" type="text"
                                                                                                                              placeholder="Search table data here..."></li>
                                        </ul>
                                    </div>
                                    <div class="col-12">
                                        <div class="card">
                                            <div class="card-body" style="height:500px; background-color: none;">
                                                <div class="tab-content">
                                                    <div class="tab-pane show active" id="responsive-preview">
                                                        <div style="overflow-x:auto; overflow-y:auto;" class="appointment-table">
                                                            <table style="width:250%" id="table">
                                                                <thead>
                                                                    <tr>
                                                                        <th scope="col">Edit</th>
                                                                        <th scope="col">Sr. No.</th>
                                                                        <th scope="col">Date</th>
                                                                        <th scope="col">Time</th>
                                                                        <th scope="col">Customer Name</th>
                                                                        <th scope="col">Mobile Number</th>
                                                                        <th scope="col">Product Name</th>
                                                                        <th scope="col">Type Of Warranty Copy</th>
                                                                        <th scope="col">Description</th>
                                                                        <th scope="col">Email ID</th>
                                                                        <th scope="col">Warranty Number</th>
                                                                        <th scope="col">Agent Name</th>
                                                                        <th scope="col">Aspect ID</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody id="geeks">
                                                                    <tr>
                                                                        <td><a href="Edit warranty.html">
                                                                                <i class="mdi mdi-pencil me-1"></i>
                                                                            </a>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>  end preview
                                                </div>  end tab-content
                                            </div>  end card body
                                        </div>  end card 
                                    </div> end col
                                </div>
                                 end row
                                 Hard & Soft Copies table end 
                            </div>  container 
                        </div>  container 
            
                    </div>  content -->

            <!-- Footer Start -->
            <footer class="footer" style="background-color: #fff;">

            </footer>
            <!-- end Footer -->

        </div>

        <!-- ============================================================== -->
        <!-- End Page content -->
        <!-- ============================================================== -->


    </div>
    <!-- END wrapper -->

    <%} else if (name.equals("Hard")) { %>
    <!-- table start -->
    <!--                    <div class="row" style="margin-top:5px; background-color: none; ">
                            <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                    <li><h4 class="page-title">Product Warranty Registration</h4></li>
                                    <li style="background-color: none; height: fit-content; margin-top: 15px;"><input id="gfg" class="int-productdata" type="text"
                                                                                                                      placeholder="Search table data here..."></li>
                                </ul>
                            </div>
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body" style="height:500px; background-color: none;">
                                        <div class="tab-content">
                                            <div class="tab-pane show active" id="responsive-preview">
                                                <div style="overflow-x:auto; overflow-y:auto;" class="appointment-table">
                                                    <table style="width:250%" id="table">
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">Edit</th>
                                                                <th scope="col">Sr. No.</th>
                                                                <th scope="col">Date</th>
                                                                <th scope="col">Time</th>
                                                                <th scope="col">Customer Name</th>
                                                                <th scope="col">Mobile Number</th>
                                                                <th scope="col">Alternate Number</th>
                                                                <th scope="col">Pincode</th>
                                                                <th scope="col">Product Name</th>
                                                                <th scope="col">Type Of Query</th>
                                                                <th scope="col">Agent Name</th>
                                                                <th scope="col">Aspect ID</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody id="geeks">
                                                            <tr>
                                                                <td><a href="Edit warranty.html">
                                                                        <i class="mdi mdi-pencil me-1"></i>
                                                                    </a>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>  end preview
    
    
                                        </div>  end tab-content
    
                                    </div>  end card body
                                </div>  end card 
                            </div> end col
                        </div>
                         end row
                         Product Warranty Registration table end 
    
                         table start 
                        <div class="row" style="margin-top:5px; background-color: none; ">
                            <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                    <li><h4 class="page-title">Mechtool & Graco Registration</h4></li>
                                    <li style="background-color: none; height: fit-content; margin-top: 15px;"><input id="gfg" class="int-productdata" type="text"
                                                                                                                      placeholder="Search table data here..."></li>
                                </ul>
                            </div>
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body" style="height:500px; background-color: none;">
                                        <div class="tab-content">
                                            <div class="tab-pane show active" id="responsive-preview">
                                                <div style="overflow-x:auto; overflow-y:auto;" class="appointment-table">
                                                    <table style="width:250%" id="table">
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">Edit</th>
                                                                <th scope="col">Sr. No.</th>
                                                                <th scope="col">Date</th>
                                                                <th scope="col">Time</th>
                                                                <th scope="col">Customer Name</th>
                                                                <th scope="col">Mobile Number</th>
                                                                <th scope="col">Alternate Number</th>
                                                                <th scope="col">Pincode</th>
                                                                <th scope="col">Machine Name</th>
                                                                <th scope="col">Type Of Query</th>
                                                                <th scope="col">Description</th>
                                                                <th scope="col">Agent Name</th>
                                                                <th scope="col">Aspect ID</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody id="geeks">
                                                            <tr>
                                                                <td><a href="Edit warranty.html">
                                                                        <i class="mdi mdi-pencil me-1"></i>
                                                                    </a>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>  end preview
                                        </div>  end tab-content
                                    </div>  end card body
                                </div>  end card 
                            </div> end col
                        </div>-->
    <!-- end row-->
    <!-- Mechtool & Graco Registration table end -->

    <!-- table start -->
    <div class="row" style="margin-top:5px; background-color: none; ">
        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                <li><h4 class="page-title">Hard & Soft Copies</h4></li>
                <li style="background-color: none; height: fit-content; margin-top: 15px;"><input id="gfg" class="int-productdata" type="text"
                                                                                                  placeholder="Search table data here..."></li>
            </ul>
        </div>
        <div class="col-12">
            <div class="card">
                <div class="card-body" style="height:500px; background-color: none;">
                    <div class="tab-content">
                        <div class="tab-pane show active" id="responsive-preview">
                            <div style="overflow-x:auto; overflow-y:auto;" class="appointment-table">
                                <table class="table table-bordered table-centered mb-0" id="table">
                                    <thead>
                                        <tr>
                                            <% if (Function.NewClass.getUserTypeFromTable(name_)) {%>
                                            <th scope="col">Edit</th>
                                                <% } %>

                                            <th scope="col">Sr. No.</th>
                                            <th scope="col">Date</th>
                                            <th scope="col">Time</th>
                                            <th scope="col">Customer Name</th>
                                            <th scope="col">Mobile Number</th>
                                            <th scope="col">Product Name</th>
                                            <th scope="col">Type Of Warranty Copy</th>
                                            <th scope="col">Description</th>
                                            <th scope="col">Email ID</th>
                                            <th scope="col">Warranty Number</th>
                                            <th scope="col">Agent Name</th>
                                            <th scope="col">Aspect ID</th>
                                        </tr>
                                    </thead>
                                    <tbody id="geeks">
                                        <%int k = 1;
                                            ResultSet rs2 = Table.Hard.har();
                                            while (rs2.next()) {%>
                                        <tr>
                                            <% if (Function.NewClass.getUserTypeFromTable(name_)) {%>
                                            <td><a href="Edit warranty.jsp?value=<%=request.getParameter("value")%>&val1=<%=rs2.getString("id")%>">
                                                    <i class="mdi mdi-pencil me-1"></i>
                                                </a>
                                            </td>
                                            <% }%>

                                            <td><%=k++%></td>
                                            <td><%= rs2.getString("date")%></td>
                                            <td><%= rs2.getString("time")%></td>
                                            <td><%= rs2.getString("customer_name")%></td>
                                            <td><%= rs2.getString("mobile_number")%></td>
                                            <td><%= rs2.getString("product_name")%></td>
                                            <td><%= rs2.getString("type_of_warranty_copy")%></td>
                                            <td><%= rs2.getString("description")%></td>
                                            <td><%= rs2.getString("email_id")%></td>
                                            <td><%= rs2.getString("warranty_number")%></td>
                                            <td><%= rs2.getString("agent_name")%></td>
                                            <td><%= rs2.getString("aspect_id")%></td>
                                        </tr>
                                        <%}%>
                                    </tbody>
                                </table>
                            </div>
                        </div> <!-- end preview-->
                    </div> <!-- end tab-content-->
                </div> <!-- end card body-->
            </div> <!-- end card -->
        </div><!-- end col-->
    </div>
    <!-- end row-->
    <!-- Hard & Soft Copies table end -->
</div> <!-- container -->
</div> <!-- container -->

</div> <!-- content -->

<!-- Footer Start -->
<footer class="footer" style="background-color: #fff;">

</footer>
<!-- end Footer -->

</div>

<!-- ============================================================== -->
<!-- End Page content -->
<!-- ============================================================== -->


</div>
<!-- END wrapper -->

<%} else {
    }%>



<!-- bundle -->
<script src="assets/js/vendor.min.js"></script>
<script src="assets/js/app.min.js"></script>
<script src="assets/js/table search.js"></script>
<script src="assets/js/table search int base.js"></script>
<script src="assets/js/row bg.js"></script>

<!-- third party js -->
<script src="assets/js/vendor/jquery.dataTables.min.js"></script>
<script src="assets/js/vendor/dataTables.bootstrap5.js"></script>
<script src="assets/js/vendor/dataTables.responsive.min.js"></script>
<script src="assets/js/vendor/responsive.bootstrap5.min.js"></script>
<script src="assets/js/vendor/dataTables.checkboxes.min.js"></script>
<!-- Begin page -->

<!-- third party js ends -->

</body>

<%            } else {
            response.sendRedirect("Login page.jsp?value=");
        }
    } catch (NullPointerException e) {
        response.sendRedirect("Login page.jsp?value=");
    }%> 

</html>
