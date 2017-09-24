

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />


<c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Online shopping - ${title}</title>
<script>
	window.menu = '${title}';

	window.contextRoot = '${contextRoot}'
</script>

<!-- Bootstrap Core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap readable theme CSS -->
<link href="${css}/boostrap-readable-theme.css" rel="stylesheet">

<!-- Bootstrap dataTable them -->
<link href="${css}/dataTables.bootstrap.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>

	<div class="wrapper">
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<a class="navbar-brand" href="${contextRoot }/home">Home</a>
				</div>
			</div>
		</nav>
		<!-- Page Content -->


		<div class="content">

			<div class="container">

				<div class="row">
					<div class="col-xs-12">

						<div class="jumbotron">

							<h1>${errorTitle}</h1>
							<hr>

							<blockquote style="word-wrap:break-word">${errorDescription}</blockquote>
						</div>


					</div>

				</div>
			</div>
		</div>

		<div class="container footer">

			<hr>


			<footer>
				<div class="row">
					<div class="col-lg-12">
						<p>Copyright &copy; Your Web site 2017</p>
					</div>
				</div>
			</footer>
		</div>

	</div>
</body>


</html>
