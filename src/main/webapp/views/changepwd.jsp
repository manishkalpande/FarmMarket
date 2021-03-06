<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Change password</title>
  </head>
  <script>  
 function checkPassword(form) {
     password1 = form.newpass.value;
     password2 = form.pass1.value;
     console.log(password1);
     console.log(password2);
     // If password not entered
     if (password1 == '')
         alert ("Please enter Password");
           
     // If confirm password not entered
     else if (password2 == '')
         alert ("Please enter confirm password");
           
     // If Not same return False.    
     else if (password1 != password2) {
         alert ("\nPassword did not match: Please try again...")
         return false;
     }

     // If same return True.
     else{
         alert("Password Match: Welcome to GeeksforGeeks!")
         return true;
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
      
                      <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Change Password</p>
      
        <div class="text-center mt-5"></div>
      
        <form style="max-width:480px;margin:auto; height: 500px;" onsubmit="return checkPassword()" method="post" action="changepassword">
           
            <br>
        <!-- Email input -->
        <div class="form-outline mb-4">
          <input type="password" id="passwd" name="passwd" class="form-control" />
          <label class="form-label" for="form2Example1">Current password</label>
        </div>
      
        <!-- Password input -->
        <div class="form-outline mb-4">
          <input type="password" id="newpass" name="newpass" class="form-control" />
          <label class="form-label" for="pass1">New password</label>
        </div>

        <div class="form-outline mb-4">
            <input type="password" id="pass1" name="pass1" class="form-control" />
            <label class="form-label" for="form2Example2">Comfirm New password</label>
          </div>
      
        <!-- 2 column grid layout for inline styling -->
        <div class="row mb-4">
          <div class="col d-flex justify-content-center">
            <!-- Checkbox -->
            
      
          
            <div class="form-outline mb-4">
        <!-- Submit button -->
        <button type="submit" class="btn btn-primary btn-block mb-4" >Update Password</button>
        <button type="button" class="btn btn-primary btn-block mb-4" style="background-color: rgb(220, 215, 215); border-color: rgb(93, 90, 90); color:black">Cancel</button>
        <p class="small fw-bold mt-2 pt-1 mb-0" style="padding-left: 2.5rem; padding-right: 2.5rem;"><a href="forgetpass" class="text-body">Forgot password?</a></p>
            </div>
        <br/>
            <div class="d-flex justify-content-between align-items-center">
              <!-- Checkbox -->
          
             
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