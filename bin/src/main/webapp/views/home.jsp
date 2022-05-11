<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&family=Ubuntu&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
  />


    <link rel="stylesheet" href="css/style.css">
    <title>Farm Market</title>

</head>
<body>
     

    <!-- navbar started  -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-success">
      <div class="container-fluid">
        <a class="navbar-brand" href="#">Farm Market</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Services</a>
            </li>

            <li class="nav-item">
              <a class="nav-link" href="#">About</a>
            </li>
          </ul>
        </div>

            <div class="topnav-right">
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              
            <li class="nav-item">
              <a class="nav-link" href="login">Login</a>
            </li>
            
          </ul>
        </div>
      </div>
    </nav>
    

    <!-- navbar ended  -->


    <!-- header section  -->

    <header class="header">

      <div class="container h-100">

         <div class="row h-100 align-items-center">

           <div class="col-md-12 text-center">

            <h1 class="animate__animated animate__fadeInUp">Welcome to Farm Market</h1>
            <p class="animate__animated animate__zoomIn" data-wow-delay="500ms">We brings you the best affordable price for your goods.</p>
            <button class="btn btn-primary animate__animated animate__zoomIn">Start</button>


           </div>

         </div>


      </div>






    </header>


    <!-- header section ended  -->

    <!-- message section started  -->

    <section class="message py-5">


      <div class="container text-center">

        <h1>We,ve got what you need! </h1>
        <p>With the help of the Farm Market every farmer will get the fair amount for their goods, without causing any delay and also there is no need to give comission to middle-man </p>
        <button class="btn btn-primary animate__animated animate__fadeInUp wow ">Check it out!</button>




      </div>




    </section>






  <!-- message section ended  -->



  <!-- services section -->

  <section class="services">
    <div class="container text-center py-5">
      <h1>About Our Services</h1>

      <div class="row">
        <div class="col-md-4">
          <!-- first col -->
          <div class="card">
            <div class="card-body">
              <i class="fa fa-cart-plus myicon" ></i>
              <h1>Best Experience</h1>
              <p>Farm market gives you the next generation online farming shopping experience</p>



            </div>
          
          </div>


        </div>
        <div class="col-md-4">
          <!-- second col  -->
          <div class="card">
            <div class="card-body">
              <i class="fa fa-truck myicon" ></i>
              <h1>Remote Connectivity </h1>
              <p>We delivers our services from local places to remote places also</p>



            </div>
          
          </div>



        </div>
        <div class="col-md-4">
          <!-- third col  -->
          <div class="card">
            <div class="card-body">
              <i class="fa fa-group myicon" ></i>
              <h1>24×7 Service</h1>
              <p>We ! remain twenty four hours active for our customers  </p>



            </div>
          
          </div>



        </div>


        
      </div>


    </div>




  </section>












  <!-- services section ended -->




    <!-- code ended -->

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="Javascript/wow.min.js"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
    <script src="Javascript/shet.js"></script>

    <script>
      new WOW().init();
      </script>

</body>
</html>