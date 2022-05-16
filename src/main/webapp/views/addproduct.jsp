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
<title>Insert title here</title>
<!-- font awesome cdn link  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
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
<link rel="stylesheet" href="style.css">


<link rel="stylesheet" href="css/style.css">
<script src="js/searchproduct.js" type="text/javascript"
	language="javascript"></script>
<style>
.bcontent {
	margin-top: 10px;
}
</style>

</head>
<body>
<%!
public String productId = "";
%>

	<header>

		<div class="header-1">

			<a href="#" class="logo"><i class="fas fa-shopping-basket"></i>Farm
				Market 2</a>

			<form action="" class="search-box-container">
				<input type="search" id="search-box" placeholder="search here...">
				<label for="search-box" class="fas fa-search"></label>
			</form>

		</div>

		<div class="header-2">

			<div id="menu-bar" class="fas fa-bars"></div>

			<nav class="navbar">
				<a href="#home">home</a> <a href="#category">category</a> <a
					href="#product">product</a> <a href="#deal">deal</a> <a
					href="#contact">contact</a>
			</nav>

			<div class="icons">
				<a href="#" class="fas fa-shopping-cart"></a> <a href="#"
					class="fas fa-heart"></a> <a href="#" class="fas fa-user-circle"
					class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
				</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="#">My Account</a> <a
						class="dropdown-item" href="#">My Orders</a> <a
						class="dropdown-item" href="#">Logout</a>
				</div>


			</div>

		</div>

	</header>
	<div class="container">
		<section class="vh-100" style="background-color: #eee;">
			<div class="container h-100">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<div class="col-lg-12 col-xl-11">
						<div class="card text-black" style="border-radius: 25px;">
							<div class="card-body p-md-5">
								<div class="row justify-content-center">
									<div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
										<%
										try {

											Connection con;
											PreparedStatement pst;
											ResultSet rs;
											//out.print("inside try");
											con = DBConnector.getConnected();
											pst = con.prepareStatement("select * from productlist;");
											//pst.setString(1, prodnm);
											rs = pst.executeQuery();
											//out.print("query executed");
										%>





										<form style="max-width: 600px; margin: auto" method="post" action="appendproduct">
											<h3 class="text-center mb-4 pb-2 text-primary fw-bold">Add
												Product</h3>
											<div class="d-flex flex-row align-items-center mb-4">

												<div class="form-outline flex-fill mb-0">
													<div class="col-md-6 mb-4">
														<label class="form-label" for="form3Example3c">Product</label>
														<select id="prod_title" name="prod_title" class="select">
															<%
															while (rs.next()) {

																out.println("inside rs");

																String productName = rs.getString("prod_name");
																productId = rs.getString("prod_id");
																String prod_quantity = rs.getString("prod_type");
															%>
															<option value="<%=productName%>"><%=productName%></option>
															
															<%
															
															}

															} catch (Exception e) {
															out.print("inside the catch");
															e.printStackTrace();
															}
															%>
														</select>
													</div>
												</div>
											</div>


											<div class="form-group">
												<label for="productquantity">Product Quantity</label> <input
													type="text" class="form-control" id="prod_quantity" name="prod_quantity"
													aria-describedby="emailHelp" placeholder="Product Quantity">

											</div>
											<input type="hidden" name="prod_id" id="prod_id" value="<%=productId %>">
											<div class="form-group">
												<label for="productquantitytype">Product Quantity</label>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio"
														name="prod_quantity_type" id="prod_quantity_type"
														value="kg" /> <label class="form-check-label"
														for="inlineRadio1">kg</label>
												</div>

												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio"
														name="prod_quantity_type" id="prod_quantity_type"
														value="quintal" /> <label class="form-check-label"
														for="inlineRadio2">quintal</label>
												</div>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio"
														name="prod_quantity_type" id="prod_quantity_type"
														value="liter" /> <label class="form-check-label"
														for="inlineRadio2">liter</label>
												</div>


											</div>
											<div class="form-group">
												<label for="productprice">Product Price</label> <input
													type="number" class="form-control"
													id="prod_price" name="prod_price" placeholder="Price">
											</div>
											<div class="form-group">
												<label for="exampleFormControlTextarea1">Description</label>
												<textarea class="form-control"
													id="prod_desc" name="prod_desc" rows="3"></textarea>
											</div>
											<button type="submit" class="btn btn-primary">Submit</button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	</div>
	</section>
</body>
</html>