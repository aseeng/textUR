<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="sidebars.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link href="../css/home.css" rel="stylesheet">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>InstanText | Showcase</title>
</head>

<body class="skin-red-light">
	<div class="box box-danger center" id="explorer">
		<section class="content"> 
		<div class="input-group-btn">
			<button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown"> New project
				 <span class="fa fa-caret-down"></span>
			</button>
			<ul class="dropdown-menu">
				<li><a id="empty"> Empty Project</a></li>
				<li><a id="hello"> HelloWorld Project</a></li>
				<li><a onclick="uploadRequest();">Upload your project</a></li>
			</ul>
		</div>

		<h2 class="site-heading text-center">	<span class="site-heading-lower">Your <b>projects</b></span> 	</h2>
		<div class=" text-center">
			<c:forEach var="project" items="${user.getProjects().values()}">
				<button class="btn btn-warning" onclick="showContent('${project.getName()}', true);"> 
					<span class="info-box-icon bg-yellow">
						<i class="fa fa-folder icon_folder"><br> </i> 
						<p class="names">${project.getName()}</p> 
					</span>
				</button>
			</c:forEach>
		</div>
		</section>

		<section class="content">
		<h2 class="site-heading text-center">	<span class="site-heading-lower">Other <b>projects</b></span>	</h2>

		<div class="text-center">
			<c:forEach var="project" items="${user.getOtherProjects().values()}">
				<button class="btn btn-warning overflow-ellipsis" onclick="showContent('${project.getName()}', false);">
					<span class="info-box-icon bg-yellow">
						<i class="fa fa-folder icon_folder"><br></i>
						<p class = "names">${project.getName()}</p>
					</span>
				</button>
			</c:forEach>
		</div>
		</section>
	</div>

<script src="../javascript/explorer.js"></script>
</body>
</html>
