<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Farm Market 2</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
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
<body>

<!-- header section starts  -->

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

<!-- home section starts  -->

<section class="home" id="home">

    <div class="image">
        <img src="images/home-img.jpg" alt="">
    </div>

    <div class="content">
        <span>fresh and organic</span>
        <h3>your daily need products</h3>
        <a href="#" class="btn">get started</a>
    </div>

</section>

<!-- home section ends -->

<!-- banner section starts  -->

<section class="banner-container">

    <div class="banner">
        <img src="images/banner-1.jpg" alt="">
        <div class="content">
            <h3>special offer</h3>
            <a href="#" class="btn">check out</a>
        </div>
    </div>

    <div class="banner">
        <img src="images/banner-2.jpg" alt="">
        <div class="content">
            <h3>limited offer</h3>
            <a href="#" class="btn">check out</a>
        </div>
    </div>

</section>

<!-- banner section ends -->

<!-- category section starts  -->

<section class="category" id="category">

    <h1 class="heading">shop by <span>category</span></h1>

    <div class="box-container">

        <div class="box">
            <h3>Vegetables</h3>
           
            <img src="images/category-1.jpg" alt="">
            <a href="showprod?value=vegetable" class="btn">shop now</a>
        </div>
        <div class="box">
            <h3>Beverages</h3>
            
            <img src="images/category-2.jpg" alt="">
            <a href="showprod?value=Beverages" class="btn">shop now</a>
        </div>
        <div class="box">
            <h3>wheat</h3>
            
            <img src="images/wheat-grains-isolated-white-background_88281-1749.jpg" alt="">
            <a href="showprod?value=wheat" class="btn">shop now</a>
        </div>
        <div class="box">
            <h3>Fruites</h3>
            
            <img src="images/category-4.jpg" alt="">
            <a href="showprod?value=Fruits" class="btn">shop now</a>
        </div>

    </div>

</section>
<!-- category section ends -->

<!-- product section starts  -->

<section class="product" id="product">

    <h1 class="heading">latest <span>products</span></h1>

    <div class="box-container">

        <div class="box">
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
            
            </div>
            <img src="images/product-1.jpg" alt="">
            <h3>organic banana</h3>
           
    
            
            <a href="showseller?value=organic banana" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Apricot.jpg" alt="">
            <h3>Apricot</h3>
           
    
            
            <a href="showseller?value=Apricot" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Arrowroot.jpg" alt="">
            <h3>Arrowroot</h3>
           
    
            
            <a href="showseller?value=Arrowroot" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Avocado.jpg" alt="">
            <h3>Avocado</h3>
           
    
            
            <a href="showseller?value=Avocado" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Banana.jpg" alt="">
            <h3>Banana</h3>
           
    
            
            <a href="showseller?value=Banana" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Beans.jpg" alt="">
            <h3>Beans</h3>
           
    
            
            <a href="showseller?value=Beans" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Beetroot -Chakundar.jpg" alt="">
            <h3>Beetroot -Chakundar</h3>
           
    
            
            <a href="showseller?value=Beetroot -Chakundar" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Bell Pepper -Capsicum.jpg" alt="">
            <h3>BellPepper-Capsicum</h3>
           
    
            
            <a href="showseller?value=BellPepper-Capsicum" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Bitter Gourd- Karela.jpg" alt="">
            <h3>Bitter Gourd- Karela</h3>
           
    
            
            <a href="showseller?value=Bitter Gourd- Karela" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Black Pepper.jpg" alt="">
            <h3>Black Pepper</h3>
           
    
            
            <a href="showseller?value=Black Pepper" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Black-eye bean.jpg" alt="">
            <h3>Black-eye bean</h3>
           
    
            
            <a href="showseller?value=Black-eye bean" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Bottle Gourd-Laukee.jpg" alt="">
            <h3>Bottle Gourd-Laukee</h3>
           
    
            
            <a href="showseller?value=Bottle Gourd-Laukee" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Brinjal.jpg" alt="">
            <h3>Brinjal</h3>
           
    
            
            <a href="showseller?value=Brinjal" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Broad bean.jpg" alt="">
            <h3>Broad bean</h3>
           
    
            
            <a href="showseller?value=Broad bean" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Broccoli.jpg" alt="">
            <h3>Broccoli</h3>
           
    
            
            <a href="showseller?value=Broccoli" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Cabbage Pattagobhi.jpg" alt="">
            <h3>Cabbage Pattagobhi</h3>
           
    
            
            <a href="showseller?value=Cabbage Pattagobhi" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Carrot-Gajar.jpg" alt="">
            <h3>Carrot-Gajar</h3>
           
    
            
            <a href="showseller?value=Carrot-Gajar" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Cauliflower-Phool Gobhi.jpg" alt="">
            <h3>Cauliflower</h3>
           
    
            
            <a href="showseller?value=Cauliflower" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Cherry.jpg" alt="">
            <h3>Cherry</h3>
           
    
            
            <a href="showseller?value=Cherry" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Coconut.jpg" alt="">
            <h3>Coconut</h3>
           
    
            
            <a href="showseller?value=Coconut" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Cucumber (Khira).jpg" alt="">
            <h3>Cucumber (Khira)</h3>
           
    
            
            <a href="showseller?value=Cucumber (Khira)" class="btn">add to cart</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Dairy & cheese or substitutes.jpg" alt="">
            <h3>Dairy & cheese </h3>
           
    
            
            <a href="showseller?value=Dairy & cheese" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/DRUMSTICK.jpg" alt="">
            <h3>DRUMSTICK</h3>
           
    
            
            <a href="showseller?value=DRUMSTICK" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/garlic.jpg" alt="">
            <h3>garlic</h3>
           
    
            
            <a href="showseller?value=garlic" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/garlic2.jpg" alt="">
            <h3>garlic2</h3>
           
    
            
            <a href="showseller?value=garlic2" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Ginger.jpg" alt="">
            <h3>Ginger</h3>
           
    
            
            <a href="showseller?value=Ginger" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Grain- wheat -Cereals.jpg" alt="">
            <h3>wheat</h3>
           
    
            
            <a href="showseller?value=wheat" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Grapes.jpg" alt="">
            <h3>Grapes</h3>
           
    
            
            <a href="showseller?value=Grapes" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Grass Broom Raw Material.jpg" alt="">
            <h3>Grass Broom</h3>
           
    
            
            <a href="showseller?value=Grass Broom" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Green chilli.jpg" alt="">
            <h3>Green chilli</h3>
           
    
            
            <a href="showseller?value=Green chilli" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/GREEN PAPAYA.jpg" alt="">
            <h3>GREEN PAPAYA</h3>
           
    
            
            <a href="showseller?value=GREEN PAPAYA" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Guava.jpg" alt="">
            <h3>Guava</h3>
           
    
            
            <a href="showseller?value=Guava" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Kabuli Chana.jpg" alt="">
            <h3>Kabuli Chana</h3>
           
    
            
            <a href="showseller?value=Kabuli Chana" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Kasoori Methi.jpg" alt="">
            <h3>Kasoori Methi</h3>
           
    
            
            <a href="showseller?value=Kasoori Methi" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Kharbuja(Muskmelon).jpg" alt="">
            <h3>Kharbuja(Muskmelon)</h3>
           
    
            
            <a href="showseller?value=Kharbuja(Muskmelon)" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Kharbuja(Muskmelon)2.jpg" alt="">
            <h3>Kharbuja(Muskmelon)2</h3>
           
    
            
            <a href="showseller?value=Kharbuja(Muskmelon)2" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Kinnow(Kinnu).jpg" alt="">
            <h3>Kinnow(Kinnu)</h3>
           
    
            
            <a href="showseller?value=Kinnow(Kinnu)" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/kumato.jpg" alt="">
            <h3>kumato</h3>
           
    
            
            <a href="showseller?value=kumato" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Lemon.jpg" alt="">
            <h3>Lemon</h3>
           
    
            
            <a href="showseller?value=Lemon" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/LITCHE.jpg" alt="">
            <h3>LITCHE</h3>
           
    
            
            <a href="showseller?value=LITCHE" class="btn">Show All </a>
        </div>
        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Mango.jpg" alt="">
            <h3>Mango</h3>
           
    
            
            <a href="showseller?value=Mango" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/mausami.jpg" alt="">
            <h3>mausami</h3>
           
    
            
            <a href="showseller?value=mausami" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Onions.jpg" alt="">
            <h3>Onions</h3>
           
    
            
            <a href="showseller?value=Onions" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Orange.jpg" alt="">
            <h3>Orange</h3>
           
    
            
            <a href="showseller?value=Orange" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/peas.jpg" alt="">
            <h3>peas</h3>
           
    
            
            <a href="showseller?value=peas" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Pineapple (ananas).jpg" alt="">
            <h3>Pineapple (ananas)</h3>
           
    
            
            <a href="showseller?value=Pineapple (ananas)" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/POINTED GOURD.jpg" alt="">
            <h3>POINTED GOURD</h3>
           
    
            
            <a href="showseller?value=POINTED GOURD" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Pomogranates.jpg" alt="">
            <h3>Pomogranates</h3>
           
    
            
            <a href="showseller?value=Pomogranates" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Potato.jpg" alt="">
            <h3>Potato</h3>
           
    
            
            <a href="showseller?value=Potato" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/pumpkin.jpg" alt="">
            <h3>pumpkin</h3>
           
    
            
            <a href="showseller?value=pumpkin" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Raw Peanuts.jpg" alt="">
            <h3>Raw Peanuts</h3>
           
    
            
            <a href="showseller?value=Raw Peanuts" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/reetha.jpg" alt="">
            <h3>reetha</h3>
           
    
            
            <a href="showseller?value=reetha" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Seeds.jpg" alt="">
            <h3>Seeds</h3>
           
    
            
            <a href="showseller?value=Seeds" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Soyabean.jpg" alt="">
            <h3>Soyabean</h3>
           
    
            
            <a href="showseller?value=Soyabean" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Spray Dried Coffee.jpg" alt="">
            <h3>Spray Dried Coffee</h3>
           
    
            
            <a href="showseller?value=Spray Dried Coffee" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Strawberries.jpg" alt="">
            <h3>Strawberries</h3>
           
    
            
            <a href="showseller?value=Strawberries" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Strawberry.jpg" alt="">
            <h3>Strawberry</h3>
           
    
            
            <a href="showseller?value=Strawberry" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Sweet potato.jpg" alt="">
            <h3>Sweet potato</h3>
           
    
            
            <a href="showseller?value=Sweet potato" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Tamarind (imli).jpg" alt="">
            <h3>Tamarind (imli)</h3>
           
    
            
            <a href="showseller?value=Tamarind (imli)" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Tomato.jpg" alt="">
            <h3>Tomato</h3>
           
    
            
            <a  href="showseller?value=Tomato" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Turmeric (Haldi).jpg" alt="">
            <h3>Turmeric (Haldi)</h3>
           
    
            
            <a href="showseller?value=Turmeric (Haldi)" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/urad Dal.jpg" alt="">
            <h3>urad Dal</h3>
           
    
            
            <a href="showseller?value=urad Dal" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/VEG JACK FRUIT.jpg" alt="">
            <h3>VEG JACK FRUIT</h3>
           
    
            
            <a href="showseller?value=VEG JACK FRUIT" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/watermelon.jpg" alt="">
            <h3>watermelon</h3>
           
    
            
            <a href="showseller?value=watermelon" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Winter Melon – पेठा [ Petha.jpg" alt="">
            <h3>Winter Melon- पेठा </h3>
           
    
            
            <a href="#" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Zucchini.jpg" alt="">
            <h3>Zucchini</h3>
           
    
            
            <a href="showseller?value=Zucchini" class="btn">Show All </a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Apricot.jpg" alt="">
            <h3>Apricot</h3>
           
    
            
            <a href="showseller?value=Apricot" class="btn">Show All </a>
        </div>

        <div class="box">
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/product-2.jpg" alt="">
            <h3>organic tomato</h3>
           
    
            
            <a href="showseller?value=organic tomato" class="btn">Show All </a>
        </div>

        <div class="box">
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
             
            </div>
            <img src="images/product-3.jpg" alt="">
            <h3>organic orange</h3>
           
    
            
            <a href="showseller?value=organic orange" class="btn">Show All </a>
        </div>

        <div class="box">
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/product-4.jpg" alt="">
            <h3>natural mild</h3>
           
    
            
            <a href="showseller?value=natural mild" class="btn">Show All </a>
        </div>

        <div class="box">
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/product-5.jpg" alt="">
            <h3>organic grapes</h3>
           
    
            
            <a href="showseller?value=organic grapes" class="btn">add to cart</a>
        </div>

        <div class="box">
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/product-6.jpg" alt="">
            <h3>natural almonts</h3>
           
    
            
            <a href="showseller?value=natural almonts" class="btn">Show All </a>
        </div>

        <div class="box">
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/product-7.jpg" alt="">
            <h3>organic apple</h3>
           
    
            
            <a href="showseller?value=organic apple" class="btn">Show All </a>
        </div>

        <div class="box">
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/product-8.jpg" alt="">
            <h3>natural butter</h3>
           
    
            
            <a href="showseller?value=natural butter" class="btn">Show All </a>
        </div>

        <div class="box">
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/product-9.jpg" alt="">
            <h3>organic carrot</h3>
           
    
            
            <a href="showseller?value=organic carrot" class="btn">Show All </a>
        </div>

    </div>

</section>

<!-- product section ends -->

<!-- deal section starts  -->

<section class="deal" id="deal">

    <div class="content">

        <h3 class="title">deal of the day</h3>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam possimus voluptates commodi laudantium! Doloribus sint voluptatibus quaerat sequi suscipit nulla?</p>

        <div class="count-down">
            <div class="box">
                <h3 id="day">00</h3>
                <span>day</span>
            </div>
            <div class="box">
                <h3 id="hour">00</h3>
                <span>hour</span>
            </div>
            <div class="box">
                <h3 id="minute">00</h3>
                <span>minute</span>
            </div>
            <div class="box">
                <h3 id="second">00</h3>
                <span>second</span>
            </div>
        </div>

        <a href="#" class="btn">check the deal</a>

    </div>

</section>

<!-- deal section ends -->

<!-- contact section starts  -->

<section class="contact" id="contact">

    <h1 class="heading"> <span>contact</span> us </h1>

    <form action="">

        <div class="inputBox">
            <input type="text" placeholder="name">
            <input type="email" placeholder="email">
        </div>

        <div class="inputBox">
            <input type="number" placeholder="number">
            <input type="text" placeholder="subject">
        </div>

        <textarea placeholder="message" name="" id="" cols="30" rows="10"></textarea>

        <input type="submit" value="Show All " class="btn">

    </form>

</section>

<!-- contact section ends -->

<!-- newsletter section starts  -->

<section class="newsletter">

    <h3>subscribe us for latest updates</h3>

    <form action="">
        <input class="box" type="email" placeholder="enter your email">
        <input type="submit" value="subscribe" class="btn">
    </form>

</section>

<!-- newsletter section ends -->

<!-- footer section starts  -->

<section class="footer">

    <div class="box-container">

        <div class="box">
            <a href="#" class="logo"><i class="fas fa-shopping-basket"></i>Farm Market</a>
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ullam culpa sit enim nesciunt rerum laborum illum quam error ut alias!</p>
            <div class="share">
                <a href="#" class="btn fab fa-facebook-f"></a>
                <a href="#" class="btn fab fa-twitter"></a>
                <a href="#" class="btn fab fa-instagram"></a>
                <a href="#" class="btn fab fa-linkedin"></a>
            </div>
        </div>
        
        <div class="box">
            <h3>our location</h3>
            <div class="links">
                <a href="#">india</a>
                
            </div>
        </div>

        <div class="box">
            <h3>quick links</h3>
            <div class="links">
                <a href="#">home</a>
                <a href="#">category</a>
                <a href="#">product</a>
                <a href="#">deal</a>
                <a href="#">contact</a>
            </div>
        </div>

        

    </div>

    
</section>

<!-- footer section ends -->

<!-- custom js file link  -->
<script src="script.js"></script>
    
</body>
</html>