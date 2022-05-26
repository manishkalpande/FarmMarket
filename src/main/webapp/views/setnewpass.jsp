<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Insert title here</title>
</head>
  <script>  
 /* function checkPassword(form) {
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
 } */
    </script>
<body>

<form style="max-width:480px;margin:auto; height: 500px;" method="post" action="setpa">
<br><br><br><br><br><br><br>
<h1>Set New Password</h1>           
            <br>
        
      
        <!-- Password input -->
        <div class="form-outline mb-4">
          <input type="password" id="newpass" name="newpass" class="form-control" />
          <label class="form-label" for="pass1">New password</label>
        </div>

        <div class="form-outline mb-4">
            <input type="password" id="pass1" name="pass1" class="form-control" />
            <label class="form-label" for="form2Example2">Comfirm New password</label>
          </div>
      
      
          
            <div class="form-outline mb-4">
        <!-- Submit button -->
        <button type="submit" class="btn btn-primary btn-block mb-4" >Set Password</button>
        <button type="button" class="btn btn-primary btn-block mb-4" style="background-color: rgb(220, 215, 215); border-color: rgb(93, 90, 90); color:black">Cancel</button>
        
            </div>
        <br/>
            <div class="d-flex justify-content-between align-items-center">
              <!-- Checkbox -->
          
             
            </div>  
       
      </form>

</body>
</html>