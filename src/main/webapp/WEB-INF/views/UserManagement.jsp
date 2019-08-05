<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" --%>
<%-- 	pageEncoding="UTF-8"%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Kensanians Management Board</title>

<style type="text/css">
.username.ng-valid {
	background-color: lightgreen;
}

.username.ng-dirty.ng-invalid-required {
	background-color: yellow;
}

.email.ng-valid {
	background-color: lightgreen;
}

.email.ng-dirty.ng-invalid-required {
	background-color: red;
}

.email.ng-dirty.ng-invalid-required {
	background-color: yellow;
}
</style>

<!-- <link rel="stylesheet" href="css/bootstrap.min.css"> -->
<link rel="stylesheet" href="./bower_components/bootstrap-css-only/css/bootstrap.min.css" />
<link rel="stylesheet" href="css/app.css">

</head>
<body ng-app="myApp" class="ng-cloak">
<div class="generic-container" ng-controller="UserController as ctrl">

 	<div class="panel panel-default">
		<div class="panel-heading">
			<span class="lead">Employee registration</span>
		</div>

		<div class="formcontainer">
			<form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal">
				<input type="hidden" ng-model="ctrl.user.id" />
				
				<div class="row">
				
					<div class="form-group col-md-12">
						<label class="col-md-2 control-label" for="file">Name</label>
						<div class="col-md-7">
							<input type="text" ng-model="ctrl.user.userName" name="uname"
								class="username form-control input-sm"
								placeholder="Enter your name" required ng-minlength="3" />
									<div class="has-error" ng-show="myForm.$dirty">
										<span ng-show="myForm.uname.$error.required">This is a required field</span>
										<span ng-show="myForm.uname.$error.minlenght">Minimum length required is 3 </span>
										<span ng-show="myForm.uname.$invalid">This field is invalid </span>
									</div>
						</div>
					</div>
				</div>
				
				
				<div class="row">
				
					<div class="form-group col-md-12">
						<label class="col-md-2 control-label" for="file">Last name</label>
						<div class="col-md-7">
							<input type="text" ng-model="ctrl.user.last_name" name="last_name"
								class="username form-control input-sm"
								placeholder="Enter your last name" required ng-minlength="3" />
									<div class="has-error" ng-show="myForm.$dirty">
										<span ng-show="myForm.last_name.$error.required">This is a required field</span>
										<span ng-show="myForm.last_name.$error.minlenght">Minimum length required is 3 </span>
										<span ng-show="myForm.last_name.$invalid">This field is invalid </span>
									</div>
						</div>
					</div>
				</div>
				
				
				<div class="row">
				
					<div class="form-group col-md-12">
						<label class="col-md-2 control-label" for="file">Middle name</label>
						<div class="col-md-7">
							<input type="text" ng-model="ctrl.user.middle_name" name="mdname"
								class="username form-control input-sm"
								placeholder="Enter your middle name" required ng-minlength="3" />
									<div class="has-error" ng-show="myForm.$dirty">
										<span ng-show="myForm.mdname.$error.required">This is a required field</span>
										<span ng-show="myForm.mdname.$error.minlenght">Minimum length required is 3 </span>
										<span ng-show="myForm.mdname.$invalid">This field is invalid </span>
									</div>
						</div>
					</div>
				</div>
				
				
				<div class="row">
				
					<div class="form-group col-md-12">
						<label class="col-md-2 control-label" for="file">Birthday</label>
						<div class="col-md-7">
							<input type="text" ng-model="ctrl.user.dob" name="dob"
								class="username form-control input-sm"
								placeholder="Enter your day of birthday" required ng-minlength="10" />
									<div class="has-error" ng-show="myForm.$dirty">
										<span ng-show="myForm.dob.$error.required">This is a required field</span>
										<span ng-show="myForm.dob.$error.minlenght">Minimum length required is 3 </span>
										<span ng-show="myForm.dob.$invalid">This field is invalid </span>
									</div>
						</div>
					</div>
				</div>
				
				
				<div class="row">
				
					<div class="form-group col-md-12">
						<label class="col-md-2 control-label" for="file">Aniversary</label>
						<div class="col-md-7">
							<input type="text" ng-model="ctrl.user.doe" name="doe"
								class="username form-control input-sm"
								placeholder="Enter your first day of contract" required ng-minlength="10" />
									<div class="has-error" ng-show="myForm.$dirty">
										<span ng-show="myForm.doe.$error.required">This is a required field</span>
										<span ng-show="myForm.doe.$error.minlenght">Minimum length required is 3 </span>
										<span ng-show="myForm.doe.$invalid">This field is invalid </span>
									</div>
						</div>
					</div>
				</div>
				
				<div class="row">
				
					<div class="form-group col-md-12">
					<label class="col-md-2 control-label" for="file">Address</label>
						<div class="col-md-7">
							<input type="text" ng-model="ctrl.user.address" name="addre" 
								class="address form-control input-sm"
								placeholder="Enter your Address" required />
									<div class="has-error" ng-show="myForm.$dirty">
										<span ng-show="myForm.addre.$error.required">This is a required field</span>
									</div>
						</div>
					</div>
				</div>
				
				<div class="row">
				
					<div class="form-group col-md-12">
					<label class="col-md-2 control-label" for="file">email</label>
						<div class="col-md-7">
							<input type="text" ng-model="ctrl.user.email" name="email" 
								class="email form-control input-sm"
								placeholder="Enter your E-mail" required ng-minlength="12" />
								<div class="has-error" ng-show="myForm.$dirty">
										<span ng-show="myForm.email.$error.required">This is a required field</span>
										<span ng-show="myForm.email.$invalid">This field is invalid </span>
								</div>
						</div>
					</div>
				</div>
				
				<div class="form-group col-md-12">
					<label class="col-md-2 control-label" for="file">Status</label>
					<input type="checkbox" id="status" name="status" class="custom-control-input" 
						    ng-change="ctrl.checkStatus()" ng-model="ctrl.user.status" ng-true-value="'ACTIVE'" ng-false-value="'INACTIVE'">
						    {{ ctrl.user.status }}
				</div>
				
				<div class="row">
					<div class="form-actions floatRight">
						<input type="submit" value="{{!ctrl.user.id ? 'Add' : 'Update' }}"
						  class="btn btn-primary btn-sm" ng-disable="myForm.$invalid" >
						  
						<button type="button" ng-click="ctrl.reset()" 
						class="btn btn-warning btn-sm" 
						ng-disable="myForm.$printine"> Reset Form </button>
					</div>
				</div>
			</form>
		</div>
	</div>
	
	<div class="panel panel-default">
		
		<div class="panel-heading">
			<span class="lead"> List of Employees
			</span>
		</div>
		
		<div class="tablecontainer">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Last name</th>
						<th>Middle name</th>
						<th>Birthday</th>
						<th>Aniversary</th>
						<th>Address</th>
						<th>e-mail</th>
						<th>Status</th>
						<th width="20%"></th>
					</tr>
				</thead>
				<tbody>
					<tr ng-repeat="u in ctrl.users">
						<td> <span ng-bind="u.id"></span></td>
						<td> <span ng-bind="u.userName"></span></td>
						<td> <span ng-bind="u.last_name"></span></td>
						<td> <span ng-bind="u.middle_name"></span></td>
						<td> <span ng-bind="u.dob"></span></td>
						<td> <span ng-bind="u.doe"></span></td>
						<td> <span ng-bind="u.address"></span></td>
						<td> <span ng-bind="u.email"></span></td>
						<td> <span ng-bind="u.status"></span></td>
					
						<td>
							<button type="button" class="pull-right btn btn-success btn-sm" title="Edit" 
							ng-click="ctrl.edit(u.id)">
									<span class="glyphicon glyphicon-pencil"></span>
							</button>
						</td>	
<!-- 							<button type="button" ng-click="ctrl.remove(u.id)" -->
<!-- 							class="btn btn-danger.custom-width">Remove -->
<!-- 							</button> -->
						 <td>
							<button type="button" class="pull-right btn btn-danger"  title="Remove"
             				 	ng-click="ctrl.remove(u.id)">
              						<span class="glyphicon glyphicon-trash"></span>
            				</button>
						 </td>
					 </tr>
				</tbody>
			</table>
		</div>
	</div>
 
	<script type="text/javascript" src="./bower_components/angular/angular.min.js"></script>
    <script type="text/javascript" src="./bower_components/angular-resource/angular-resource.min.js"></script>
	
	<script src="js/app.js"></script>
	<script src="js/controller/user_controller.js"></script>
	<script src="js/service/user_service.js"></script>
	
</div>	
</body>
</html>