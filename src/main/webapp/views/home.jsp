<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 

    <!-- Bootstrap CSS 
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&family=Ubuntu&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
  />
  -->
  
    <title>Farm market </title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="style.css">


    <link rel="stylesheet" href="css/style.css">
    <title>Farm Market</title>

</head>
<body>
     

  <header>

    <div class="header-1">

        <a href="#" class="logo"><i class="fas fa-shopping-basket"></i>Farm Market</a>

        <form action="" class="search-box-container">
            <input type="search" id="search-box" placeholder="search here...">
            <label for="search-box" class="fas fa-search"></label>
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
           
                <a class="nav-link" href="login">Login</a>
            
        </div>

    </div>

</header>

<!-- header section ends -->

<!-- home section starts  -->

<section class="home" id="home">

    <div class="image">
        <img src="images/home-img.png" alt="">
    </div>

    <div class="content">
        <span>fresh and organic</span>
        <h3>We brings you the best affordable price for your goods</h3>
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
           
            <img src="images/category-1.png" alt="">
            <a href="#" class="btn">shop now</a>
        </div>
        <div class="box">
            <h3>Beverages</h3>
            
            <img src="images/category-2.png" alt="">
            <a href="#" class="btn">shop now</a>
        </div>
        <div class="box">
            <h3>wheat</h3>
            
            <img src="images/wheat-grains-isolated-white-background_88281-1749.webp" alt="">
            <a href="#" class="btn">shop now</a>
        </div>
        <div class="box">
            <h3>Fruites</h3>
            
            <img src="images/category-4.png" alt="">
            <a href="#" class="btn">shop now</a>
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
            <img src="images/Photos/Apricot.jpg" alt="">
            <h3>Apricot</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Arrowroot.jpg" alt="">
            <h3>Arrowroot</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Avocado.jpg" alt="">
            <h3>Avocado</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Banana.jpg" alt="">
            <h3>Banana</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Beans.jpg" alt="">
            <h3>Beans</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Beetroot -Chakundar.png" alt="">
            <h3>Beetroot -Chakundar</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Bell Pepper -Capsicum.jpeg" alt="">
            <h3>BellPepper-Capsicum</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Bitter Gourd- Karela.jpg" alt="">
            <h3>Bitter Gourd- Karela</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Black Pepper.jpg" alt="">
            <h3>Black Pepper</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Black-eye bean.webp" alt="">
            <h3>Black-eye bean</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Bottle Gourd-Laukee.jpg" alt="">
            <h3>Bottle Gourd-Laukee</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Brinjal.jpg" alt="">
            <h3>Brinjal</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Broad bean.jpg" alt="">
            <h3>Broad bean</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Broccoli.jpg" alt="">
            <h3>Broccoli</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Cabbage Pattagobhi.jpg" alt="">
            <h3>Cabbage Pattagobhi</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Carrot-Gajar.jpg" alt="">
            <h3>Carrot-Gajar</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Cauliflower-Phool Gobhi.jpeg" alt="">
            <h3>Cauliflower</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Cherry.jpg" alt="">
            <h3>Cherry</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Coconut.jpeg" alt="">
            <h3>Coconut</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Cucumber (Khira).jpg" alt="">
            <h3>Cucumber (Khira)</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">add to cart</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Dairy & cheese or substitutes.jpeg" alt="">
            <h3>Dairy & cheese </h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/DRUMSTICK.jpg" alt="">
            <h3>DRUMSTICK</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/garlic.jpg" alt="">
            <h3>garlic</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/garlic2.jpeg" alt="">
            <h3>garlic2</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Ginger.jpg" alt="">
            <h3>Ginger</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Grain- wheat -Cereals.png" alt="">
            <h3>wheat</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Grapes.png" alt="">
            <h3>Grapes</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Grass Broom Raw Material.jpg" alt="">
            <h3>Grass Broom</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Green chilli.jpeg" alt="">
            <h3>Green chilli</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/GREEN PAPAYA.jpg" alt="">
            <h3>GREEN PAPAYA</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Guava.jfif" alt="">
            <h3>Guava</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Kabuli Chana.jpg" alt="">
            <h3>Kabuli Chana</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Kasoori Methi.jpg" alt="">
            <h3>Kasoori Methi</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Kharbuja(Muskmelon).jpg" alt="">
            <h3>Kharbuja(Muskmelon)</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Kharbuja(Muskmelon)2.jpg" alt="">
            <h3>Kharbuja(Muskmelon)2</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Kinnow(Kinnu).jpeg" alt="">
            <h3>Kinnow(Kinnu)</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/kumato.jpg" alt="">
            <h3>kumato</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Lemon.png" alt="">
            <h3>Lemon</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/LITCHE.jpg" alt="">
            <h3>LITCHE</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>
        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Mango.jpeg" alt="">
            <h3>Mango</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/mausami.jpeg" alt="">
            <h3>mausami</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Onions.png" alt="">
            <h3>Onions</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Orange.jpg" alt="">
            <h3>Orange</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/peas.jpg" alt="">
            <h3>peas</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Pineapple (ananas).jpg" alt="">
            <h3>Pineapple (ananas)</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/POINTED GOURD.jpeg" alt="">
            <h3>POINTED GOURD</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Pomogranates.jpg" alt="">
            <h3>Pomogranates</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Potato.jpeg" alt="">
            <h3>Potato</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/pumpkin.jpeg" alt="">
            <h3>pumpkin</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Raw Peanuts.jpg" alt="">
            <h3>Raw Peanuts</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/reetha.jpg" alt="">
            <h3>reetha</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Seeds.jpg" alt="">
            <h3>Seeds</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Soyabean.jpg" alt="">
            <h3>Soyabean</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Spray Dried Coffee.jpg" alt="">
            <h3>Spray Dried Coffee</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Strawberries.jpg" alt="">
            <h3>Strawberries</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Strawberry.jpg" alt="">
            <h3>Strawberry</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Sweet potato.jpeg" alt="">
            <h3>Sweet potato</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Tamarind (imli).png" alt="">
            <h3>Tamarind (imli)</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Tomato.jpeg" alt="">
            <h3>Tomato</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Turmeric (Haldi).jpg" alt="">
            <h3>Turmeric (Haldi)</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/urad Dal.jpg" alt="">
            <h3>urad Dal</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/VEG JACK FRUIT.jpg" alt="">
            <h3>VEG JACK FRUIT</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/watermelon.jpg" alt="">
            <h3>watermelon</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Winter Melon – पेठा [ Petha.jpg" alt="">
            <h3>Winter Melon- पेठा </h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Zucchini.jpg" alt="">
            <h3>Zucchini</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Apricot.jpg" alt="">
            <h3>Apricot</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">Order</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/product-1.png" alt="">
            <h3>organic banana</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">add to cart</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/Photos/Apple.jpg" alt="">
            <h3>Apple</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">add to cart</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/product-2.png" alt="">
            <h3>organic tomato</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">add to cart</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/product-3.png" alt="">
            <h3>organic orange</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">add to cart</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/product-4.png" alt="">
            <h3>natural mild</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">add to cart</a>
        </div>

        <div class="box">
    
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/product-5.png" alt="">
            <h3>organic grapes</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">add to cart</a>
        </div>

        <div class="box">
           
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/product-6.png" alt="">
            <h3>natural almonts</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">add to cart</a>
        </div>

        <div class="box">
           
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/product-7.png" alt="">
            <h3>organic apple</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">add to cart</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/product-8.png" alt="">
            <h3>natural butter</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">add to cart</a>
        </div>

        <div class="box">
            
            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                
            </div>
            <img src="images/product-9.png" alt="">
            <h3>organic carrot</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> RS. 10.50 <span> RS. 13.20 </span> </div>
            <div class="quantity">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
                <span> /kg </span>
            </div>
            <a href="#" class="btn">add to cart</a>
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

        <input type="submit" value="Order" class="btn">

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
            <p>Stay Connected to Farm Market with social media platforms. </p>
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
<script src="js/home.js"></script>
</body>
</html>