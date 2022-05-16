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
  <link href="css/sendmessage.css" rel="stylesheet">
  <script defer src="js/sendmessage.js"></script>
<title>Show Product of Sellers</title>

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
		<%=session.getId()%>
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
                    <a class="dropdown-item" href="myacc">My Account</a>
                    <a class="dropdown-item" href="#">My Show All s</a>
                    <%
                    String x =(String)session.getAttribute("usrtype");
            		if(x.equals("sellers")){
            			%><a class="dropdown-item" href="addProduct">Add Products</a>
            			<a class="dropdown-item" href="showProduct">Show Products</a>
            			<%
            		}
                    %>
                     <a class="dropdown-item" href="changepass">Change Password</a>
                    <a class="dropdown-item" href="#">Logout</a>
                </div>
                
           
        </div>

    </div>

</header>

 <div class="modal" id="modal">
    <div class="modal-header">
      <div class="title">Send a message</div>
      <button data-close-button class="close-button">&times;</button>
    </div>
    <div class="modal-body" >
      <section class="vh-100" style="background-color: #ffffff;">
        <div class="container h-100">
          <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-xl-9">
      
             
      
              <div class="card" style="border-radius: 15px;">
                <div class="card-body">
      
                  <div class="row align-items-center pt-4 pb-3">
                    <div class="col-md-3 ps-5">
      
                      <h6 class="mb-0">Name*</h6>
      
                    </div>
                    <div class="col-md-9 pe-5">
      
                      <input type="text" class="form-control form-control-lg" required/>
      
                    </div>
                  </div>
      
                  <hr class="mx-n3">
      
                  <div class="row align-items-center py-3">
                    <div class="col-md-3 ps-5">
      
                      <h6 class="mb-0">Email*</h6>
      
                    </div>
                    <div class="col-md-9 pe-5">
      
                      <input type="email" class="form-control form-control-lg" required/>
      
                    </div>
                  </div>
      
                  <hr class="mx-n3">
                 
                  <div class="row align-items-center py-3">
                    <div class="col-md-3 ps-5">
      
                      <h6 class="mb-0">Phone Number*</h6>
      
                    </div>
                    <div class="col-md-9 pe-5">
      
                      <input type="number" class="form-control form-control-lg" required/>
      
                    </div>
                  </div>
      
                  <hr class="mx-n3">
      
                  <div class="row align-items-center py-3">
                    <div class="col-md-3 ps-5">
      
                      <h6 class="mb-0">Message*</h6>
      
                    </div>
                    <div class="col-md-9 pe-5">
      
                      <textarea class="form-control" rows="3" required></textarea>
      
                    </div>
                  </div>
      
                  <hr class="mx-n3">
      
                  <div class="px-5 py-4">
                    <button data-close-button="" class="close-button">Close</button>
                    <button type="submit" class="btn btn-primary btn-lg" onclick="openModal()" >Submit</button>
                  </div>
      
                </div>
              </div>
      
            </div>
          </div>
        </div>
      </section>
    
    </div>
    
  </div>
  
  <div id="overlay"></div>

<%
	String prodnm =(String)request.getParameter("value");
        out.print(prodnm);
	try {

		Connection con;
		PreparedStatement pst;
		ResultSet rs;
out.print("  inside try  ");
		con = DBConnector.getConnected();
		pst = con.prepareStatement("select * from products1 where prod_title=?;");
		pst.setString(1, prodnm);
		rs = pst.executeQuery();
		out.print("query executed");
		while (rs.next()) {
	%>
	<section class="product" id="product">
		<%
		out.println("inside rs");
		
		String productName = rs.getString("prod_title");
		String sellerId= rs.getString("seller_id");
		String productId = rs.getString("prod_id");
		String prod_quantity = rs.getString("prod_quantity");
		int prod_price = rs.getInt("prod_price");
		%>
		
		<div class="box-container">

			<div class="box">
				<div class="icons">
					<a href="#" class="fas fa-heart"></a>

				</div>
				<img src="images/Photos/<%=productName%>.jpg" alt="">
				<h3><%=productName%> </h3>
				<h3><%=sellerId%> </h3>
				<h3><%=productId%></h3>
				<h3><%=prod_quantity%></h3>
				<h3><%=prod_price%></h3>
				
				<div class="quantity">
					<span>quantity : </span> <input type="number" min="1" max="1000"
						value="1"> <span> /kg </span>
				</div>
				<button data-modal-target="#modal">Send Message</button>
  
				<div>
				 
				
				</div>
				
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