<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="css/sendmessage.css" rel="stylesheet">
  <script defer src="js/sendmessage.js"></script>
</head>
<body>
 <button data-modal-target="#modal">Send Message</button>
  <div class="modal" id="modal">
    <div class="modal-header">
      <div class="title">Send a message</div>
      <button data-close-button class="close-button">&times;</button>
    </div>
    <div class="modal-body" >
      <section class="vh-100" style="background-color: #ffffff;">
        <div class="container h-100">
          <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-xl-9">
      
             
      
              <div class="card" style="border-radius: 15px;">
                <div class="card-body">
      
                  <div class="row align-items-center pt-4 pb-3">
                    <div class="col-md-3 ps-5">
      
                      <h6 class="mb-0">Name*</h6>
      
                    </div>
                    <div class="col-md-9 pe-5">
      
                      <input type="text" class="form-control form-control-lg" required/>
      
                    </div>
                  </div>
      
                  <hr class="mx-n3">
      
                  <div class="row align-items-center py-3">
                    <div class="col-md-3 ps-5">
      
                      <h6 class="mb-0">Email*</h6>
      
                    </div>
                    <div class="col-md-9 pe-5">
      
                      <input type="email" class="form-control form-control-lg" required/>
      
                    </div>
                  </div>
      
                  <hr class="mx-n3">
                 
                  <div class="row align-items-center py-3">
                    <div class="col-md-3 ps-5">
      
                      <h6 class="mb-0">Phone Number*</h6>
      
                    </div>
                    <div class="col-md-9 pe-5">
      
                      <input type="number" class="form-control form-control-lg" required/>
      
                    </div>
                  </div>
      
                  <hr class="mx-n3">
      
                  <div class="row align-items-center py-3">
                    <div class="col-md-3 ps-5">
      
                      <h6 class="mb-0">Message*</h6>
      
                    </div>
                    <div class="col-md-9 pe-5">
      
                      <textarea class="form-control" rows="3" required></textarea>
      
                    </div>
                  </div>
      
                  <hr class="mx-n3">
      
                  <div class="px-5 py-4">
                    <button data-close-button="" class="close-button">Close</button>
                    <button type="submit" class="btn btn-primary btn-lg" onclick="openModal()" >Submit</button>
                  </div>
      
                </div>
              </div>
      
            </div>
          </div>
        </div>
      </section>
    
    </div>
    
  </div>
  
  <div id="overlay"></div>
</body>
</html>