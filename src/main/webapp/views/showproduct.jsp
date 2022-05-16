<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%@page import="com.farmMarket.farmMarket.mybeans.*"%>
<%@ page import="java.io.*"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Product</title>
 <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <!-- custom css file link  -->
    
    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="style.css">


    <link rel="stylesheet" href="css/style.css">
    <script src="js/searchproduct.js" type="text/javascript" language="javascript"></script>
    <style>
        .bcontent {
            margin-top: 10px;
        }
    </style>
</head>
<body>
<header>
<div id="man"></div>
    <div class="header-1">

        <a href="#" class="logo"><i class="fas fa-shopping-basket"></i>Farm Market </a>

        <form action="searchprod" class="search-box-container" method="post">
            <input type="search" id="search-box" name="search-box" placeholder="search here..." >
            <label for="search-box" class="fas fa-search" ></label>
            <input type="submit" value="search">
        </form>

    </div>

    <div class="header-2">

        <div id="menu-bar" class="fas fa-bars"></div>

        <nav class="navbar">
            <a href="#home">home</a>
            <a href="#category">category</a>
            <a href="#product">product</a>
            <a href="#deal">deal</a>
            <a href="#contact">contact</a>
        </nav>

        <div class="icons">
            <a href="#" class="fas fa-shopping-cart"></a>
            <a href="#" class="fas fa-heart"></a>
    
                <a href="#"class="fas fa-user-circle" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">  </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="#">My Account</a>
                    <a class="dropdown-item" href="#">My Orders</a>
                     <a class="dropdown-item" href="changepass">Change Password</a>
                    <a class="dropdown-item" href="#">Logout</a>
                </div>
                
           
        </div>

    </div>

</header>

<%
	String prodnm =(String)request.getParameter("value");
        
	try {

		Connection con;
		PreparedStatement pst;
		ResultSet rs;

		con = DBConnector.getConnected();
		pst = con.prepareStatement("select * from productList where prod_type=?;");
		pst.setString(1, prodnm);
		rs = pst.executeQuery();

		while (rs.next()) {
	%>
	<section class="product" id="product">
		<%
		String productName = rs.getString("prod_name");
		String productId = rs.getString("prod_id");
		%>
		
		<div class="box-container">

			<div class="box">
				<div class="icons">
					<a href="#" class="fas fa-heart"></a>

				</div>
				<img src="images/Photos/<%=productName%>.jpg" alt="">
				<h3><%=productName%></h3>
				<div class="quantity">
					<span>quantity : </span> <input type="number" min="1" max="1000"
						value="1"> <span> /kg </span>
				</div>
				<a href="#" class="btn">Order</a>
			</div>
			</div>
	</section>

	<%
	}

	} catch (Exception e) {
	out.print("inside the catch");
	e.printStackTrace();
	}
	%>


</body>
</html>