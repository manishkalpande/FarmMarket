<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Forget Password</title>
</head>
<script>
function ajax() {
  // (A) GET FORM DATA
  var form = document.getElementById("frm");
  var data = new FormData(form);
 	
  data.append("email",document.getElementById("email").value);
  // (B) AJAX
  var xhr = new XMLHttpRequest();
  xhr.open("POST", "sendemail");
  // What to do when server responds
  xhr.onload = function (){ 
	  console.log(this.response); 
	if(this.response=="Ok")
		{
		alert("Send Otp");
		}
	else
		{
		alert("error");
		}
  };
  xhr.send(data);
 
  // (C) PREVENT HTML FORM SUBMIT
  return false;
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
      
                      <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Forget Password</p>
      
        <div class="text-center mt-5"></div>
      <% String x = request.getParameter("type"); %>
        <form style="max-width:480px;margin:auto" name="frm" id="frm" onsubmit="return ajax()">
           <input type="hidden" value="<%=x%>"/>
            <br>
        <!-- Email input -->
        <div class="form-outline mb-4">
          <input type="email" id="email" name="email" class="form-control" required/>
          <label class="form-label" for="form2Example1">Email ID</label>
        </div>
        <button type="submit" class="btn btn-primary btn-block mb-4" onclick= "myFunction()">Generate OTP</button>
      </form>
      <form  name="form" id="form" >
        <!-- Password input -->
        <div class="form-outline mb-4">
          <input type="number" id="otp" name="otp" class="form-control" required/>
          <label class="form-label" for="form2Example2">4 digit OTP</label>
        </div>
      
        <!-- 2 column grid layout for inline styling -->
       
      
         
        <!-- Submit button -->
        <button type="submit" class="btn btn-primary btn-block mb-4">Verify</button>
      
        <!-- Register buttons -->
        
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
    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
	<form name="frm" method="post" action="sendemail">
	<input type="text" name="email" id="email">Enter email
	<br>
	<input type="submit" value="submit"> 
	</form>
</body>
</html>