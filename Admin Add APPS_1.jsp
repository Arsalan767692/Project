<%-- 
    Document   : Admin Add APPS
    Created on : Mar 13, 2024, 2:07:57 AM
    Author     : wfh_khan
--%>
<%        try {
        String user = (String) session.getAttribute("uname");
        String type = (String) session.getAttribute("type");
        System.out.println("type: " + type);
            if (user != null && !user.isEmpty()) {                // Continue with the processing    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.LocalTime" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ include file="included.jsp" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Admin | Add APPS Data</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description">
        <meta content="Coderthemes" name="author">
        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.png">

        <!-- App css -->
        <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css">
        <link href="assets/css/app.min.css" rel="stylesheet" type="text/css" id="light-style">
        <link href="assets/css/app-dark.min.css" rel="stylesheet" type="text/css" id="dark-style">

    </head>


    <body class="loading"
          data-layout-config='{"leftSideBarTheme":"dark","layoutBoxed":false, "leftSidebarCondensed":false, "leftSidebarScrollable":false,"darkMode":false, "showRightSidebarOnStart": true}'>
        <!-- <style>
            ::-webkit-scrollbar{
                width:0px;
            }
            ::-webkit-scrollbar-track{
                background-color: none;
            }
            ::-webkit-scrollbar-thumb{
                background-image: linear-gradient(to bottom, #0f0c29, #302b63, #24243e);
                border-radius: 20px;
            }
        </style> -->
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
                        -->               <!--
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
                <div class="content">
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
                                        <% } %>

                                    </span>
                                </a>
                                <div
                                    class="dropdown-menu dropdown-menu-end dropdown-menu-animated topbar-dropdown-menu profile-dropdown">

                                    <!-- item-->
                                    <a href="ChangePassword.jsp" class="dropdown-item notify-item">
                                        <i class="mdi mdi-key me-1"></i>
                                        <span>Change Password</span>
                                    </a>
                                    <!-- item-->
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

                    <%
                        if (name.equals("Applead")) {
                    %>
                    <!-- Start Content-->
                    <div class="container-fluid" style="background-color:none; height:800px; margin-bottom:100px;">

                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                    <h4 class="page-title">Enter APPS Lead Passing Details Here</h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->


                        <div class="container" style=" background-color: none; height:800px;">
                            <form action="App_leads" style="background:transparent;" id="pcd" method="post">
                                <div class="form first" style="background-color: none;">
                                    <div class="details personal" style="background-color: none;">
                                        <div class="fields">
                                            <div class="input-field">
                                                <label>Year</label>
                                                <input type="text" id="year" placeholder="Enter Year" name="year">
                                            </div>
                                            <div class="input-field">
                                                <label>Month</label>
                                                <input type="month" id="month" placeholder="Enter Month" name="month">
                                            </div>
                                            <div class="input-field">
                                                <label>Lead Date</label>
                                                <input type="date" id="lead_date" placeholder="Enter Date" name="lead_date">
                                            </div>
                                            <script>
                                                // Get the current date
                                                const currentDate = new Date();

                                                // Get the current year
                                                const year = currentDate.getFullYear();
                                                document.getElementById('year').value = year;

                                                // Get the current month in the format 'YYYY-MM'
                                                const month = currentDate.toISOString().substring(0, 7);
                                                document.getElementById('month').value = month;

                                                // Get the current date in the format 'YYYY-MM-DD'
                                                const date = currentDate.toISOString().substring(0, 10);
                                                document.getElementById('lead_date').value = date;
                                            </script>
                                            <div class="input-field">
                                                <label>Segment</label>
                                                <input type="text" placeholder="Enter Segment" name="segment" required>
                                            </div>
                                            <div class="input-field">
                                                <label>Process Name</label>
                                                <input type="text" placeholder="Enter Process Name" name="process_name">
                                            </div>
                                            <div class="input-field">
                                                <label>Customer Name</label>
                                                <input type="text" placeholder="Enter Customer Name" name="custome_name">
                                            </div>
                                            <div class="input-field">
                                                <label>Mobile Number</label>
                                                <input type="text" placeholder="Enter Customer Mobile Number" name="mobile_number" required
                                                       data-toggle="input-mask" data-mask-format="0000000000">
                                            </div>
                                            <div class="input-field">
                                                <label>Site Name</label>
                                                <input type="text" placeholder="Enter Site ID" name="site_name" required>
                                            </div>
                                            <div class="input-field">
                                                <label>Customer Address</label>
                                                <textarea placeholder="Enter Customer Address Here..." name="address"></textarea>
                                            </div>
                                            <div class="input-field">
                                                <label>When Was The Building / Premises Painted Last? (Only For Repainting Cases)</label>
                                                <input type="text" placeholder="Enter Details Here" name="building_last_painted" required>
                                            </div>
                                            <div class="input-field">
                                                <label>Fresh / Repainting</label><br>
                                                <select name="fresh_repainting" required>
                                                    <option>Select Here</option>
                                                    <option value="Fresh">Fresh</option>
                                                    <option value="Repainting">Repainting</option>
                                                </select>
                                            </div>
                                            <div class="input-field">
                                                <label>City</label><br>
                                                <input type="text" placeholder="Enter City Name" name="city">
                                            </div>
                                            <div class="input-field">
                                                <label>Pincode</label>
                                                <input type="text" placeholder="Enter Customer Pincode" name="pincode"
                                                       data-toggle="input-mask" data-mask-format="000000">
                                            </div>
                                            <div class="input-field">
                                                <label>Site Description (Ground+Floors)</label>
                                                <textarea placeholder="Enter Descriptions Here..." name="description" required></textarea>
                                            </div>
                                            <div class="input-field">
                                                <label>State</label>
                                                <select name="state">
                                                    <option>Select State</option>
                                                    <option value="Andhra Pradesh">Andhra Pradesh</option>
                                                    <option value="Andaman and Nicobar Islands">Andaman and Nicobar</option>
                                                    <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                                    <option value="Assam">Assam</option>
                                                    <option value="Bihar">Bihar</option>
                                                    <option value="Chandigarh">Chandigarh</option>
                                                    <option value="Chhattisgarh">Chhattisgarh</option>
                                                    <option value="Dadar and Nagar Haveli">Dadar and Nagar Haveli</option>
                                                    <option value="Daman and Diu">Daman and Diu</option>
                                                    <option value="Delhi">Delhi</option>
                                                    <option value="Lakshadweep">Lakshadweep</option>
                                                    <option value="Puducherry">Puducherry</option>
                                                    <option value="Goa">Goa</option>
                                                    <option value="Gujarat">Gujarat</option>
                                                    <option value="Haryana">Haryana</option>
                                                    <option value="Himachal Pradesh">Himachal Pradesh</option>
                                                    <option value="Jammu and Kashmir">Jammu and Kashmir</option>
                                                    <option value="Jharkhand">Jharkhand</option>
                                                    <option value="Karnataka">Karnataka</option>
                                                    <option value="Kerala">Kerala</option>
                                                    <option value="Madhya Pradesh">Madhya Pradesh</option>
                                                    <option value="Maharashtra">Maharashtra</option>
                                                    <option value="Manipur">Manipur</option>
                                                    <option value="Meghalaya">Meghalaya</option>
                                                    <option value="Mizoram">Mizoram</option>
                                                    <option value="Nagaland">Nagaland</option>
                                                    <option value="Odisha">Odisha</option>
                                                    <option value="Punjab">Punjab</option>
                                                    <option value="Rajasthan">Rajasthan</option>
                                                    <option value="Sikkim">Sikkim</option>
                                                    <option value="Tamil Nadu">Tamil Nadu</option>
                                                    <option value="Telangana">Telangana</option>
                                                    <option value="Tripura">Tripura</option>
                                                    <option value="Uttar Pradesh">Uttar Pradesh</option>
                                                    <option value="Uttarakhand">Uttarakhand</option>
                                                    <option value="West Bengal">West Bengal</option>
                                                </select>
                                            </div>
                                            <div class="input-field">
                                                <label>Agent Name</label>
                                                <input type="text" placeholder="Enter Agent Name" name="agent_name"  value="<%= name_%>"  required>
                                            </div>
                                            <div class="input-field">
                                                <label>Aspect ID</label>
                                                <input type="text" placeholder="Enter Aspect ID" name="aspect_id"  value="<%= Function.NewClass.getInfoByAgentName(name_)%>"  required>
                                            </div>
                                            <div class="input-field">
                                                <label>C4C Lead ID</label>
                                                <input type="text" placeholder="Enter C4C Lead ID" name="c4c_lead">
                                            </div>
                                            <div class="input-field">
                                                <label>Tagging Date</label>
                                                <input type="date" placeholder="Enter Tagging Date" name="tagging_date">
                                            </div>
                                            <div class="input-field">
                                                <label>CSS Reamrks</label>
                                                <textarea placeholder="Enter CSS Reamrks Here..." name="css_remarks"></textarea>
                                            </div>
                                            <div class="input-field">
                                                <label>APPS Team Reamrks</label>
                                                <textarea placeholder="Enter APPS Team Reamrks Here..." name="apps_team_remarks"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <button class="nextBtn">
                                        <span class="btnText">Save <i class="mdi mdi-content-save"></i></span>

                                    </button>
                                </div>
                            </form>
                        </div>
                        <!-- end col -->
                        <!-- end row -->
                    </div> <!--container-->
                    <!-- end of APPS Lead form -->
                    <!--                 Start Content
                                    <div class="container-fluid" style="background-color:none; height:500px; margin-bottom:100px;">
                    
                                         start page title 
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="page-title-box">
                                                    <h4 class="page-title">Enter APPS Complaints Details Here</h4>
                                                </div>
                                            </div>
                                        </div>
                                         end page title 
                    
                    
                                        <div class="container" style=" background-color: none; height:500px;">
                                            <form action="Admin APPS.html" style="background:transparent;" id="pcd">
                                                <div class="form first" style="background-color: none;">
                                                    <div class="details personal" style="background-color: none;">
                                                        <div class="fields">
                                                            <div class="input-field">
                                                                <label>Date</label>
                                                                <input type="date" placeholder="Enter Date" name="date" required>
                                                            </div>
                                                            <div class="input-field">
                                                                <label>Time</label>
                                                                <input type="time" placeholder="Enter Time" name="time" required>
                                                            </div>
                                                            <div class="input-field">
                                                                <label>Customer Name</label>
                                                                <input type="text" placeholder="Enter Customer Name" name="custome_name" required>
                                                            </div>
                    
                                                            <div class="input-field">
                                                                <label>Mobile Number</label>
                                                                <input type="text" placeholder="Enter Customer Mobile Number" name="mobile_number" required
                                                                    data-toggle="input-mask" data-mask-format="0000000000">
                                                            </div>
                                                            <div class="input-field">
                                                                <label>Alternate Number</label>
                                                                <input type="text" placeholder="Enter Customer Alternate Number" name="alternate_number" required
                                                                    data-toggle="input-mask" data-mask-format="0000000000">
                                                            </div>
                                                            <div class="input-field">
                                                                <label>Pincode</label>
                                                                <input type="text" placeholder="Enter Customer Pincode" name="pincode" required
                                                                    data-toggle="input-mask" data-mask-format="000000">
                                                            </div>
                                                            <div class="input-field">
                                                                <label>Email ID</label>
                                                                <input type="mail" placeholder="Enter Email ID" name="email_id" required>
                                                            </div>
                                                            <div class="input-field">
                                                                <label>City</label>
                                                                <input type="text" placeholder="Enter City" name="city" required>
                                                            </div>
                                                            <div class="input-field">
                                                                <label>Description</label>
                                                                <textarea placeholder="Enter Descriptions Here..." name="description" required></textarea>
                                                            </div>
                                                            <div class="input-field">
                                                                <label>Agent Name</label>
                                                                <input type="text" placeholder="Enter Agent Name" name="agent_name" required>
                                                            </div>
                                                            <div class="input-field">
                                                                <label>Team</label>
                                                                <input type="text" placeholder="Enter Aspect ID" name="team" required>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <button class="nextBtn">
                                                        <span class="btnText">Save <i class="mdi mdi-content-save"></i></span>
                    
                                                    </button>
                                                </div>
                                            </form>
                                        </div>
                                         end col 
                                         end row 
                                    </div>  container 
                                     End of APPS complaints form -->

                </div> <!-- content -->
                <%} else if (name.equals("Appcomplaints")) {%>
                <!--  Start Content
                                <div class="container-fluid" style="background-color:none; height:600px; margin-bottom:100px;">
                
                                     start page title 
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="page-title-box">
                                                <h4 class="page-title">Enter APPS Lead Passing Details Here</h4>
                                            </div>
                                        </div>
                                    </div>
                                     end page title 
                
                
                                    <div class="container" style=" background-color: none; height:600px;">
                                        <form action="Admin APPS.html" style="background:transparent;" id="pcd">
                                            <div class="form first" style="background-color: none;">
                                                <div class="details personal" style="background-color: none;">
                                                    <div class="fields">
                                                        <div class="input-field">
                                                            <label>Date</label>
                                                            <input type="date" placeholder="Enter Date" name="date" required>
                                                        </div>
                                                        <div class="input-field">
                                                            <label>Time</label>
                                                            <input type="time" placeholder="Enter Time" name="time" required>
                                                        </div>
                                                        <div class="input-field">
                                                            <label>Customer Name</label>
                                                            <input type="text" placeholder="Enter Customer Name" name="custome_name" required>
                                                        </div>
                
                                                        <div class="input-field">
                                                            <label>Mobile Number</label>
                                                            <input type="text" placeholder="Enter Customer Mobile Number" name="mobile_number" required
                                                                data-toggle="input-mask" data-mask-format="0000000000">
                                                        </div>
                                                        <div class="input-field">
                                                            <label>Alternate Number</label>
                                                            <input type="text" placeholder="Enter Customer Alternate Number" name="alternate_number" required
                                                                data-toggle="input-mask" data-mask-format="0000000000">
                                                        </div>
                                                        <div class="input-field">
                                                            <label>Pincode</label>
                                                            <input type="text" placeholder="Enter Customer Pincode" name="pincode" required
                                                                data-toggle="input-mask" data-mask-format="000000">
                                                        </div>
                                                        <div class="input-field">
                                                            <label>Site Name</label>
                                                            <input type="text" placeholder="Enter Site ID" name="site_name" required>
                                                        </div>
                                                        <div class="input-field">
                                                            <label>Customer Address</label>
                                                            <textarea placeholder="Enter Customer Address Here..." name="address" required></textarea>
                                                        </div>
                                                        <div class="input-field">
                                                            <label>When Was The Building Last Painted?</label>
                                                            <input type="text" placeholder="Enter Details Here" name="building_last_painted" required>
                                                        </div>
                                                        <div class="input-field">
                                                            <label>Fresh / Repainting</label>
                                                            <select name="fresh_repainting" required>
                                                                <option>Select Here</option>
                                                                <option value="Fresh">Fresh</option>
                                                                <option value="Repainting">Repainting</option>
                                                            </select>
                                                        </div>
                                                        <div class="input-field">
                                                            <label>City</label>
                                                            <input type="text" placeholder="Enter City Name" name="city" required>
                                                        </div>
                                                        <div class="input-field">
                                                            <label>State</label>
                                                            <select name="state" required>
                                                                <option>Select State</option>
                                                                <option value="Andhra Pradesh">Andhra Pradesh</option>
                                                                <option value="Andaman and Nicobar Islands">Andaman and Nicobar</option>
                                                                <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                                                <option value="Assam">Assam</option>
                                                                <option value="Bihar">Bihar</option>
                                                                <option value="Chandigarh">Chandigarh</option>
                                                                <option value="Chhattisgarh">Chhattisgarh</option>
                                                                <option value="Dadar and Nagar Haveli">Dadar and Nagar Haveli</option>
                                                                <option value="Daman and Diu">Daman and Diu</option>
                                                                <option value="Delhi">Delhi</option>
                                                                <option value="Lakshadweep">Lakshadweep</option>
                                                                <option value="Puducherry">Puducherry</option>
                                                                <option value="Goa">Goa</option>
                                                                <option value="Gujarat">Gujarat</option>
                                                                <option value="Haryana">Haryana</option>
                                                                <option value="Himachal Pradesh">Himachal Pradesh</option>
                                                                <option value="Jammu and Kashmir">Jammu and Kashmir</option>
                                                                <option value="Jharkhand">Jharkhand</option>
                                                                <option value="Karnataka">Karnataka</option>
                                                                <option value="Kerala">Kerala</option>
                                                                <option value="Madhya Pradesh">Madhya Pradesh</option>
                                                                <option value="Maharashtra">Maharashtra</option>
                                                                <option value="Manipur">Manipur</option>
                                                                <option value="Meghalaya">Meghalaya</option>
                                                                <option value="Mizoram">Mizoram</option>
                                                                <option value="Nagaland">Nagaland</option>
                                                                <option value="Odisha">Odisha</option>
                                                                <option value="Punjab">Punjab</option>
                                                                <option value="Rajasthan">Rajasthan</option>
                                                                <option value="Sikkim">Sikkim</option>
                                                                <option value="Tamil Nadu">Tamil Nadu</option>
                                                                <option value="Telangana">Telangana</option>
                                                                <option value="Tripura">Tripura</option>
                                                                <option value="Uttar Pradesh">Uttar Pradesh</option>
                                                                <option value="Uttarakhand">Uttarakhand</option>
                                                                <option value="West Bengal">West Bengal</option>
                                                            </select>
                                                        </div>
                                                        <div class="input-field">
                                                            <label>Stage</label>
                                                            <select name="stage" required>
                                                                <option>Select Call Type</option>
                                                                <option value="Cold + 6 Months">Cold + 6 Months</option>
                                                                <option value="Hot < 3 Months">Hot < 3 Months</option>
                                                                <option value="Warm 3-6 Months">Warm 3-6 Months</option>
                                                            </select>
                                                        </div>
                                                        <div class="input-field">
                                                            <label>Agent Name</label>
                                                            <input type="text" placeholder="Enter Agent Name" name="agent_name" required>
                                                        </div>
                                                        <div class="input-field">
                                                            <label>Aspect ID</label>
                                                            <input type="text" placeholder="Enter Aspect ID" name="aspect_id" required>
                                                        </div>
                                                    </div>
                                                </div>
                                                <button class="nextBtn">
                                                    <span class="btnText">Save <i class="mdi mdi-content-save"></i></span>
                
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                     end col 
                                     end row 
                                </div> container
                                 end of smartcare call back form -->
                <!-- Start Content-->
                <div class="container-fluid" style="background-color:none; height:500px; margin-bottom:100px;">

                    <!-- start page title -->
                    <div class="row">
                        <div class="col-12">
                            <div class="page-title-box">
                                <h4 class="page-title">Enter APPS Complaints Details Here</h4>
                            </div>
                        </div>
                    </div>
                    <!-- end page title -->


                    <div class="container" style=" background-color: none; height:500px;">
                        <form action="App_Complain" method="post" style="background:transparent;" id="pcd">
                            <div class="form first" style="background-color: none;">
                                <div class="details personal" style="background-color: none;">
                                    <div class="fields">
                                        <div class="input-field">
                                            <label>Date</label>
                                            <input type="date" placeholder="Enter Date" name="date" value="<%= java.time.LocalDate.now()%>" >
                                        </div>
                                        <div class="input-field">
                                            <label>Time</label>
                                            <input type="time" placeholder="Enter Time" name="time" value="<%= java.time.LocalTime.now().format(java.time.format.DateTimeFormatter.ofPattern("HH:mm"))%>" >
                                        </div>
                                        <div class="input-field">
                                            <label>Customer Name</label>
                                            <input type="text" placeholder="Enter Customer Name" name="custome_name" required>
                                        </div>

                                        <div class="input-field">
                                            <label>Mobile Number</label>
                                            <input type="text" type="tel" pattern="\d{10}" title="Please enter a 10-digit mobile number" placeholder="Enter Customer Mobile Number" name="mobile_number" required
                                                   data-toggle="input-mask" data-mask-format="0000000000">
                                        </div>
                                        <div class="input-field">
                                            <label>Alternate Number</label>
                                            <input type="text" type="tel" pattern="\d{10}" title="Please enter a 10-digit mobile number" placeholder="Enter Customer Alternate Number" name="alternate_number" 
                                                   data-toggle="input-mask" data-mask-format="0000000000">
                                        </div>
                                        <div class="input-field">
                                            <label>Pincode</label>
                                            <input type="text" pattern="[0-9]{6}" title="Please enter a six-digit pin code" placeholder="Enter Customer Pincode" name="pincode" required
                                                   data-toggle="input-mask" data-mask-format="000000">
                                        </div>
                                        <div class="input-field">
                                            <label>Email ID</label>
                                            <input type="mail" placeholder="Enter Email ID" name="email_id">
                                        </div>
                                        <div class="input-field">
                                            <label>City</label>
                                            <input type="text" placeholder="Enter City" name="city" >
                                        </div>
                                        <div class="input-field">
                                            <label>Description</label>
                                            <textarea placeholder="Enter Descriptions Here..." name="description" required></textarea>
                                        </div>
                                        <div class="input-field">
                                            <label>Agent Name</label>
                                            <input type="text" placeholder="Enter Agent Name" value="<%= name_%>" name="agent_name" required>
                                        </div>
                                        <div class="input-field">
                                            <label>Team</label>
                                            <input type="text" placeholder="Enter Aspect ID" name="team" value="<%= Function.NewClass.getInfoByAgentName(name_)%>" readonly>
                                        </div>
                                    </div>
                                </div>
                                <button class="nextBtn" name="save" value="admin" id="name">
                                    <span class="btnText">Save <i class="mdi mdi-content-save"></i></span>

                                </button>
                            </div>
                        </form>
                    </div>
                    <!-- end col -->
                    <!-- end row -->
                </div> <!-- container -->
                <!-- End of APPS complaints form -->

            </div> <!-- content -->
            <%} else if (name.equals("Flooring")) {%>
            <!-- Start Content-->
            <div class="container-fluid" style="background-color:none; height:600px; margin-bottom:100px;">

                <!-- start page title -->
                <div class="row">
                    <div class="col-12">
                        <div class="page-title-box">
                            <h4 class="page-title">Enter APPS Flooring Enquiry Details Here</h4>
                        </div>
                    </div>
                </div>
                <!-- end page title -->
                <div class="container" style=" background-color: none; height:600px;">
                    <form action="App_flooring" method="post" style="background:transparent;" id="pcd">
                        <div class="form first" style="background-color: none;">
                            <div class="details personal" style="background-color: none;">
                                <div class="fields">
                                    <div class="input-field">
                                        <label>Date</label>
                                        <input type="date" placeholder="Enter Date" name="date" value="<%= java.time.LocalDate.now()%>">
                                    </div>
                                    <div class="input-field">
                                        <label>Time</label>
                                        <input type="time" placeholder="Enter Time" name="time" value="<%= java.time.LocalTime.now().format(java.time.format.DateTimeFormatter.ofPattern("HH:mm"))%>">
                                    </div>
                                    <div class="input-field">
                                        <label>Personnel Name</label>
                                        <input type="text" placeholder="Enter Name" name="custome_name" >
                                    </div>
                                    <div class="input-field">
                                        <label>Designation</label>
                                        <input type="text" placeholder="Enter Designation" name="designation" >
                                    </div>
                                    <div class="input-field">
                                        <label>Firm / Factory / Industry Name</label>
                                        <input type="text" placeholder="Enter Firm / Factory / Industry Name" name="firm_name" >
                                    </div>
                                    <div class="input-field">
                                        <label>Location (City / Town)</label>
                                        <input type="text" placeholder="Enter Location" name="location" >
                                    </div>
                                    <div class="input-field">
                                        <label>Contact Number</label>
                                        <input type="text" placeholder="Enter Contact Number" name="mobile_number"
                                               data-toggle="input-mask" data-mask-format="0000000000">
                                    </div>
                                    <div class="input-field">
                                        <label>Email ID</label>
                                        <input type="mail" placeholder="Enter Email ID" name="email_id" >
                                    </div>
                                    <div class="input-field">
                                        <label>Category (FL/WP/Repair/Admix/Paint/Others)</label>
                                        <input type="text" placeholder="Enter Category" name="category" >
                                    </div>
                                    <div class="input-field">
                                        <label>Problem To Be Captured Verbatim</label>
                                        <input type="text" placeholder="Enter Here" name="problem" >
                                    </div>
                                    <div class="input-field">
                                        <label>SOA (Reference - Dealer Name / Other)</label>
                                        <input type="text" placeholder="Enter SOA" name="soa" >
                                    </div>
                                    <div class="input-field">
                                        <label>Remarks</label>
                                        <textarea placeholder="Enter Remarks Here..." name="description" ></textarea>
                                    </div>
                                    <div class="input-field">
                                        <label>Agent Name</label>
                                        <input type="text" placeholder="Enter Agent Name" name="agent_name" value="<%= name_%>" required readonly>
                                    </div>
                                    <div class="input-field">
                                        <label>Aspect ID</label>
                                        <input type="text" placeholder="Enter Aspect ID" name="aspect_id" value="<%= Function.NewClass.getInfoByAgentName(name_)%>" required readonly>
                                    </div>
                                </div>
                            </div>
                            <button class="nextBtn">
                                <span class="btnText">Save <i class="mdi mdi-content-save"></i></span>

                            </button>
                        </div>
                    </form>
                </div>
                <!-- end col -->
                <!-- end row -->
            </div> <!-- container -->
            <!-- End of APPS Flooring Enquiry form -->
        </div> <!-- content -->
        <%} else {

            }%>
        <!-- Footer Start -->
        <footer class="footer" style="background-color:#fff">

        </footer>
        <!-- end Footer -->

    </div>

    <!-- ============================================================== -->
    <!-- End Page content -->
    <!-- ============================================================== -->


</div>
<!-- END wrapper -->

<!-- bundle -->
<script src="assets/js/vendor.min.js"></script>
<script src="assets/js/app.min.js"></script>

<!-- Typehead -->
<script src="assets/js/vendor/handlebars.min.js"></script>
<script src="assets/js/vendor/typeahead.bundle.min.js"></script>

<!-- Demo -->
<script src="assets/js/pages/demo.typehead.js"></script>

<!-- Timepicker -->
<script src="assets/js/pages/demo.timepicker.js"></script>

</body>
<%            } else {
            response.sendRedirect("Login page.jsp?value=");
        }
    } catch (NullPointerException e) {
        response.sendRedirect("Login page.jsp?value=");
    }%> 



</html>