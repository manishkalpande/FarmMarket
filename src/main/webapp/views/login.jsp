<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<title>Customer Login here</title>
</head>
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

									<p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Login
										here</p>

									<div class="text-center mt-5"></div>

									<form style="max-width: 480px; margin: auto" action="logincust"
										method="post">

										<br>
										<!-- Email input -->
										<div class="form-outline mb-4">
											<input type="text" id="usernm" name="usernm"
												class="form-control" /> <label class="form-label"
												for="form2Example1">Email address</label>
										</div>

										<!-- Password input -->
										<div class="form-outline mb-4">
											<input type="password" id="passwd" name="passwd"
												class="form-control" /> <label class="form-label"
												for="form2Example2">Password</label>
										</div>

										<!-- 2 column grid layout for inline styling -->
										<div class="row mb-4">
											<div class="col d-flex justify-content-center">
												<!-- Checkbox -->
												<div class="form-check">
													<input class="form-check-input" type="checkbox" value=""
														id="form2Example31" checked /> <label
														class="form-check-label" for="form2Example31">
														Remember me </label>
												</div>
											</div>
										<input type="hidden" value="customer" name = "usrtype"/>
											<div class="col">
												<!-- Simple link -->
												<a href="forgetpass">Forgot password?</a>
											</div>
										</div>

										<!-- Submit button -->
										<button type="submit" class="btn btn-primary btn-block mb-4">Sign
											in Customer</button>

										<!-- Register buttons -->
										<div class="text-center">
											<p>
												Not a member? <a href="register">Register</a>
											</p>
											<p>or sign up with:</p>
											<button type="button" class="btn btn-link btn-floating mx-1">
												<i class="fab fa-facebook-f"></i>
											</button>

											<button type="button" class="btn btn-link btn-floating mx-1">
												<i class="fab fa-google"></i>
											</button>

											<button type="button" class="btn btn-link btn-floating mx-1">
												<i class="fab fa-twitter"></i>
											</button>

											<button type="button" class="btn btn-link btn-floating mx-1">
												<i class="fab fa-github"></i>
											</button>
										</div>
									</form>


									<script
										src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
										integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
										crossorigin="anonymous"></script>
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
</body>
</html>