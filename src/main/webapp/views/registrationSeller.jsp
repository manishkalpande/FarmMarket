<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">



<title>Seller Registration Page</title>
</head>
<script>
	function checkPassword(form) {
		password1 = form.passwd.value;
		password2 = form.password2.value;
		console.log(password1);
		console.log(password2);
		// If password not entered
		if (password1 == '')
			alert("Please enter Password");

		// If confirm password not entered
		else if (password2 == '')
			alert("Please enter confirm password");

		// If Not same return False.    
		else if (password1 != password2) {
			alert("\nPassword did not match: Please try again...")
			return false;
		}

		// If same return True.
		else {
			alert("Password Match: Welcome to GeeksforGeeks!")
			return true;
		}
	}
</script>

<body>
	<section class="vh-100" style="background-color: #eee;">
		<div class="container h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-lg-12 col-xl-11">
					<div class="card text-black" style="border-radius: 25px;">
						<div class="card-body p-md-5">
							<div class="row justify-content-center">
								<div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

									<p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign
										up</p>


										<form class="mx-1 mx-md-4" action="regseller"
											onsubmit="return checkPassword()" method="post">


											<div class="d-flex flex-row align-items-center mb-4">
												<i class="fas fa-user fa-lg me-3 fa-fw"></i>
												<div class="form-outline flex-fill mb-0">
													<input type="text" id="usernm" name="usernm"
														class="form-control" required/> <label class="form-label"
														for="form3Example1c">Your Name</label>
												</div>
											</div>

											<div class="d-flex flex-row align-items-center mb-4">
												<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
												<div class="form-outline flex-fill mb-0">
													<input type="email" id="email" name="email"
														class="form-control" required/> <label class="form-label"
														for="form3Example3c">Your Email</label>
												</div>
											</div>

											<div class="d-flex flex-row align-items-center mb-4">
												<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
												<div class="form-outline flex-fill mb-0">
													<div class="col-md-6 mb-4">
														<label class="form-label" for="form3Example3c">Gender</label>
														<select id="gen" name="gen" class="select">
															<option value="1" disabled>Gender</option>
															<option value="Male">Male</option>
															<option value="Female">Female</option>
															<option value="Other">Other</option>
														</select>
													</div>
												</div>
											</div>

											<div class="d-flex flex-row align-items-center mb-4">
												<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
												<div class="form-outline flex-fill mb-0">
													<input type="number" id="mobno" name="mobno"
														class="form-control" required/> <label class="form-label"
														for="form3Example3c">Your Mobile No</label>
												</div>
											</div>

											<div class="d-flex flex-row align-items-center mb-4">
												<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
												<div class="form-outline flex-fill mb-0">
													<input type="date" id="dob" name="dob" required/> <label
														for="exampleDatepicker1" class="form-label">Select
														a date</label>
												</div>
											</div>

											<div class="d-flex flex-row align-items-center mb-4">
												<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
												<div class="form-outline flex-fill mb-0">
													<input type="number" id="aadharid" name="aadharid"
														class="form-control" required/> <label class="form-label"
														for="form3Example3c">Your Aadhar No</label>
												</div>
											</div>

											<div class="d-flex flex-row align-items-center mb-4">
												<i class="fas fa-user fa-lg me-3 fa-fw"></i>
												<div class="form-outline flex-fill mb-0">
													<input type="text" id="address" name="address"
														class="form-control form-control-lg" required/> <label
														class="form-label" for="form3Example8">Address</label>
												</div>
											</div>

											<div class="d-flex flex-row align-items-center mb-4">
												<i class="fas fa-lock fa-lg me-3 fa-fw"></i>
												<div class="form-outline flex-fill mb-0">
													<input type="password" id="passwd" name="passwd"
														class="form-control" required /> <label class="form-label"
														for="form3Example4c">Password</label>
												</div>
											</div>

											<div class="d-flex flex-row align-items-center mb-4">
												<i class="fas fa-key fa-lg me-3 fa-fw"></i>
												<div class="form-outline flex-fill mb-0">
													<input type="password" id="password2" name="password2"
														class="form-control" required/> <label class="form-label"
														for="form3Example4cd">Repeat your password</label>
												</div>
											</div>

											<div class="form-check d-flex justify-content-center mb-5">
												<input class="form-check-input me-2" type="checkbox"
													value="" id="form2Example3c" required/> <label
													class="form-check-label" for="form2Example3"> I
													agree all statements in <a href="#!">Terms of service</a>
												</label>
											</div>

											<div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
												<button type="submit" class="btn btn-primary btn-lg">Register</button>
											</div>

										</form>
								</div>
								<div
									class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

									<img
										src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
										class="img-fluid" alt="Sample image">

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