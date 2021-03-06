<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Set Password</title>
</head>
<script>  
    function matchPassword() {  
      var pw1 = document.getElementById("pass");  
      var pw2 = document.getElementById("pass1");  
      if(pw1 != pw2)  
      {   
        alert("Passwords did not match");  
      } 
    }  
    </script> 
<body>
 <section class="vh-100" style="background-color: #eee;">
        <div class="container h-100">
          <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-lg-12 col-xl-11">
              <div class="card text-black" style="border-radius: 25px;">
                <div class="card-body p-md-5">
                  <div class="row justify-content-center">
                    <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
      
                      <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Set Password</p>
      
        <div class="text-center mt-5"></div>
      
        <form style="max-width:480px;margin:auto; height: 500px;" action="logincust" method="post">
           
            <br>
        <!-- Email input -->
      
        <!-- Password input -->
        <div class="form-outline mb-4">
          <input type="password" id="pass" class="form-control" />
          <label class="form-label" for="pass1">New password</label>
        </div>

        <div class="form-outline mb-4">
            <input type="password" id="pass1" class="form-control" />
            <label class="form-label" for="form2Example2">Comfirm New password</label>
          </div>
      
        <!-- 2 column grid layout for inline styling -->
          
            <div class="form-outline mb-4">
        <!-- Submit button -->
        <button type="button" class="btn btn-primary btn-block mb-4" onclick="matchPassword()">Update Password</button>
       
            <div class="d-flex justify-content-between align-items-center">
              <!-- Checkbox -->
          
             
            </div>  
            </div>
       
      </form>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
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