<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Weather</title>
<link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="css/openweatherapi.css" />
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
<header>
<div id="man"></div>
    <div class="header-1">

        <a href="#" class="logo"><i class="fas fa-shopping-basket"></i>Farm Market </a>
		Session id:<%=session.getId()%>
		 <div id="google_element"></div>
<script src="http://translate.google.com/translate_a/element.js?cb=loadGoogleTranslate"></script>
<script>
function loadGoogleTranslate(){
    new google.translate.TranslateElement(
        "google_element"
    );
}
</script>
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
            <a target="_blank" href="https://visualize.data.gov.in/?inst=9ef84268-d588-465a-a308-a864a43d0070&embed=1">OGD Instance Data</a>
			<a href="#contact">weather</a>
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
<div>
      <header class="container">
        <h1>OpenWeatherMap.org API</h1>
      </header>
      <nav class="container">
        <div class="row align-items-center py-2">
          <div class="input-group col-sm">
            <span class="input-group-text" id="basic-addon1">Lat</span>
            <input
              type="text"
              class="form-control"
              inputmode="numeric"
              id="latitude"
              placeholder="latitude"
              aria-label="latitude"
              aria-describedby="basic-addon1"
              value="42.98"
            />
          </div>
          <div class="input-group col-sm">
            <span class="input-group-text" id="basic-addon1">Lon</span>
            <input
              type="text"
              class="form-control"
              inputmode="numeric"
              id="longitude"
              placeholder="longitude"
              aria-label="longitude"
              aria-describedby="basic-addon1"
              value="-81.23"
            />
          </div>
        </div>
        <div class="row align-items-center py-2">
          <div class="col-auto me-auto">
            <button id="btnGet" type="button" class="btn btn-primary mb-3">
              Get Weather
            </button>
            <button id="btnCurrent" type="button" class="btn btn-primary mb-3">
              Use Current Location
            </button>
          </div>
        </div>
      </nav>
      <main class="container">
        <h2>Weather</h2>
        <!-- results for weather data -->
        <div class="weather row gx-2">
          <div class="col">
            <div class="card" style="width: 30vw">
              <h5 class="card-title p-2">Date</h5>
              <img
                src="http://openweathermap.org/img/wn/10d@4x.png"
                class="card-img-top"
                alt="Weather description"
              />
              <div class="card-body">
                <h3 class="card-title">Weather Label</h3>
                <p class="card-text">High Temp Low Temp</p>
                <p class="card-text">HighFeels like</p>
                <p class="card-text">Pressure</p>
                <p class="card-text">Humidty</p>
                <p class="card-text">UV Index</p>
                <p class="card-text">Precipitation</p>
                <p class="card-text">Dew Point</p>
                <p class="card-text">Wind speed and direction</p>
                <p class="card-text">Sunrise</p>
                <p class="card-text">Sunset</p>
              </div>
            </div>
          </div>
        </div>
      </main>
      <footer class="container">
        <div class="row align-items-center">
          <div class="col">
            <img
              src="http://openweathermap.org/img/wn/10d.png"
              alt="demo icon"
            />
            <span>10d.png</span>
          </div>
          <div class="col">
            <img
              src="http://openweathermap.org/img/wn/10d@2x.png"
              alt="demo icon"
            />
            <span>10d@2x.png</span>
          </div>
          <div class="col">
            <img
              src="http://openweathermap.org/img/wn/10d@4x.png"
              alt="demo icon"
            />
            <span>10d@4x.png</span>
          </div>
        </div>
      </footer>
    </div>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
      crossorigin="anonymous"
    ></script>
    <script src="js/openweatherapi.js" defer></script>
</body>
</html>