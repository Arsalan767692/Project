<%-- 
    Document   : Others
    Created on : Apr 6, 2024, 7:32:14 PM
    Author     : wfh_khan
--%>
<%        try {
        String user = (String) session.getAttribute("uname");
        String type = (String) session.getAttribute("type");
        System.out.println("type: " + type);
            if (user != null && !user.isEmpty()) {                // Continue with the processing    %>
<%@page import="Models.VOA"%>
<%@page import="Models.VOC"%>
<%@page import="Models.others_wantstowork"%>
<%@page import="Models.others_badcall"%>
<%@page import="Models.others_saneed"%>
<%@page import="Models.others_supermaproduct"%>
<%@page import="Models.others_unableoconnect"%>
<%@page import="Models.others_pisrequest"%>
<%@page import="Models.others_charges"%>
<%@page import="Models.others_otherscncern"%>
<%@page import="Models.others_bulkrequest"%>
<%@page import="Models.others_crossbusiness"%>
<%@page import="Models.others_product"%>
<%@page import="Models.others_masrterstroke"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@ include file="included.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <% if (Function.NewClass.getUserTypeFromTable(name_)) {%>
        <title>Admin |Others Sheet Data </title>
        <% } else { %>
        <title>Agent | Others Sheet Data</title>
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

        <!-- Begin page -->
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
                        -->                        <!--
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
                                    <span>
                                        <span class="account-user-name"><%=session.getAttribute("uname")%></span>
                                        <% if (Function.NewClass.getUserTypeFromTable(name_)) {%>
                                        <span class="account-position">Admin</span>
                                        <% } else {%>
                                        <span class="account-position">Agent</span>
                                        <% } %>                                </span>
                                </a>
                                <div
                                    class="dropdown-menu dropdown-menu-end dropdown-menu-animated topbar-dropdown-menu profile-dropdown">

                                    <!-- item-->
                                    <a href="ChangePassword.jsp" class="dropdown-item notify-item">
                                        <i class="mdi mdi-key me-1"></i>
                                        <span>Change Password</span>
                                    </a>
                                    <!-- item-->
                                    <a href="Login page.jsp" class="dropdown-item notify-item">
                                        <i class="mdi mdi-logout me-1"></i>
                                        <span>Logout</span>
                                    </a>
                                </div>
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

                                    <h4 class="page-title">Other Sheets</h4>
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
                                                <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                    <li class="dropdown notification-list topbar-dropdown" style="background-color: #5ab7d3; height:40px; margin-left:0; border-radius:3px;">
                                                        <a class="dropdown-toggle arrow-none"
                                                           data-bs-toggle="dropdown" href="#" role="button"
                                                           aria-haspopup="false" aria-expanded="false">
                                                            <span class="align-middle d-none d-sm-inline-block"
                                                                  style="color: #fff; padding: 10px;"><i class="uil-apps"></i> Select
                                                                category <i
                                                                    class="mdi mdi-chevron-down d-none d-sm-inline-block align-middle"></i></span>
                                                        </a>
                                                        <div
                                                            class="dropdown-menu dropdown-menu-start dropdown-menu-animated topbar-dropdown-menu" style="height:200px; overflow: auto;">

                                                            <!-- item-->
                                                            <a href="Others.jsp?value=Masterstroke" class="dropdown-item notify-item">
                                                                <i class="mdi mdi-file-document-edit-outline"></i>
                                                                <span class="align-middle"> Masterstroke Card</span>
                                                            </a>

                                                            <!-- item-->
                                                            <a href="Others.jsp?value=Product" class="dropdown-item notify-item">
                                                                <i class="mdi mdi-file-document-edit-outline"></i>
                                                                <span class="align-middle"> Product Availability</span>
                                                            </a>
                                                            <!-- item-->
                                                            <a href="Others.jsp?value=crossbusiness" class="dropdown-item notify-item">
                                                                <i class="mdi mdi-file-document-edit-outline"></i>
                                                                <span class="align-middle"> Cross Business Lead</span>
                                                            </a>
                                                            <!-- item-->
                                                            <a href="Others.jsp?value=bulkrequest" class="dropdown-item notify-item">
                                                                <i class="mdi mdi-file-document-edit-outline"></i>
                                                                <span class="align-middle"> Bulk Request</span>
                                                            </a>
                                                            <!-- item-->
                                                            <a href="Others.jsp?value=otherconcern" class="dropdown-item notify-item">
                                                                <i class="mdi mdi-file-document-edit-outline"></i>
                                                                <span class="align-middle"> Other Concern</span>
                                                            </a>
                                                            <!-- item-->
                                                            <a href="Others.jsp?value=charges" class="dropdown-item notify-item">
                                                                <i class="mdi mdi-file-document-edit-outline"></i>
                                                                <span class="align-middle"> Charges For Dealership</span>
                                                            </a>
                                                            <!-- item-->
                                                            <a href="Others.jsp?value=pisrequest" class="dropdown-item notify-item">
                                                                <i class="mdi mdi-file-document-edit-outline"></i>
                                                                <span class="align-middle"> PIS Request</span>
                                                            </a>
                                                            <!-- item-->
                                                            <a href="Others.jsp?value=unabletoconnect" class="dropdown-item notify-item">
                                                                <i class="mdi mdi-file-document-edit-outline"></i>
                                                                <span class="align-middle"> Unable To Connect Tollfree</span>
                                                            </a>
                                                            <!-- item-->
                                                            <a href="Others.jsp?value=supermaproduct" class="dropdown-item notify-item">
                                                                <i class="mdi mdi-file-document-edit-outline"></i>
                                                                <span class="align-middle"> Suprema Product</span>
                                                            </a>
                                                            <!-- item-->
                                                            <a href="Others.jsp?value=saneed" class="dropdown-item notify-item">
                                                                <i class="mdi mdi-file-document-edit-outline"></i>
                                                                <span class="align-middle"> SA Need Customer Details On Mail</span>
                                                            </a>
                                                            <!-- item-->
                                                            <a href="Others.jsp?value=badcall" class="dropdown-item notify-item">
                                                                <i class="mdi mdi-file-document-edit-outline"></i>
                                                                <span class="align-middle"> Bad Call Number To Be Blocked</span>
                                                            </a>
                                                            <!-- item-->
                                                            <a href="Others.jsp?value=wantstowork" class="dropdown-item notify-item">
                                                                <i class="mdi mdi-file-document-edit-outline"></i>
                                                                <span class="align-middle"> Wants to Work With Asian Paint</span>
                                                            </a>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <% if (name != null && !name.isEmpty()) {%>
                                                        <a  href = "Add others.jsp?val=<%= name%>">
                                                            <button type="submit" class="btn btn-primary mb-2"><i
                                                                    class="mdi mdi-plus-circle me-1"></i> Add New
                                                                Data</button>
                                                        </a>
                                                        <% }%>
                                                    </li>
                                                    <% if (Function.NewClass.getUserTypeFromTable(name_) || Function.NewClass.getUserTypeFromTableOthers(name_)) {%>
                                                    <li style="display: flex; justify-content: space-evenly; background-color: none;">
                                                        <form id="myForm" method="post" class="row gy-2 gx-2 align-items-center justify-content-around" action="ExportOther">
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
                                                </ul>
                                            </div>
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
                                                        form.action = "DesignedOthers";

                                                        // Submit the form
                                                        form.submit();
                                                    });
                                                });
                                            </script>

                                        </div> <!-- end preview-->
                                    </div> <!-- end tab-content-->
                                </div> <!-- end card-body -->
                            </div> <!-- end card -->
                        </div> <!-- end col -->
                    </div>

                    <% String form = request.getParameter("value");
                        if (form.equals("Masterstroke")) {%>
                    <!-- table start -->
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Masterstroke Card</h4></li>
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
                                                            <th scope="col">BP Number</th>
                                                            <th scope="col">Description</th>
                                                            <th scope="col">Dealer Details</th>
                                                            <th scope="col">TSO Details</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <%int a = 1;
                                                            List<others_masrterstroke> list = Models.masterstroke.getDataList();
                                                            for (others_masrterstroke e : list) {

                                                        %>
                                                        <tr>
                                                            <% if (Function.NewClass.getUserTypeFromTable(name_)) {%>
                                                            <td><a href="Edit others.jsp?val=<%=e.getId()%>&val1=<%=form%>">
                                                                    <i class="mdi mdi-pencil me-1"></i>
                                                                </a>
                                                            </td>
                                                            <% }%>
                                                            <td><%=a++%></td>
                                                            <td> <%= e.getDate()%> </td>
                                                            <td> <%= e.getTime()%> </td>
                                                            <td> <%= e.getCustomer_name()%> </td>
                                                            <td> <%= e.getMobile_number()%> </td>
                                                            <td> <%= e.getAlternate_number()%> </td>
                                                            <td> <%= e.getPincode()%> </td>
                                                            <td> <%= e.getBp_number()%> </td>
                                                            <td> <%= e.getDescription()%> </td>
                                                            <td> <%= e.getDealer_details()%> </td>
                                                            <td> <%= e.getTso_details()%> </td>
                                                            <td> <%= e.getAgent_name()%> </td>
                                                            <td> <%= e.getTeam()%> </td>
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
                    <!-- MS card table end -->

                    <!-- table start -->
                    <!--                <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Product Availability</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">Email ID</th>
                                                                            <th scope="col">City</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Product Code</th>
                                                                            <th scope="col">Quantity</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Product Availability table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Cross Business Lead</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">City</th>
                                                                            <th scope="col">State</th>
                                                                            <th scope="col">Query For</th>
                                                                            <th scope="col">Type of Query</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Cross business lead table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Bulk Request</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">City</th>
                                                                            <th scope="col">State</th>
                                                                            <th scope="col">Address</th>
                                                                            <th scope="col">Email ID</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Bulk Request table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Other Concern</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">Email ID</th>
                                                                            <th scope="col">State</th>
                                                                            <th scope="col">City</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Other Concern table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Charges For Dealership</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Associate Name</th>
                                                                            <th scope="col">Associate Number</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Charges for dealership table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">PIS Request</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">Email ID</th>
                                                                            <th scope="col">Product Name</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     PIS Request table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Unable To Connect Tollfree</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">BP number/Dealer Code</th>
                                                                            <th scope="col">Unable To Connect</th>
                                                                            <th scope="col">Reamrks</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Unable to connact toll free  table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Suprema Product</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">Email</th>
                                                                            <th scope="col">Type of Call</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Suprema product table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">SA Need Customer Details On Mail</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">Lead/Complaint/Case No.</th>
                                                                            <th scope="col">Address</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Sales Associate Name</th>
                                                                            <th scope="col">Sales Associate Number</th>
                                                                            <th scope="col">Sales Associate Email</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     SA need customer Details table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Bad Call Number To Be Blocked</h4></li>
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
                                                                <table style="width:100%" id="table">
                                                                    <thead>
                                                                        <tr>
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Bad Call to be blocked table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Wants to Work With Asian Paint</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">City</th>
                                                                            <th scope="col">State</th>
                                                                            <th scope="col">Address</th>
                                                                            <th scope="col">Email ID</th>
                                                                            <th scope="col">Relocation City</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     wants to work with AP table end 
                                </div>  container 
                            </div>  container 
                    
                        </div>  content 
                    
                         Footer Start 
                    -->    <footer class="footer" style="background-color: #fff;">

                    </footer>
                    <!--end Footer 
               
                   </div>
               
                    ============================================================== 
                    End Page content 
                    ============================================================== 
               
               
                   </div>-->
                    <!-- END wrapper -->

                    <%} else if (form.equals("Product")) {%>
                    <!-- table start -->
                    <!--                <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Masterstroke Card</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">BP Number</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Dealer Details</th>
                                                                            <th scope="col">TSO Details</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                    <!-- MS card table end -->

                    <!-- table start -->
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Product Availability</h4></li>
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
                                                            <th scope="col">Email ID</th>
                                                            <th scope="col">City</th>
                                                            <th scope="col">Description</th>
                                                            <th scope="col">Product Code</th>
                                                            <th scope="col">Quantity</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <%int b = 1;
                                                            List<others_product> list = Models.product.getDataList();
                                                            for (others_product e : list) {
                                                        %>
                                                        <tr>
                                                            <% if (Function.NewClass.getUserTypeFromTable(name_)) {%>
                                                            <td><a href="Edit others.jsp?val=<%=e.getId()%>&val1=<%=form%>">
                                                                    <i class="mdi mdi-pencil me-1"></i>
                                                                </a>
                                                            </td>
                                                            <%}%>
                                                            <td><%=b++%></td>
                                                            <td> <%= e.getDate()%> </td>
                                                            <td> <%= e.getTime()%> </td>
                                                            <td> <%= e.getCustomer_name()%> </td>
                                                            <td> <%= e.getMobile_number()%> </td>
                                                            <td> <%= e.getAlternate_number()%> </td>
                                                            <td> <%= e.getPincode()%> </td>
                                                            <td> <%= e.getEmail_id()%> </td>
                                                            <td> <%= e.getCity()%> </td>
                                                            <td> <%= e.getDescription()%> </td>
                                                            <td> <%= e.getProduct_code()%> </td>
                                                            <td> <%= e.getQuantity()%> </td>
                                                            <td> <%= e.getAgent_name()%> </td>
                                                            <td> <%= e.getAspect_id()%> </td>

                                                        </tr>
                                                        <%}%>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>  <!--end preview-->
                                    </div>  <!--end tab-content-->
                                </div>  <!--end card body-->
                            </div>  <!--end card -->
                        </div> <!--end col-->
                    </div>
                    <!-- end row--><!--
                     Product Availability table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Cross Business Lead</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">City</th>
                                                            <th scope="col">State</th>
                                                            <th scope="col">Query For</th>
                                                            <th scope="col">Type of Query</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     Cross business lead table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Bulk Request</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">City</th>
                                                            <th scope="col">State</th>
                                                            <th scope="col">Address</th>
                                                            <th scope="col">Email ID</th>
                                                            <th scope="col">Description</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     Bulk Request table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Other Concern</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">Email ID</th>
                                                            <th scope="col">State</th>
                                                            <th scope="col">City</th>
                                                            <th scope="col">Description</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     Other Concern table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Charges For Dealership</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">Description</th>
                                                            <th scope="col">Associate Name</th>
                                                            <th scope="col">Associate Number</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     Charges for dealership table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">PIS Request</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">Email ID</th>
                                                            <th scope="col">Product Name</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     PIS Request table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Unable To Connect Tollfree</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">BP number/Dealer Code</th>
                                                            <th scope="col">Unable To Connect</th>
                                                            <th scope="col">Reamrks</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     Unable to connact toll free  table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Suprema Product</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">Email</th>
                                                            <th scope="col">Type of Call</th>
                                                            <th scope="col">Description</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     Suprema product table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">SA Need Customer Details On Mail</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">Lead/Complaint/Case No.</th>
                                                            <th scope="col">Address</th>
                                                            <th scope="col">Description</th>
                                                            <th scope="col">Sales Associate Name</th>
                                                            <th scope="col">Sales Associate Number</th>
                                                            <th scope="col">Sales Associate Email</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     SA need customer Details table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Bad Call Number To Be Blocked</h4></li>
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
                                                <table style="width:100%" id="table">
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     Bad Call to be blocked table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Wants to Work With Asian Paint</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">City</th>
                                                            <th scope="col">State</th>
                                                            <th scope="col">Address</th>
                                                            <th scope="col">Email ID</th>
                                                            <th scope="col">Relocation City</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     wants to work with AP table end 
                </div>  container 
            </div>  container 
    
        </div>  content 
    
         Footer Start 
                    -->    <footer class="footer" style="background-color: #fff;">

                    </footer>
                    <!--end Footer 
               
                   </div>
               
                    <%} else if (form.equals("crossbusiness")) {%>
                    <!-- table start -->
                    <!--                <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Masterstroke Card</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">BP Number</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Dealer Details</th>
                                                                            <th scope="col">TSO Details</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                    <!-- MS card table end -->

                    <!-- table start -->
                    <!--                <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Product Availability</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">Email ID</th>
                                                                            <th scope="col">City</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Product Code</th>
                                                                            <th scope="col">Quantity</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Product Availability table end 
                    
                                     table start 
                    -->                <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Cross Business Lead</h4></li>
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
                                                            <th scope="col">City</th>
                                                            <th scope="col">State</th>
                                                            <th scope="col">Query For</th>
                                                            <th scope="col">Type of Query</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <%int c = 1;
                                                            List<others_crossbusiness> list = Models.crossbusiness.getDataList();
                                                            for (others_crossbusiness e : list) {
                                                        %>
                                                        <tr>
                                                            <% if (Function.NewClass.getUserTypeFromTable(name_)) {%>
                                                            <td><a href="Edit others.jsp?val=<%=e.getId()%>&val1=<%=form%>">
                                                                    <i class="mdi mdi-pencil me-1"></i>
                                                                </a>
                                                            </td>
                                                            <%}%>
                                                            <td><%=c++%></td>
                                                            <td> <%= e.getDate()%> </td>
                                                            <td> <%= e.getTime()%> </td>
                                                            <td> <%= e.getCustomer_name()%> </td>
                                                            <td> <%= e.getMobile_number()%> </td>
                                                            <td> <%= e.getAlternate_number()%> </td>
                                                            <td> <%= e.getPincode()%> </td>
                                                            <td> <%= e.getCity()%> </td>
                                                            <td> <%= e.getState()%> </td>
                                                            <td> <%= e.getQuery_for()%> </td>
                                                            <td> <%= e.getType_of_query()%> </td>
                                                            <td> <%= e.getAgent_name()%> </td>
                                                            <td> <%= e.getAspect_id()%> </td>

                                                        </tr>
                                                        <%}%>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>  <!--end preview-->
                                    </div>  <!--end tab-content-->
                                </div>  <!--end card body-->
                            </div>  <!--end card -->
                        </div> <!--end col-->
                    </div>
                    <!-- end row
                     Cross business lead table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Bulk Request</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">City</th>
                                                            <th scope="col">State</th>
                                                            <th scope="col">Address</th>
                                                            <th scope="col">Email ID</th>
                                                            <th scope="col">Description</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     Bulk Request table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Other Concern</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">Email ID</th>
                                                            <th scope="col">State</th>
                                                            <th scope="col">City</th>
                                                            <th scope="col">Description</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     Other Concern table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Charges For Dealership</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">Description</th>
                                                            <th scope="col">Associate Name</th>
                                                            <th scope="col">Associate Number</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     Charges for dealership table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">PIS Request</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">Email ID</th>
                                                            <th scope="col">Product Name</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     PIS Request table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Unable To Connect Tollfree</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">BP number/Dealer Code</th>
                                                            <th scope="col">Unable To Connect</th>
                                                            <th scope="col">Reamrks</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     Unable to connact toll free  table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Suprema Product</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">Email</th>
                                                            <th scope="col">Type of Call</th>
                                                            <th scope="col">Description</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     Suprema product table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">SA Need Customer Details On Mail</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">Lead/Complaint/Case No.</th>
                                                            <th scope="col">Address</th>
                                                            <th scope="col">Description</th>
                                                            <th scope="col">Sales Associate Name</th>
                                                            <th scope="col">Sales Associate Number</th>
                                                            <th scope="col">Sales Associate Email</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     SA need customer Details table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Bad Call Number To Be Blocked</h4></li>
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
                                                <table style="width:100%" id="table">
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     Bad Call to be blocked table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Wants to Work With Asian Paint</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">City</th>
                                                            <th scope="col">State</th>
                                                            <th scope="col">Address</th>
                                                            <th scope="col">Email ID</th>
                                                            <th scope="col">Relocation City</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     wants to work with AP table end 
                </div>  container 
            </div>  container 
    
        </div>  content 
    
         Footer Start 
                    -->    <footer class="footer" style="background-color: #fff;">

                    </footer>
                    <!--end Footer 
               
                   </div>
               
                    <%} else if (form.equals("bulkrequest")) {%>
                    <!-- table start -->
                    <!--                <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Masterstroke Card</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">BP Number</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Dealer Details</th>
                                                                            <th scope="col">TSO Details</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                    <!-- MS card table end -->

                    <!-- table start -->
                    <!--                <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Product Availability</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">Email ID</th>
                                                                            <th scope="col">City</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Product Code</th>
                                                                            <th scope="col">Quantity</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Product Availability table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Cross Business Lead</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">City</th>
                                                                            <th scope="col">State</th>
                                                                            <th scope="col">Query For</th>
                                                                            <th scope="col">Type of Query</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Cross business lead table end 
                    
                                     table start 
                    -->                <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Bulk Request</h4></li>
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
                                                            <th scope="col">City</th>
                                                            <th scope="col">State</th>
                                                            <th scope="col">Address</th>
                                                            <th scope="col">Email ID</th>
                                                            <th scope="col">Description</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <%int d = 1;
                                                            List<others_bulkrequest> list = Models.bulkrequest.getDataList();
                                                            for (others_bulkrequest e : list) {
                                                        %>
                                                        <tr>
                                                            <% if (Function.NewClass.getUserTypeFromTable(name_)) {%>
                                                            <td><a href="Edit others.jsp?val=<%=e.getId()%>&val1=<%=form%>">
                                                                    <i class="mdi mdi-pencil me-1"></i>
                                                                </a>
                                                            </td>
                                                            <%}%>
                                                            <td><%=d++%></td>
                                                            <td> <%= e.getDate()%> </td>
                                                            <td> <%= e.getTime()%> </td>
                                                            <td> <%= e.getCustomer_name()%> </td>
                                                            <td> <%= e.getMobile_number()%> </td>
                                                            <td> <%= e.getAlternate_number()%> </td>
                                                            <td> <%= e.getPincode()%> </td>
                                                            <td> <%= e.getCity()%> </td>
                                                            <td> <%= e.getState()%> </td>
                                                            <td> <%= e.getAddress()%> </td>
                                                            <td> <%= e.getEmail_id()%> </td>
                                                            <td> <%= e.getDescription()%> </td>
                                                            <td> <%= e.getAgent_name()%> </td>
                                                            <td> <%= e.getAspect_id()%> </td>

                                                        </tr>
                                                        <%}%>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>  <!--end preview-->
                                    </div>  <!--end tab-content-->
                                </div>  <!--end card body-->
                            </div>  <!--end card -->
                        </div> <!--end col-->
                    </div>
                    <!-- end row
                     Bulk Request table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Other Concern</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">Email ID</th>
                                                            <th scope="col">State</th>
                                                            <th scope="col">City</th>
                                                            <th scope="col">Description</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     Other Concern table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Charges For Dealership</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">Description</th>
                                                            <th scope="col">Associate Name</th>
                                                            <th scope="col">Associate Number</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     Charges for dealership table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">PIS Request</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">Email ID</th>
                                                            <th scope="col">Product Name</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     PIS Request table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Unable To Connect Tollfree</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">BP number/Dealer Code</th>
                                                            <th scope="col">Unable To Connect</th>
                                                            <th scope="col">Reamrks</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     Unable to connact toll free  table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Suprema Product</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">Email</th>
                                                            <th scope="col">Type of Call</th>
                                                            <th scope="col">Description</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     Suprema product table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">SA Need Customer Details On Mail</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">Lead/Complaint/Case No.</th>
                                                            <th scope="col">Address</th>
                                                            <th scope="col">Description</th>
                                                            <th scope="col">Sales Associate Name</th>
                                                            <th scope="col">Sales Associate Number</th>
                                                            <th scope="col">Sales Associate Email</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     SA need customer Details table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Bad Call Number To Be Blocked</h4></li>
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
                                                <table style="width:100%" id="table">
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     Bad Call to be blocked table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Wants to Work With Asian Paint</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">City</th>
                                                            <th scope="col">State</th>
                                                            <th scope="col">Address</th>
                                                            <th scope="col">Email ID</th>
                                                            <th scope="col">Relocation City</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     wants to work with AP table end 
                </div>  container 
            </div>  container 
    
        </div>  content 
    
         Footer Start 
                    -->    <footer class="footer" style="background-color: #fff;">

                    </footer>
                    <!--end Footer 
               
                   </div>
               
                    <%} else if (form.equals("otherconcern")) {%>
                    <!-- table start -->
                    <!--                <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Masterstroke Card</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">BP Number</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Dealer Details</th>
                                                                            <th scope="col">TSO Details</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>  end preview-->


                    <!--                                </div>  end tab-content
                    
                                                </div>  end card body
                                            </div>  end card 
                                        </div> end col
                                    </div>-->
                    <!-- end row-->
                    <!-- MS card table end -->

                    <!-- table start -->
                    <!--                <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Product Availability</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">Email ID</th>
                                                                            <th scope="col">City</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Product Code</th>
                                                                            <th scope="col">Quantity</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Product Availability table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Cross Business Lead</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">City</th>
                                                                            <th scope="col">State</th>
                                                                            <th scope="col">Query For</th>
                                                                            <th scope="col">Type of Query</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Cross business lead table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Bulk Request</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">City</th>
                                                                            <th scope="col">State</th>
                                                                            <th scope="col">Address</th>
                                                                            <th scope="col">Email ID</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Bulk Request table end 
                    
                                     table start 
                    -->                <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Other Concern</h4></li>
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
                                                            <th scope="col">Email ID</th>
                                                            <th scope="col">State</th>
                                                            <th scope="col">City</th>
                                                            <th scope="col">Description</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <%
                                                            int u = 1;
                                                            List<others_otherscncern> list = Models.othersconcern.getDataList();
                                                            for (others_otherscncern e : list) {
                                                        %>
                                                        <tr>
                                                            <% if (Function.NewClass.getUserTypeFromTable(name_)) {%>
                                                            <td><a href="Edit others.jsp?val=<%=e.getId()%>&val1=<%=form%>">
                                                                    <i class="mdi mdi-pencil me-1"></i>
                                                                </a>
                                                            </td>
                                                            <%}%>
                                                            <td><%= u++%></td>
                                                            <td><%= e.getDate()%></td>
                                                            <td><%= e.getTime()%></td>
                                                            <td><%= e.getCustomer_name()%></td>
                                                            <td><%= e.getMobile_number()%></td>
                                                            <td><%= e.getAlternate_number()%></td>
                                                            <td><%= e.getPincode()%></td>
                                                            <td><%= e.getEmail_id()%></td>
                                                            <td><%= e.getState()%></td>
                                                            <td><%= e.getCity()%></td>
                                                            <td><%= e.getDescription()%></td>
                                                            <td><%= e.getAgent_name()%></td>
                                                            <td><%= e.getAspect_id()%></td>
                                                        </tr>
                                                        <%
                                                            }
                                                        %>

                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>  <!--end preview-->
                                    </div>  <!--end tab-content-->
                                </div>  <!--end card body-->
                            </div>  <!--end card -->
                        </div> <!--end col-->
                    </div>
                    <!-- end row
                     Other Concern table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Charges For Dealership</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">Description</th>
                                                            <th scope="col">Associate Name</th>
                                                            <th scope="col">Associate Number</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     Charges for dealership table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">PIS Request</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">Email ID</th>
                                                            <th scope="col">Product Name</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     PIS Request table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Unable To Connect Tollfree</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">BP number/Dealer Code</th>
                                                            <th scope="col">Unable To Connect</th>
                                                            <th scope="col">Reamrks</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     Unable to connact toll free  table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Suprema Product</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">Email</th>
                                                            <th scope="col">Type of Call</th>
                                                            <th scope="col">Description</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     Suprema product table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">SA Need Customer Details On Mail</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">Lead/Complaint/Case No.</th>
                                                            <th scope="col">Address</th>
                                                            <th scope="col">Description</th>
                                                            <th scope="col">Sales Associate Name</th>
                                                            <th scope="col">Sales Associate Number</th>
                                                            <th scope="col">Sales Associate Email</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     SA need customer Details table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Bad Call Number To Be Blocked</h4></li>
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
                                                <table style="width:100%" id="table">
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     Bad Call to be blocked table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Wants to Work With Asian Paint</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">City</th>
                                                            <th scope="col">State</th>
                                                            <th scope="col">Address</th>
                                                            <th scope="col">Email ID</th>
                                                            <th scope="col">Relocation City</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     wants to work with AP table end 
                </div>  container 
            </div>  container 
    
        </div>  content 
    
         Footer Start 
                    -->    <footer class="footer" style="background-color: #fff;">

                    </footer>
                    <!--end Footer 
               
                   </div>
               
                    <%} else if (form.equals("charges")) {%>
                    <!-- table start -->
                    <!--                <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Masterstroke Card</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">BP Number</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Dealer Details</th>
                                                                            <th scope="col">TSO Details</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                    <!-- MS card table end -->

                    <!-- table start -->
                    <!--                <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Product Availability</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">Email ID</th>
                                                                            <th scope="col">City</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Product Code</th>
                                                                            <th scope="col">Quantity</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Product Availability table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Cross Business Lead</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">City</th>
                                                                            <th scope="col">State</th>
                                                                            <th scope="col">Query For</th>
                                                                            <th scope="col">Type of Query</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Cross business lead table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Bulk Request</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">City</th>
                                                                            <th scope="col">State</th>
                                                                            <th scope="col">Address</th>
                                                                            <th scope="col">Email ID</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Bulk Request table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Other Concern</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">Email ID</th>
                                                                            <th scope="col">State</th>
                                                                            <th scope="col">City</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Other Concern table end 
                    
                                     table start 
                    -->                <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Charges For Dealership</h4></li>
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
                                                            <th scope="col">Description</th>
                                                            <th scope="col">Associate Name</th>
                                                            <th scope="col">Associate Number</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <%int f = 1;
                                                            List<others_charges> list = Models.charges.getDataList();
                                                            for (others_charges e : list) {
                                                        %>
                                                        <tr>
                                                            <% if (Function.NewClass.getUserTypeFromTable(name_)) {%>
                                                            <td><a href="Edit others.jsp?val=<%=e.getId()%>&val1=<%=form%>">
                                                                    <i class="mdi mdi-pencil me-1"></i>
                                                                </a>
                                                            </td>
                                                            <%}%>
                                                            <td><%=f++%></td>
                                                            <td> <%= e.getDate()%> </td>
                                                            <td> <%= e.getTime()%> </td>
                                                            <td> <%= e.getCustomer_name()%> </td>
                                                            <td> <%= e.getMobile_number()%> </td>
                                                            <td> <%= e.getAlternate_number()%> </td>
                                                            <td> <%= e.getPincode()%> </td>
                                                            <td> <%= e.getDescription()%> </td>
                                                            <td> <%= e.getAssociate_name()%> </td>
                                                            <td> <%= e.getAssociate_number()%> </td>
                                                            <td> <%= e.getAgent_name()%> </td>
                                                            <td> <%= e.getAspect_id()%> </td>

                                                        </tr>
                                                        <%}%>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>  <!--end preview-->
                                    </div>  <!--end tab-content-->
                                </div>  <!--end card body-->
                            </div>  <!--end card -->
                        </div> <!--end col-->
                    </div>
                    <!-- end row
                     Charges for dealership table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">PIS Request</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">Email ID</th>
                                                            <th scope="col">Product Name</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     PIS Request table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Unable To Connect Tollfree</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">BP number/Dealer Code</th>
                                                            <th scope="col">Unable To Connect</th>
                                                            <th scope="col">Reamrks</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     Unable to connact toll free  table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Suprema Product</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">Email</th>
                                                            <th scope="col">Type of Call</th>
                                                            <th scope="col">Description</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     Suprema product table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">SA Need Customer Details On Mail</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">Lead/Complaint/Case No.</th>
                                                            <th scope="col">Address</th>
                                                            <th scope="col">Description</th>
                                                            <th scope="col">Sales Associate Name</th>
                                                            <th scope="col">Sales Associate Number</th>
                                                            <th scope="col">Sales Associate Email</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     SA need customer Details table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Bad Call Number To Be Blocked</h4></li>
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
                                                <table style="width:100%" id="table">
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     Bad Call to be blocked table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Wants to Work With Asian Paint</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">City</th>
                                                            <th scope="col">State</th>
                                                            <th scope="col">Address</th>
                                                            <th scope="col">Email ID</th>
                                                            <th scope="col">Relocation City</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     wants to work with AP table end 
                </div>  container 
            </div>  container 
    
        </div>  content 
    
         Footer Start 
                    -->    <footer class="footer" style="background-color: #fff;">

                    </footer>
                    <!--end Footer 
               
                   </div>
               
                    <%} else if (form.equals("pisrequest")) {%>
                    <!-- table start -->
                    <!--                <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Masterstroke Card</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">BP Number</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Dealer Details</th>
                                                                            <th scope="col">TSO Details</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                    <!-- MS card table end -->

                    <!-- table start -->
                    <!--                <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Product Availability</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">Email ID</th>
                                                                            <th scope="col">City</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Product Code</th>
                                                                            <th scope="col">Quantity</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Product Availability table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Cross Business Lead</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">City</th>
                                                                            <th scope="col">State</th>
                                                                            <th scope="col">Query For</th>
                                                                            <th scope="col">Type of Query</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Cross business lead table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Bulk Request</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">City</th>
                                                                            <th scope="col">State</th>
                                                                            <th scope="col">Address</th>
                                                                            <th scope="col">Email ID</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Bulk Request table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Other Concern</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">Email ID</th>
                                                                            <th scope="col">State</th>
                                                                            <th scope="col">City</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Other Concern table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Charges For Dealership</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Associate Name</th>
                                                                            <th scope="col">Associate Number</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Charges for dealership table end 
                    
                                     table start 
                    -->                <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">PIS Request</h4></li>
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
                                                            <th scope="col">Email ID</th>
                                                            <th scope="col">Product Name</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <%int g = 1;
                                                            List<others_pisrequest> list = Models.pisrequest.getDataList();
                                                            for (others_pisrequest e : list) {%>
                                                        <tr>
                                                            <% if (Function.NewClass.getUserTypeFromTable(name_)) {%>
                                                            <td><a href="Edit others.jsp?val=<%=e.getId()%>&val1=<%=form%>">
                                                                    <i class="mdi mdi-pencil me-1"></i>
                                                                </a>
                                                            </td>
                                                            <%}%>
                                                            <td><%=g++%></td>
                                                            <td> <%= e.getDate()%> </td>
                                                            <td> <%= e.getTime()%> </td>
                                                            <td> <%= e.getCustomer_name()%> </td>
                                                            <td> <%= e.getMobile_number()%> </td>
                                                            <td> <%= e.getAlternate_number()%> </td>
                                                            <td> <%= e.getPincode()%> </td>
                                                            <td> <%= e.getEmail_id()%> </td>
                                                            <td> <%= e.getProduct_name()%> </td>
                                                            <td> <%= e.getAgent_name()%> </td>
                                                            <td> <%= e.getAspect_id()%> </td>

                                                        </tr>
                                                        <%}%>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>  <!--end preview-->
                                    </div>  <!--end tab-content-->
                                </div>  <!--end card body-->
                            </div>  <!--end card -->
                        </div> <!--end col-->
                    </div>
                    <!-- end row
                     PIS Request table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Unable To Connect Tollfree</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">BP number/Dealer Code</th>
                                                            <th scope="col">Unable To Connect</th>
                                                            <th scope="col">Reamrks</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     Unable to connact toll free  table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Suprema Product</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">Email</th>
                                                            <th scope="col">Type of Call</th>
                                                            <th scope="col">Description</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     Suprema product table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">SA Need Customer Details On Mail</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">Lead/Complaint/Case No.</th>
                                                            <th scope="col">Address</th>
                                                            <th scope="col">Description</th>
                                                            <th scope="col">Sales Associate Name</th>
                                                            <th scope="col">Sales Associate Number</th>
                                                            <th scope="col">Sales Associate Email</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     SA need customer Details table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Bad Call Number To Be Blocked</h4></li>
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
                                                <table style="width:100%" id="table">
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     Bad Call to be blocked table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Wants to Work With Asian Paint</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">City</th>
                                                            <th scope="col">State</th>
                                                            <th scope="col">Address</th>
                                                            <th scope="col">Email ID</th>
                                                            <th scope="col">Relocation City</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     wants to work with AP table end 
                </div>  container 
            </div>  container 
    
        </div>  content 
    
         Footer Start 
                    -->    <footer class="footer" style="background-color: #fff;">

                    </footer>
                    <!--end Footer 
               
                   </div>
               
                    <%} else if (form.equals("unabletoconnect")) {%>
                    <!-- table start -->
                    <!--                <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Masterstroke Card</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">BP Number</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Dealer Details</th>
                                                                            <th scope="col">TSO Details</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                    <!-- MS card table end -->

                    <!-- table start -->
                    <!--                <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Product Availability</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">Email ID</th>
                                                                            <th scope="col">City</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Product Code</th>
                                                                            <th scope="col">Quantity</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Product Availability table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Cross Business Lead</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">City</th>
                                                                            <th scope="col">State</th>
                                                                            <th scope="col">Query For</th>
                                                                            <th scope="col">Type of Query</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Cross business lead table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Bulk Request</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">City</th>
                                                                            <th scope="col">State</th>
                                                                            <th scope="col">Address</th>
                                                                            <th scope="col">Email ID</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Bulk Request table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Other Concern</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">Email ID</th>
                                                                            <th scope="col">State</th>
                                                                            <th scope="col">City</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Other Concern table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Charges For Dealership</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Associate Name</th>
                                                                            <th scope="col">Associate Number</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Charges for dealership table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">PIS Request</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">Email ID</th>
                                                                            <th scope="col">Product Name</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     PIS Request table end 
                    
                                     table start 
                    -->                <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Unable To Connect Tollfree</h4></li>
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
                                                            <th scope="col">BP number/Dealer Code</th>
                                                            <th scope="col">Unable To Connect</th>
                                                            <th scope="col">Reamrks</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <%int h = 1;
                                                            List<others_unableoconnect> list = Models.unabletoconnect.getDataList();
                                                            for (others_unableoconnect e : list) {
                                                        %>
                                                        <tr>
                                                            <% if (Function.NewClass.getUserTypeFromTable(name_)) {%>
                                                            <td><a href="Edit others.jsp?val=<%=e.getId()%>&val1=<%=form%>">
                                                                    <i class="mdi mdi-pencil me-1"></i>
                                                                </a>
                                                            </td>
                                                            <%}%>
                                                            <td><%=h++%></td>
                                                            <td> <%= e.getDate()%> </td>
                                                            <td> <%= e.getTime()%> </td>
                                                            <td> <%= e.getCustomer_name()%> </td>
                                                            <td> <%= e.getMobile_number()%> </td>
                                                            <td> <%= e.getAlternate_number()%> </td>
                                                            <td> <%= e.getPincode()%> </td>
                                                            <td> <%= e.getBp_number_dealer_code()%> </td>
                                                            <td> <%= e.getType_of_tollfree()%> </td>
                                                            <td> <%= e.getRemarks()%> </td>
                                                            <td> <%= e.getAgent_name()%> </td>
                                                            <td> <%= e.getAspect_id()%> </td>

                                                        </tr>
                                                        <%}%>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>  <!--end preview-->
                                    </div>  <!--end tab-content-->
                                </div>  <!--end card body-->
                            </div>  <!--end card -->
                        </div> <!--end col-->
                    </div>
                    <!-- end row
                     Unable to connact toll free  table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Suprema Product</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">Email</th>
                                                            <th scope="col">Type of Call</th>
                                                            <th scope="col">Description</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     Suprema product table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">SA Need Customer Details On Mail</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">Lead/Complaint/Case No.</th>
                                                            <th scope="col">Address</th>
                                                            <th scope="col">Description</th>
                                                            <th scope="col">Sales Associate Name</th>
                                                            <th scope="col">Sales Associate Number</th>
                                                            <th scope="col">Sales Associate Email</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     SA need customer Details table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Bad Call Number To Be Blocked</h4></li>
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
                                                <table style="width:100%" id="table">
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     Bad Call to be blocked table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Wants to Work With Asian Paint</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">City</th>
                                                            <th scope="col">State</th>
                                                            <th scope="col">Address</th>
                                                            <th scope="col">Email ID</th>
                                                            <th scope="col">Relocation City</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     wants to work with AP table end 
                </div>  container 
            </div>  container 
    
        </div>  content 
    
         Footer Start 
                    -->    <footer class="footer" style="background-color: #fff;">

                    </footer>
                    <!--end Footer 
               
                   </div>
               
                    <%} else if (form.equals("supermaproduct")) {%>
                    <!-- table start -->
                    <!--                <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Masterstroke Card</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">BP Number</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Dealer Details</th>
                                                                            <th scope="col">TSO Details</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                    <!-- MS card table end -->

                    <!-- table start -->
                    <!--                <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Product Availability</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">Email ID</th>
                                                                            <th scope="col">City</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Product Code</th>
                                                                            <th scope="col">Quantity</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Product Availability table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Cross Business Lead</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">City</th>
                                                                            <th scope="col">State</th>
                                                                            <th scope="col">Query For</th>
                                                                            <th scope="col">Type of Query</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Cross business lead table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Bulk Request</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">City</th>
                                                                            <th scope="col">State</th>
                                                                            <th scope="col">Address</th>
                                                                            <th scope="col">Email ID</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Bulk Request table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Other Concern</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">Email ID</th>
                                                                            <th scope="col">State</th>
                                                                            <th scope="col">City</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Other Concern table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Charges For Dealership</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Associate Name</th>
                                                                            <th scope="col">Associate Number</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Charges for dealership table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">PIS Request</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">Email ID</th>
                                                                            <th scope="col">Product Name</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     PIS Request table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Unable To Connect Tollfree</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">BP number/Dealer Code</th>
                                                                            <th scope="col">Unable To Connect</th>
                                                                            <th scope="col">Reamrks</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Unable to connact toll free  table end 
                    
                                     table start 
                    -->                <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Suprema Product</h4></li>
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
                                                            <th scope="col">Email</th>
                                                            <th scope="col">Type of Call</th>
                                                            <th scope="col">Description</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <%int i = 1;
                                                            List<others_supermaproduct> list = Models.supermaproduct.getDataList();
                                                            for (others_supermaproduct e : list) {%>
                                                        <tr>
                                                            <% if (Function.NewClass.getUserTypeFromTable(name_)) {%>
                                                            <td><a href="Edit others.jsp?val=<%=e.getId()%>&val1=<%=form%>">
                                                                    <i class="mdi mdi-pencil me-1"></i>
                                                                </a>
                                                            </td>
                                                            <%}%>
                                                            <td><%=i++%></td>
                                                            <td> <%= e.getDate()%> </td>
                                                            <td> <%= e.getTime()%> </td>
                                                            <td> <%= e.getCustomer_name()%> </td>
                                                            <td> <%= e.getMobile_number()%> </td>
                                                            <td> <%= e.getAlternate_number()%> </td>
                                                            <td> <%= e.getPincode()%> </td>
                                                            <td> <%= e.getEmail_id()%> </td>
                                                            <td> <%= e.getType_of_call()%> </td>
                                                            <td> <%= e.getDescription()%> </td>
                                                            <td> <%= e.getAgent_name()%> </td>
                                                            <td> <%= e.getAspect_id()%> </td>

                                                        </tr>
                                                        <%}%>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>  <!--end preview-->
                                    </div>  <!--end tab-content-->
                                </div>  <!--end card body-->
                            </div>  <!--end card -->
                        </div> <!--end col-->
                    </div>
                    <!-- end row
                     Suprema product table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">SA Need Customer Details On Mail</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">Lead/Complaint/Case No.</th>
                                                            <th scope="col">Address</th>
                                                            <th scope="col">Description</th>
                                                            <th scope="col">Sales Associate Name</th>
                                                            <th scope="col">Sales Associate Number</th>
                                                            <th scope="col">Sales Associate Email</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     SA need customer Details table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Bad Call Number To Be Blocked</h4></li>
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
                                                <table style="width:100%" id="table">
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     Bad Call to be blocked table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Wants to Work With Asian Paint</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">City</th>
                                                            <th scope="col">State</th>
                                                            <th scope="col">Address</th>
                                                            <th scope="col">Email ID</th>
                                                            <th scope="col">Relocation City</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     wants to work with AP table end 
                </div>  container 
            </div>  container 
    
        </div>  content 
    
         Footer Start 
                    -->    <footer class="footer" style="background-color: #fff;">

                    </footer>
                    <!--end Footer 
               
                   </div>
               
                    <%} else if (form.equals("saneed")) {%>
                    <!-- table start -->
                    <!--                <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Masterstroke Card</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">BP Number</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Dealer Details</th>
                                                                            <th scope="col">TSO Details</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                    <!-- MS card table end -->

                    <!-- table start -->
                    <!--                <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Product Availability</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">Email ID</th>
                                                                            <th scope="col">City</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Product Code</th>
                                                                            <th scope="col">Quantity</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Product Availability table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Cross Business Lead</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">City</th>
                                                                            <th scope="col">State</th>
                                                                            <th scope="col">Query For</th>
                                                                            <th scope="col">Type of Query</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Cross business lead table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Bulk Request</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">City</th>
                                                                            <th scope="col">State</th>
                                                                            <th scope="col">Address</th>
                                                                            <th scope="col">Email ID</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Bulk Request table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Other Concern</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">Email ID</th>
                                                                            <th scope="col">State</th>
                                                                            <th scope="col">City</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Other Concern table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Charges For Dealership</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Associate Name</th>
                                                                            <th scope="col">Associate Number</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Charges for dealership table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">PIS Request</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">Email ID</th>
                                                                            <th scope="col">Product Name</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     PIS Request table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Unable To Connect Tollfree</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">BP number/Dealer Code</th>
                                                                            <th scope="col">Unable To Connect</th>
                                                                            <th scope="col">Reamrks</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Unable to connact toll free  table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Suprema Product</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">Email</th>
                                                                            <th scope="col">Type of Call</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Suprema product table end 
                    
                                     table start 
                    -->                <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">SA Need Customer Details On Mail</h4></li>
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
                                                            <th scope="col">Lead/Complaint/Case No.</th>
                                                            <th scope="col">Address</th>
                                                            <th scope="col">Description</th>
                                                            <th scope="col">Sales Associate Name</th>
                                                            <th scope="col">Sales Associate Number</th>
                                                            <th scope="col">Sales Associate Email</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <%int j = 1;
                                                            List<others_saneed> list = Models.saneed.getDataList();
                                                            for (others_saneed e : list) {%>
                                                        <tr>
                                                            <% if (Function.NewClass.getUserTypeFromTable(name_)) {%>
                                                            <td><a href="Edit others.jsp?val=<%=e.getId()%>&val1=<%=form%>">
                                                                    <i class="mdi mdi-pencil me-1"></i>
                                                                </a>
                                                            </td>
                                                            <%}%>
                                                            <td><%=j++%></td>
                                                            <td> <%= e.getDate()%> </td>
                                                            <td> <%= e.getTime()%> </td>
                                                            <td> <%= e.getCustomer_name()%> </td>
                                                            <td> <%= e.getMobile_number()%> </td>
                                                            <td> <%= e.getAlternate_number()%> </td>
                                                            <td> <%= e.getPincode()%> </td>
                                                            <td> <%= e.getLead_complaint_case_number()%> </td>
                                                            <td> <%= e.getAddress()%> </td>
                                                            <td> <%= e.getDescription()%> </td>
                                                            <td> <%= e.getSales_associate_name()%> </td>
                                                            <td> <%= e.getSales_associate_number()%> </td>
                                                            <td> <%= e.getSales_associate_email()%> </td>
                                                            <td> <%= e.getAgent_name()%> </td>
                                                            <td> <%= e.getAspect_id()%> </td>

                                                        </tr>
                                                        <%}%>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>  <!--end preview-->
                                    </div>  <!--end tab-content-->
                                </div>  <!--end card body-->
                            </div>  <!--end card -->
                        </div> <!--end col-->
                    </div>
                    <!-- end row
                     SA need customer Details table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Bad Call Number To Be Blocked</h4></li>
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
                                                <table style="width:100%" id="table">
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     Bad Call to be blocked table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Wants to Work With Asian Paint</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">City</th>
                                                            <th scope="col">State</th>
                                                            <th scope="col">Address</th>
                                                            <th scope="col">Email ID</th>
                                                            <th scope="col">Relocation City</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     wants to work with AP table end 
                </div>  container 
            </div>  container 
    
        </div>  content 
    
         Footer Start 
                    -->    <footer class="footer" style="background-color: #fff;">

                    </footer>
                    <!--end Footer 
               
                   </div>
               
                    <%} else if (form.equals("badcall")) {%>
                    <!-- table start -->
                    <!--                <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Masterstroke Card</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">BP Number</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Dealer Details</th>
                                                                            <th scope="col">TSO Details</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                    <!-- MS card table end -->

                    <!-- table start -->
                    <!--                <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Product Availability</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">Email ID</th>
                                                                            <th scope="col">City</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Product Code</th>
                                                                            <th scope="col">Quantity</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Product Availability table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Cross Business Lead</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">City</th>
                                                                            <th scope="col">State</th>
                                                                            <th scope="col">Query For</th>
                                                                            <th scope="col">Type of Query</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Cross business lead table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Bulk Request</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">City</th>
                                                                            <th scope="col">State</th>
                                                                            <th scope="col">Address</th>
                                                                            <th scope="col">Email ID</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Bulk Request table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Other Concern</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">Email ID</th>
                                                                            <th scope="col">State</th>
                                                                            <th scope="col">City</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Other Concern table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Charges For Dealership</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">Description</th>
                                                                            <th scope="col">Associate Name</th>
                                                                            <th scope="col">Associate Number</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     Charges for dealership table end 
                    
                                     table start 
                                    <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">PIS Request</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">Email ID</th>
                                                                            <th scope="col">Product Name</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                                     PIS Request table end 
                    
                                     table start 
                    -->               <!-- <div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Unable To Connect Tollfree</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">BP number/Dealer Code</th>
                                                                            <th scope="col">Unable To Connect</th>
                                                                            <th scope="col">Reamrks</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                          </div>  end preview
                                                    </div> end tab-content
                                                </div>  end card body
                                            </div>  end card 
                                        </div> end col
                                    </div>-->
                    <!-- end row
                     Unable to connact toll free  table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Suprema Product</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">Email</th>
                                                            <th scope="col">Type of Call</th>
                                                            <th scope="col">Description</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     Suprema product table end 
    
                     table start 
                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">SA Need Customer Details On Mail</h4></li>
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
                                                            <th scope="col">Sr. No.</th>
                                                            <th scope="col">Date</th>
                                                            <th scope="col">Time</th>
                                                            <th scope="col">Customer Name</th>
                                                            <th scope="col">Mobile Number</th>
                                                            <th scope="col">Alternate Number</th>
                                                            <th scope="col">Pincode</th>
                                                            <th scope="col">Lead/Complaint/Case No.</th>
                                                            <th scope="col">Address</th>
                                                            <th scope="col">Description</th>
                                                            <th scope="col">Sales Associate Name</th>
                                                            <th scope="col">Sales Associate Number</th>
                                                            <th scope="col">Sales Associate Email</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <tr>
                                                            <td></td>
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
                     SA need customer Details table end 
    
                     table start 
                    -->                <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Bad Call Number To Be Blocked</h4></li>
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
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <%int k = 1;
                                                            List<others_badcall> list = Models.badcall.getDataList();
                                                            for (others_badcall e : list) {%>
                                                        <tr>
                                                            <% if (Function.NewClass.getUserTypeFromTable(name_)) {%>
                                                            <td><a href="Edit others.jsp?val=<%=e.getId()%>&val1=<%=form%>">
                                                                    <i class="mdi mdi-pencil me-1"></i>
                                                                </a>
                                                            </td>
                                                            <%}%>
                                                            <td><%=k++%></td>
                                                            <td> <%= e.getDate()%> </td>
                                                            <td> <%= e.getTime()%> </td>
                                                            <td> <%= e.getCustomer_name()%> </td>
                                                            <td> <%= e.getMobile_number()%> </td>
                                                            <td> <%= e.getAgent_name()%> </td>
                                                            <td> <%= e.getAspect_id()%> </td>

                                                        </tr>
                                                        <%}%>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>  <!--end preview-->
                                    </div>  <!--end tab-content-->
                                </div>  <!--end card body-->
                            </div>  <!--end card -->
                        </div> <!--end col-->
                    </div><!--
                     end row
                     Bad Call to be blocked table end 
    
                     table start 
                    -->        
                    <!--<div class="row" style="margin-top:5px; background-color: none; ">
                                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                                <li><h4 class="page-title">Wants to Work With Asian Paint</h4></li>
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
                                                                            <th scope="col">Sr. No.</th>
                                                                            <th scope="col">Date</th>
                                                                            <th scope="col">Time</th>
                                                                            <th scope="col">Customer Name</th>
                                                                            <th scope="col">Mobile Number</th>
                                                                            <th scope="col">Alternate Number</th>
                                                                            <th scope="col">Pincode</th>
                                                                            <th scope="col">City</th>
                                                                            <th scope="col">State</th>
                                                                            <th scope="col">Address</th>
                                                                            <th scope="col">Email ID</th>
                                                                            <th scope="col">Relocation City</th>
                                                                            <th scope="col">Agent Name</th>
                                                                            <th scope="col">Aspect ID</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="geeks">
                                                                        <tr>
                                                                            <td></td>
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
                    <!--
                                     end row
                                     wants to work with AP table end 
                                </div>  container 
                            </div>  container 
                    
                        </div>  content 
                    
                         Footer Start 
                    -->    <footer class="footer" style="background-color: #fff;">

                    </footer>
                    <!--end Footer 
               
                   </div>-->

                    <%} else if (form.equals("wantstowork")) {%>

                    <div class="row" style="margin-top:5px; background-color: none; ">
                        <div class="page-title-box" style="background-color:none; margin-bottom:0px; height:60px; margin-top: -20px;">
                            <ul class="list-unstyled topbar-menu float-end mb-0" style="background-color: none; width: 100%; display:flex; justify-content: space-between;">
                                <li><h4 class="page-title">Wants to Work With Asian Paint</h4></li>
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
                                                            <th scope="col">City</th>
                                                            <th scope="col">State</th>
                                                            <th scope="col">Address</th>
                                                            <th scope="col">Email ID</th>
                                                            <th scope="col">Relocation City</th>
                                                            <th scope="col">Agent Name</th>
                                                            <th scope="col">Aspect ID</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="geeks">
                                                        <%int l = 1;
                                                            List<others_wantstowork> list = Models.wantstowork.getDataList();
                                                            for (others_wantstowork e : list) {%>
                                                        <tr>
                                                            <% if (Function.NewClass.getUserTypeFromTable(name_)) {%>
                                                            <td><a href="Edit others.jsp?val=<%=e.getId()%>&val1=<%=form%>">
                                                                    <i class="mdi mdi-pencil me-1"></i>
                                                                </a>
                                                            </td>
                                                            <%}%>
                                                            <td><%=l++%></td>
                                                            <td> <%= e.getDate()%> </td>
                                                            <td> <%= e.getTime()%> </td>
                                                            <td> <%= e.getCustomer_name()%> </td>
                                                            <td> <%= e.getMobile_number()%> </td>
                                                            <td> <%= e.getAlternate_number()%> </td>
                                                            <td> <%= e.getPincode()%> </td>
                                                            <td> <%= e.getCity()%> </td>
                                                            <td> <%= e.getState()%> </td>
                                                            <td> <%= e.getAddress()%> </td>
                                                            <td> <%= e.getEmail_id()%> </td>
                                                            <td> <%= e.getRelocation_city_name()%> </td>
                                                            <td> <%= e.getAgent_name()%> </td>
                                                            <td> <%= e.getAspect_id()%> </td>

                                                        </tr>
                                                        <%}%>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>  <!--end preview-->
                                    </div>  <!--end tab-content-->
                                </div>  <!--end card body-->
                            </div>  <!--end card -->
                        </div> <!--end col-->
                    </div>
                    <!-- end row
                     wants to work with AP table end 
                </div>  container 
            </div>  container 
    
        </div>  content 
    
         Footer Start 
                    -->    <footer class="footer" style="background-color: #fff;">

                    </footer>
                    <!--end Footer 
               
                   </div>
               
                    <% } else {
                        } %>


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

                    <!-- third party js ends -->

                    </body>

                    <%            } else {
                                response.sendRedirect("Login page.jsp?value=");
                            }
                        } catch (NullPointerException e) {
                            response.sendRedirect("Login page.jsp?value=");
                        }%> 


                    </html>