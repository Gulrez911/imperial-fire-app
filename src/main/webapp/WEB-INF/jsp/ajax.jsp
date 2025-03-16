<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<title>jQuery Form Example</title>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css"
/>
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
</head>
<body>
	<div class="col-sm-6 col-sm-offset-3">
		<h1>Processing an AJAX Form</h1>

		<form action="process" method="POST">
			<div id="name-group" class="form-group">
				<label for="name">Name</label> <input type="text" class="form-control"
					id="name" name="name" placeholder="Full Name"
				/>
			</div>

			<div id="email-group" class="form-group">
				<label for="email">Email</label> <input type="text" class="form-control"
					id="email" name="email" placeholder="email@example.com"
				/>
			</div>

			<div id="superhero-group" class="form-group">
				<label for="superheroAlias">Superhero Alias</label> <input type="text"
					class="form-control" id="superheroAlias" name="superheroAlias"
					placeholder="Ant Man, Wonder Woman, Black Panther, Superman, Black Widow"
				/>
			</div>

			<button type="submit" class="btn btn-success">Submit</button>
		</form>
	</div>
	<script type="text/javascript">
	
	$(document).ready(function () {
		  $("form").submit(function (event) {
		    var formData = {
		      name: $("#name").val(),
		      email: $("#email").val(),
		      superheroAlias: $("#superheroAlias").val(),
		    };

		    $.ajax({
		      type: "POST",
		      url: "process",
		      data: formData,
		      dataType: "json",
		      encode: true,
		    }).done(function (data) {
		      console.log(data);
		    });

		    event.preventDefault();
		  });
		});
	</script>
</body>
</html>