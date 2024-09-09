<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
	integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<link type="text/css" rel="stylesheet"
	href="/CarGarageApplicationMVC/URLToReachResourceFolder/css/mycss.css" />

<title>adminPannel</title>

<style type="text/css">
.container {
	background-color: #e0fbfc;
	display: flex;
	flex-direction: column;
	min-height: 100vh; /* Ensure it covers the full viewport height */
}

.nav {
	width: 100%;
}

.nav .navbar {
	width: 100%;
	/* background-color: #eeeedd; */
	background-color: #3d5a80;
}

.menubar {
	display: flex;
	width: 100%;
	flex-grow: 1; /* Let it grow to fill available space */
}

.nav-pills {
	flex-basis: 20%;
	background-color: #293241;
	/* No height specified, it will grow with the container */
}

.tab-content {
	flex-basis: 80%;
	padding-top: 15px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="nav">
			<nav class="navbar navbar-expand-lg navbar-light">
				<div class="container-fluid">
					<a class="navbar-brand" href="#" style="color: white"><i
						class="fa-solid fa-car-on"></i> GoGarage AutoMobs</a>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarNav"
						aria-controls="navbarNav" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-end"
						id="navbarNav">
						<form class="d-flex ms-auto" action="logoutbtn">
							<button class="btn btn-outline-light" type="submit">Logout</button>
						</form>
					</div>
				</div>
			</nav>
		</div>

		<div class="menubar">
			<div class="nav flex-column nav-pills me-3" id="v-pills-tab"
				role="tablist" aria-orientation="vertical">

				<a href="clientpannel" style="text-decoration: none; margin: 0 auto"><button
						class="nav-link active m-2 " id="v-pills-home-tab"
						data-bs-toggle="pill" data-bs-target="#v-pills-home" type="button"
						role="tab" aria-controls="v-pills-home" aria-selected="true">Customer
						Section</button></a> <a href="cardetails"
					style="margin: 0 auto; text-decoration: none;"><button
						class="nav-link m-2" id="v-pills-profile-tab"
						data-bs-toggle="pill" data-bs-target="#v-pills-profile"
						type="button" role="tab" aria-controls="v-pills-profile"
						aria-selected="false">Car Section</button></a> <a
					href="servicedetailspage"
					style="text-decoration: none; margin: 0 auto"><button
						class="nav-link m-2" id="v-pills-settings-tab"
						data-bs-toggle="pill" data-bs-target="#v-pills-settings"
						type="button" role="tab" aria-controls="v-pills-settings"
						aria-selected="false">Servicing Section</button></a> <a
					href="sparePartspage"
					style="margin: 0 auto; text-decoration: none;"><button
						class="nav-link m-2" id="v-pills-settings-tab"
						data-bs-toggle="pill" data-bs-target="#v-pills-settings"
						type="button" role="tab" aria-controls="v-pills-settings"
						aria-selected="false">Spare Parts Section</button></a> <a
					href="techiepage" style="margin: 0 auto; text-decoration: none;"><button
						class="nav-link m-2" id="v-pills-settings-tab"
						data-bs-toggle="pill" data-bs-target="#v-pills-settings"
						type="button" role="tab" aria-controls="v-pills-settings"
						aria-selected="false">Technician Section</button></a> <a
					href="billingPage" style="margin: 0 auto; text-decoration: none;"><button
						class="nav-link m-2" id="v-pills-settings-tab"
						data-bs-toggle="pill" data-bs-target="#v-pills-settings"
						type="button" role="tab" aria-controls="v-pills-settings"
						aria-selected="false">Billing Section</button></a>
			</div>

			<div class="tab-content" id="v-pills-tabContent">
				<div class="tab-pane fade show active" id="v-pills-home"
					role="tabpanel" aria-labelledby="v-pills-home-tab">
					<div class="searchform">
						<form:form class="row g-3" action="goingtoupdate" method="POST">

							<div class="btns" style="display: flex;">
								<div class="col-12" style="flex-basis: 20%; margin-top: 10px;">
									<button type="submit" class="btn btn-success">Save</button>
								</div>
								<span style="color: green; margin-top: 2px;">${msg}</span>
							</div>

							<div class="namecontact"
								style="display: flex; justify-content: space-between;">

								<input type="hidden" name="userid" value="${userinfo.userid }">

								<div class="col-md-6" style="flex-basis: 30%;">
									<label for="inputName4" class="form-label">Name</label> <input
										type="text" class="form-control" id="inputName4"
										name="username" placeholder="Enter Name here"
										value="${userinfo.username}">
								</div>
								<div class="col-md-6" style="flex-basis: 30%;">
									<label for="inputContact" class="form-label">Contact</label> <input
										type="text" class="form-control" id="inputContact4"
										name="usercontact" placeholder="Enter Contact here"
										value="${userinfo.usercontact}"> <span
										id="validationMessage"
										style="color: blue; justify-content: center;"></span>
								</div>

								<div class="col-md-6" style="flex-basis: 30%;">
									<label for="inputEmail4" class="form-label">Email</label> <input
										type="email" class="form-control" id="inputEmail4"
										name="useremail" placeholder="Enter Email here"
										value="${userinfo.useremail}"> <span
										id="emailValidationMessage"
										style="color: blue; justify-content: center;"></span>
								</div>

							</div>

							<div class="col-12" style="flex-basis: 31%;">
								<label for="inputAddress" class="form-label">Address</label> <input
									type="text" class="form-control" id="inputAddress"
									name="useraddress" placeholder="Enter Address here"
									value="${userinfo.useraddress}">
							</div>


						</form:form>
					</div>

					<!-- Button to Open the Modal -->
					<button type="button" class="btn btn-success"
						data-bs-toggle="modal" data-bs-target="#vehicleModal"
						style="margin-top: 20px;">Add Vehicle Details</button>

					<!-- The Modal -->
					<div class="modal fade" id="vehicleModal" tabindex="-1"
						aria-labelledby="vehicleModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<!-- Modal Header -->
								<div class="modal-header">
									<h5 class="modal-title" id="vehicleModalLabel">Vehicle
										Details</h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close"></button>
								</div>

								<!-- Modal Body -->
								<div class="modal-body">
									<form:form action="submitformforvehicle" method="POST"
										modelAttribute="modalform">

										<input name="UserIDCustomer" type="hidden"
											value="${userinfo.userid }" />

										<div class="mb-3">
											<label for="inputVehicleModel5" class="form-label">Vehicle
												Model</label> <input type="text" class="form-control"
												id="inputVehicleModel5" name="vehiclemodel"
												placeholder="Enter Model here" value="${vehiclemodel}">
										</div>

										<div class="mb-3">
											<label for="inputVehicleNPlate6" class="form-label">Vehicle
												Number Plate</label> <input type="text" class="form-control"
												id="inputVehicleNPlate" name="vehiclenplate"
												placeholder="Enter Number here" value="${vehiclenplate}"
												required="required">
											<div id="vehicleNPlateError"
												style="color: red; display: none;">Invalid Vehicle
												Number Plate</div>
										</div>

										<div class="mb-3">
											<label for="inputVehicleKM7" class="form-label">Vehicle
												Running In KM</label> <input type="number" class="form-control"
												id="inputVehicleKM7" name="visitVrun"
												placeholder="Enter Running here" value="${visitVrun}">
										</div>

										<div class="mb-3">
											<label for="inputVehicleDate8" class="form-label">Vehicle
												Entry Date</label> <input type="date" class="form-control"
												id="inputVehicleDate8" name="visitVentryDate"
												value="${visitVentryDate}">
										</div>

										<div class="mb-3">
											<label for="selectTechnician" class="form-label">Select
												Technician</label> <select class="form-control"
												id="selectTechnician" name="tid">
												<option value="" disabled selected>Select a
													technician</option>
												<c:forEach var="technician" items="${techies}">
													<option value="${technician.tid}">${technician.tname}</option>
												</c:forEach>
											</select>
										</div>

										<!-- Modal Footer -->
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-bs-dismiss="modal">Close</button>
											<button type="submit" class="btn btn-primary">Save
												changes</button>
										</div>
									</form:form>
								</div>
							</div>
						</div>
					</div>

					<h4 style="margin: 20px 0;">Vehicle Details</h4>

					<div class="disptable" style="margin-top: 30px;">
						<table class="table" style="border: 1px solid black;">
							<thead>
								<tr class=" table-success">
									<th scope="col">Sr no.</th>
									<th scope="col">Vehicle Model</th>
									<th scope="col">Registered Number</th>
									<th scope="col">Vehicle Running in KMs</th>
									<th scope="col">Entry Date</th>
									<th scope="col">Technician</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<%
								int count = 0;
								%>
								<c:forEach var="vehicle" items="${vehicles }">
									<tr>
										<%-- <td><button type="button" data-bs-toggle="modal"
												data-bs-target="#modal${vehicle.vehicleid}">

												<%=++count%></button></td> --%>

										<td><a href="updateforcar?VisitID=${vehicle.vehicleid}"
											type="button" class="btn btn-info btn-sm"><%=++count %></a></td>

										<td>${vehicle.vehiclemodel }</td>
										<td>${vehicle.vehiclenplate }</td>
										<td>${vehicle.visitVrun }</td>
										<td>${vehicle.visitVentryDate }</td>
										<td>${vehicle.tname}</td>
									</tr>

									<!-- Modal -->
									<div class="modal fade" id="modal${vehicle.vehicleid}"
										tabindex="-1" aria-labelled by="exampleModalLabel"
										aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="exampleModalLabel">Do You
														Want to Update or Delete</h5>
													<button type="button" class="btn-close"
														data-bs-dismiss="modal" aria-label="Close"></button>
												</div>

												<div class="modal-footer">
													<a href="updateSave?userID=${vehicle.vehicleid}"><button
															type="button" class="btn btn-primary"
															data-bs-dismiss="modal">Update</button></a>
													<button type="button" class="btn btn-danger"
														data-bs-toggle="modal"
														data-bs-target="#modaldelete${vehicle.vehicleid}">Delete</button>
												</div>
											</div>
										</div>
									</div>

									<!--Delete Modal -->
									<div class="modal fade" id="modaldelete${vehicle.vehicleid}"
										tabindex="-1" aria-labelledby="exampleModalLabel"
										aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="exampleModalLabel">Sure!
														Do you want to Delete?</h5>
													<button type="button" class="btn-close"
														data-bs-dismiss="modal" aria-label="Close"></button>
												</div>

												<div class="modal-footer">
													<button type="button" class="btn btn-secondary"
														data-bs-dismiss="modal">Close</button>
													<a href="deleteUser?userID=${vehicle.vehicleid}"><button
															type="button" class="btn btn-danger">Delete</button></a>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</tbody>
						</table>
					</div>

				</div>

			</div>
		</div>
	</div>


	</div>

	<!-- Optional JavaScript; choose one of the two! -->
	<script type="text/javascript"
		src="/CarGarageApplicationMVC/URLToReachResourceFolder/js/myjs.js"></script>
	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->

	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>

</body>
</html>