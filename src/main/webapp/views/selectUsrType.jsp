<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select User Type</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<title>Hello, world!</title>
<style>
:focus {
	outline: none;
}

.radio {
	-webkit-appearance: button;
	-moz-appearance: button;
	appearance: button;
	border: 4px solid #ccc;
	border-top-color: #bbb;
	border-left-color: #bbb;
	background: #fff;
	width: 27px;
	height: 27px;
	border-radius: 50%;
}

.radio:checked {
	border: 15px solid #4099ff;
}
</style>
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

									<p class="text-center h2 fw-bold mb-5 mx-1 mx-md-4 mt-4">Start
										your journey</p>
									<p class="text-center h5 fw mb-5 mx-1 mx-md-4 mt-4">Start
										your journey</p>

									<form class="mx-1 mx-md-4" action="usrtype" name="frm" method="post">
										<div class="form-check">
											<input type="radio" class="radio" value="customer"
												name="test" id=i1 checked> <label
												class="form-check-label" for="flexRadioDefault1">
												<h4>I'M A CUSTOMER</h4>
											</label>
										</div>
										<br/>
										<div class="form-check">
											<input type="radio" class="radio" value="seller" name="test"
												id=i2> <label class="form-check-label"
												for="flexRadioDefault2">
												<h4>I'M A SELLER</h4>
											</label>
										</div>
										<br> <br>
										<div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
											<button type="submit" class="btn btn-primary btn-lg">Next</button>
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