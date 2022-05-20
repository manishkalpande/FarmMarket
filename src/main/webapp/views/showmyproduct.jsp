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
 <script type="text/javascript">
function ajax1() {
  // (A) GET FORM DATA
  var form = document.getElementById("frm1");
  var data = new FormData(form);
 	
  data.append("prod_id",document.getElementById("prodid").value);
  data.append("seller_id",document.getElementById("sellerid").value);
  // (B) AJAX
  var xhr = new XMLHttpRequest();
  xhr.open("POST", "deletemyprod");
  // What to do when server responds
 
  xhr.send(data);
 
  // (C) PREVENT HTML FORM SUBMIT
  return false;
}
</script>
<body>

<header>
<div id="man"></div>
    <div class="header-1">

        <a href="#" class="logo"><i class="fas fa-shopping-basket"></i>Farm Market </a>
		<%=session.getId()%>
        <form action="searchprod" class="search-box-container" method="post" >
            <input type="search" id="search-box" name="search-box" placeholder="search here..." >
            <label for="search-box" class="fas fa-search" ></label>
           
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
            			<a class="dropdown-item" href="">Show Products</a>
            			<%
            		}
                    %>
                     <a class="dropdown-item" href="changepass">Change Password</a>
                    <a class="dropdown-item" href="#">Logout</a>
                </div>
                
           
        </div>

    </div>

</header>
									
  <section class="h-100 gradient-custom">
        <div class="container py-5">
          <div class="row d-flex justify-content-center my-4">
            <div class="col-md-8">
              <div class="card mb-4">
                <div class="card-header py-3">
                <%
										try {
											String y =(String) session.getAttribute("userid");
											out.println(y);
											Connection con;
											PreparedStatement pst;
											ResultSet rs;
											out.print("inside try");
											con = DBConnector.getConnected();
											pst = con.prepareStatement("select * from products1 where seller_id=?;");
													pst.setString(1, y);
										
											rs = pst.executeQuery();
											out.print("query executed");
											while(rs.next())
											{
												out.println("y cha andar");
											String prod_id=rs.getString("prod_id");
											String seller_id=rs.getString("seller_id");
											String prod_title=rs.getString("prod_title");
											String prod_desc = rs.getString("prod_desc");
											String prod_quantity = rs.getString("prod_quantity");
											String prod_quantity_type = rs.getString("prod_quantity_type");
											int prod_price = rs.getInt("prod_price");
											out.print(prod_title);
										%>
                  <h5 class="mb-0"><%=prod_title %></h5>
                </div>
                <form name="frm1" id="frm1" onsubmit="return ajax1()">
                <div class="card-body">
                  <!-- Single item -->
                  <div class="row">
                    <div class="col-lg-3 col-md-12 mb-4 mb-lg-0">
                      <!-- Image -->
                      <div class="bg-image hover-overlay hover-zoom ripple rounded" data-mdb-ripple-color="light">
                        <img src="images/Photos/<%=prod_title %>.jpg"
                          class="w-100" alt="Blue Jeans Jacket" />
                        
                      </div>
                      <!-- Image -->
                    </div>
      					<input type="hidden" name="prodid" id="prodid" value="<%=prod_id%>">
      					<input type="hidden" name="sellerid" id="sellerid" value="<%=seller_id%>">
                    <div class="col-lg-5 col-md-6 mb-4 mb-lg-0">
                      <!-- Data -->
                      <p><strong>Product Title <%=prod_title %></strong></p>
                      <p>Color: blue</p>
                      <p>Description : <%=prod_desc %></p>
                      <button type="submit" class="btn btn-primary btn-sm me-1 mb-2" data-mdb-toggle="tooltip"
                        title="Remove item" >
                        <i class="fas fa-trash"></i>
                      </button>
                   
                      <!-- Data -->
                    </div>
      
                    <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                      <!-- Quantity -->
                      <div class="d-flex mb-4" style="max-width: 300px">
                        <button class="btn btn-primary px-3 me-2"
                          onclick="this.parentNode.querySelector('input[type=number]').stepDown()">
                          <i class="fas fa-minus"></i>
                        </button>
      
                        <div class="form-outline">
                          <input id="form1" min="0" name="quantity" type="number" value="<%=prod_quantity %>" class="form-control" />
                          <label class="form-label" for="form1">Quantity type: <%=prod_quantity_type%></label>
                        </div>
      
                        <button class="btn btn-primary px-3 ms-2"
                          onclick="this.parentNode.querySelector('input[type=number]').stepUp()">
                          <i class="fas fa-plus"></i>
                        </button>
                      </div>
                      <!-- Quantity -->
      
                      <!-- Price -->
                      <p class="text-start text-md-center">
                        <strong>Price <%=prod_price %></strong>
                      </p>
                         <% 
		}
										}
											catch(Exception ex){
												ex.getStackTrace();
											}
      %>
                      <!-- Price -->
                     
                    </div>
                  </div>
                   </form>
                  <!-- Single item -->
      
                  <hr class="my-4" />
   
                 
        </div>
             </div>
             </div>
              </div>
            </div>
        </section>
</body>
</html>