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
<title>Transaction Seller</title>

   <link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"> -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- custom css file link  -->

<!-- font awesome cdn link  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

<!-- custom css file link  -->
<link href="css/sendmessage.css" rel="stylesheet">
<script defer src="js/sendmessage.js"></script>

<link rel="stylesheet" href="css/style.css">
<script src="js/searchproduct.js" type="text/javascript"
	language="javascript"></script>
<style>
.bcontent {
	margin-top: 10px;
}
</style>


</head>
<script>
	function ajax() {
		// (A) GET FORM DATA
		var form = document.getElementById("frm2");
		var data = new FormData(form);

		data.append("name2", document.getElementById("name2").value);
		data.append("message", document.getElementById("message").value);
		data.append("customerid", document.getElementById("customerid").value);
		data.append("sellerid", document.getElementById("sellerid").value);
		data.append("prodid", document.getElementById("prodid").value);
		data.append("productPrice", document.getElementById("productPrice").value);
		data.append("prodQuantity", document.getElementById("prodQuantity").value);
		data.append("prodUnit", document.getElementById("prodUnit").value);
		data.append("prodTitle", document.getElementById("prodTitle").value);
		data.append("paymenttype", document.getElementById("paymenttype").value);
		data.append("orderStatus", document.getElementById("orderStatus").value);
		
		
		
		// (B) AJAX
		var xhr = new XMLHttpRequest();
		xhr.open("POST", "requestorder");
		// What to do when server responds

		xhr.send(data);

		// (C) PREVENT HTML FORM SUBMIT
		return false;
	}
</script>

<body>
<h1>Transaction Seller page</h1>
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
            <a href="home1">home</a>
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
                    <a class="dropdown-item" href="trans">My Orders</a>
                    <%
                    String x =(String)session.getAttribute("usrtype");
            		if(x.equals("sellers")){
            			%><a class="dropdown-item" href="addProduct">Add Products</a>
            			<a class="dropdown-item" href="showProduct">Show Products</a>
            			<%
            		}
                    %>
                     <a class="dropdown-item" href="changepass">Change Password</a>
                    <a class="dropdown-item" href="logout" onclick="alert('I am a popup!')">Logout</a>
                </div>
                
           
        </div>

    </div>

</header>

<!-- header section ends -->

<style>
      .buttons {
width: 50%;
margin: 20 auto;
display: inline;
padding: 16px 32px;
background-color: #7fa46a;
              border: none;
              color: white;
  text-align: center;
  font-size: 16px;
 margin: 4px 86px;
            }

    .action_btn {
width: 40%;
margin: 0=20 auto;
display: inline;}
    
    </style>
    </head>
    <body>
 
        

      

    <div class="buttons">

        <div class="action_btn">
            
    
        <button id="pen" class="action_btn " href="p1" onclick="toggle(this)">Transaction Pendding</button>
        <button id="com" class="action_btn" href="p2" onclick="toggle(this)">Transaction compelted</button>
       
        </div>
    </div>
    <%!String usertype=""; %>
    <%
	String sellerid = (String) session.getAttribute("userid");
	usertype=(String) session.getAttribute("usrtype");
	try {

		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		out.print("  inside try  ");
		con = DBConnector.getConnected();
		pst = con.prepareStatement("select * from orders1 where seller_id=?;");
		pst.setString(1, sellerid);
		rs = pst.executeQuery();
			//	String usertpye=rs.getString("order_status");
	
		out.print("query executed");
				out.println(sellerid+"  "+rs);
		while (rs.next()) {
			
			out.println("y cha andar");
			String prod_id=rs.getString("prod_id");
			String cust_id=rs.getString("cust_id");
			String prod_title=rs.getString("prod_title");
			String prod_desc = rs.getString("message");
			String name=rs.getString("name");
			String prod_quantity = rs.getString("prod_quantity");
			String prod_quantity_type = rs.getString("prod_unit");
			int prod_price = rs.getInt("prod_price");
		
	%>
    <div class="div_screen_contents_frame">
        <div class="page active" id="p1">
        <h1>My Name is Manish</h1>
        <section class="product" id="product">

    <h1 class="heading">Customer : <%=cust_id %> <span>Notification</span></h1>

    <div class="box-container">

        <div class="box">
        <h2 class="heading">Seller Name : <%=name %></h2>
        <h4 align="left" > Description of this product :</h4>
           <h4 align="left" ><%=prod_desc %></h4>
            <img style="float: left; margin: 15px 15px 15px 95px;"src="images/Photos/<%=prod_title %>.jpg" alt="">
            
            
            
		
            <div class="price"> Rs.<%=prod_price%>/ <%=prod_quantity_type %> <span> RS13.20 </span> </div>
            <div class="quantity">
                <span>quantity : <%=prod_quantity %></span>
                <!-- <input type="number" min="1" max="1000" value=""> -->
                <span><%=prod_quantity_type%> </span>
            </div>
            <div class="container">
 <%if(usertype.equals("sellers")){ %>
  <a href="requestorder"><button type="submit" class="btn btn-primary btn-lg" style="margin-left:auto;margin-right:auto;display:block;margin-top:1%;margin-bottom:0%">Accept</button></a>
  <a href="requestorder"><button type="submit" class="btn btn-primary btn-lg" style="margin-left:auto;margin-right:auto;display:block;margin-top:1%;margin-bottom:0%">Decline</button></a>
  <%} %>
 <button type="submit" data-modal-target="#modal" class="btn btn-primary btn-lg" style="margin-left:auto;margin-right:auto;display:block;margin-top:1%;margin-bottom:0%">Send Message</button>
 <button data-modal-target="#modal" name="seller" >Send Message</button>
  
</div>	
 <div class="modal" id="modal">
		<div class="modal-header">
			<div class="title">Send a message</div>
			<button data-close-button class="close-button">&times;</button>
		</div>
		<%! String sellerID=""; %>
		<div class="modal-body">
			<section class="vh-100" style="background-color: #ffffff;">
				<div class="container h-100">
					<div
						class="row d-flex justify-content-center align-items-center h-100">
						<div class="col-xl-9">
							<% sellerID=request.getParameter("seller"); %>
							<form name="frm2" id="frm2" method="post" action=requestorder>
								<input type="hidden" id="customerid" name="customerid"
									value="<%=session.getAttribute("userid")%>"> 
									<%-- <input type="hidden" id="sellerid" name="sellerid" value="<%=sellerId%>"> --%>
									<%-- <input type="hidden" id="sellerid" name="sellerid" value="<%=sellerId%>">  --%>
									<input type="hidden" id="prodid" name="prodid" value="<%=prod_id%>">
									 <input type="hidden" id="prodTitle" name="prodTitle" value="<%=prod_title%>">
								<%-- <input type="hidden" id="productPrice" value="<%=prod_price%>">
								<input type="hidden" id="prodQuantity"
									value="<%=prod_quantity%>">
									
									 
									<input type="hidden"id="prodUnit" value="<%=prod_quantity_type%>"> --%>
									 <input
									type="hidden" id="paymenttype" name="paymenttype" value="COD"> <input
									type="hidden" id="orderStatus" name="orderStatus" value="pending">
								<div class="card" style="border-radius: 15px;">
									<div class="card-body">

						<!-- 				<div class="row align-items-center pt-4 pb-3">
											<div class="col-md-3 ps-5">

												<h6 class="mb-0">Name*</h6>

											</div>
											<div class="col-md-9 pe-5">

												<input type="text" id="name2" name="name2"
													class="form-control form-control-lg" required />

											</div>
										</div> -->
										<label class="form-label" for="form3Example3c">Name</label>
											<input type="text" id="name" name="name"
													class="form-control form-control-lg" required />
								<hr class="mx-n3">
														
											<label class="form-label" for="form3Example3c">Seller id</label>
											<input type="text" id="sellerid" name="sellerid"
													class="form-control form-control-lg" required />
										
										

										

										<div class="form-group">
											<label for="productquantity">Product Quantity</label> <input
												type="text" class="form-control" id="prodQuantity"
												name="prodQuantity" aria-describedby="emailHelp"
												placeholder="Product Quantity">

										</div>
										<input type="hidden" name="prod_id" id="prod_id"
											value="<%=prod_id%>">
										<div class="form-group">
											<label for="productquantitytype">Product Quantity</label>
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio"
													name="prodUnit" id="prodUnit"
													value="kg" /> <label class="form-check-label"
													for="inlineRadio1">kg</label>
											</div>

											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio"
													name="prodUnit" id="prodUnit"
													value="quintal" /> <label class="form-check-label"
													for="inlineRadio2">quintal</label>
											</div>
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio"
													name="prodUnit" id="prodUnit"
													value="liter" /> <label class="form-check-label"
													for="inlineRadio2">liter</label>
											</div>


										</div>
										<div class="form-group">
											<label for="productprice">Product Price</label> <input
												type="number" class="form-control" id="productPrice"
												name="productPrice" placeholder="Price"/>
										</div>


										<div class="row align-items-center py-3">
											<div class="col-md-3 ps-5">

												<h6 class="mb-0">Message*</h6>

											</div>
											<div class="col-md-9 pe-5">

												<textarea class="form-control" id="message" name="message"
													rows="3" required></textarea>

											</div>
										</div>
											
										<hr class="mx-n3">
							
										<div class="px-5 py-4">
											<button data-close-button="" class="close-button">Close</button>
											<button type="submit" class="btn btn-primary btn-lg">Submit</button>
										</div>
										
										

									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</section>

		</div>

	</div>
		<div class="modal" id="modal">
		<div class="modal-header">
			<div class="title">Send a message</div>
			<button data-close-button class="close-button">&times;</button>
		</div>
		<% String sellerID=""; %>
		<div class="modal-body">
			<section class="vh-100" style="background-color: #ffffff;">
				<div class="container h-100">
					<div
						class="row d-flex justify-content-center align-items-center h-100">
						<div class="col-xl-9">
							<% sellerID=request.getParameter("seller"); %>
							<form name="frm2" id="frm2" method="post" action=requestorder>
								<input type="hidden" id="customerid" name="customerid"
									value="<%=session.getAttribute("userid")%>"> 
									<%-- <input type="hidden" id="sellerid" name="sellerid" value="<%=sellerId%>"> --%>
									<%-- <input type="hidden" id="sellerid" name="sellerid" value="<%=sellerId%>">  --%>
									<input type="hidden" id="prodid" name="prodid" value="<%=prod_id%>">
									 <input type="hidden" id="prodTitle" name="prodTitle" value="<%=prod_title%>">
								<%-- <input type="hidden" id="productPrice" value="<%=prod_price%>">
								<input type="hidden" id="prodQuantity"
									value="<%=prod_quantity%>">
									
									 
									<input type="hidden"id="prodUnit" value="<%=prod_quantity_type%>"> --%>
									 <input
									type="hidden" id="paymenttype" name="paymenttype" value="COD"> <input
									type="hidden" id="orderStatus" name="orderStatus" value="pending">
								<div class="card" style="border-radius: 15px;">
									<div class="card-body">

						<!-- 				<div class="row align-items-center pt-4 pb-3">
											<div class="col-md-3 ps-5">

												<h6 class="mb-0">Name*</h6>

											</div>
											<div class="col-md-9 pe-5">

												<input type="text" id="name2" name="name2"
													class="form-control form-control-lg" required />

											</div>
										</div> -->
										<label class="form-label" for="form3Example3c">Name</label>
											<input type="text" id="name" name="name"
													class="form-control form-control-lg" required />
								<hr class="mx-n3">
														
											<label class="form-label" for="form3Example3c">Seller id</label>
											<input type="text" id="sellerid" name="sellerid"
													class="form-control form-control-lg" required />
										
										

										

										<div class="form-group">
											<label for="productquantity">Product Quantity</label> <input
												type="text" class="form-control" id="prodQuantity"
												name="prodQuantity" aria-describedby="emailHelp"
												placeholder="Product Quantity">

										</div>
										<input type="hidden" name="prod_id" id="prod_id"
											value="<%=prod_id%>">
										<div class="form-group">
											<label for="productquantitytype">Product Quantity</label>
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio"
													name="prodUnit" id="prodUnit"
													value="kg" /> <label class="form-check-label"
													for="inlineRadio1">kg</label>
											</div>

											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio"
													name="prodUnit" id="prodUnit"
													value="quintal" /> <label class="form-check-label"
													for="inlineRadio2">quintal</label>
											</div>
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio"
													name="prodUnit" id="prodUnit"
													value="liter" /> <label class="form-check-label"
													for="inlineRadio2">liter</label>
											</div>


										</div>
										<div class="form-group">
											<label for="productprice">Product Price</label> <input
												type="number" class="form-control" id="productPrice"
												name="productPrice" placeholder="Price"/>
										</div>


										<div class="row align-items-center py-3">
											<div class="col-md-3 ps-5">

												<h6 class="mb-0">Message*</h6>

											</div>
											<div class="col-md-9 pe-5">

												<textarea class="form-control" id="message" name="message"
													rows="3" required></textarea>

											</div>
										</div>
											
										<hr class="mx-n3">
							
										<div class="px-5 py-4">
											<button data-close-button="" class="close-button">Close</button>
											<button type="submit" class="btn btn-primary btn-lg">Submit</button>
										</div>
										
										

									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</section>

		</div>

	</div>

	<div id="overlay"></div>
            </div>
            
            </div>
            
           
           
            
            <%
		}
	}
	catch(Exception ex)
	{
		out.println("catch pornhubzzz");
		ex.printStackTrace();
		
	}
            
            
            %>
        
    </div>
    <div class="page" id="p2" >
        <h1>My Name is Gaurav</h1>
    </div>
    </div>
    

</body>
</html>