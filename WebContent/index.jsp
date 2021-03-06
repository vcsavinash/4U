<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title href="index.html">4UNetwork &mdash; The NextGen Social
	Network</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
<meta name="author" content="FREEHTML5.CO" />

<!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FREEHTML5.CO
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->

<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico">

<!-- Google Webfonts -->
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,300,100,500'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>

<!-- Animate.css -->
<link rel="stylesheet" href="css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="css/icomoon.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="css/magnific-popup.css">
<!-- Salvattore -->
<link rel="stylesheet" href="css/salvattore.css">
<!-- Theme Style -->
<link rel="stylesheet" href="css/style.css">
<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

</head>
<body>

	<div id="fh5co-offcanvass">
		<a href="#" class="fh5co-offcanvass-close js-fh5co-offcanvass-close">Menu
			<i class="icon-cross"></i>
		</a>
		<h1 class="fh5co-logo">
			<a class="navbar-brand" href="index.html">Hydrogen</a>
		</h1>
		<ul>
			<li class="active"><a href="index.html">Home</a></li>
			<li><a href="login.html">Login</a></li>
			<li><a href="about.html">About</a></li>
			<li><a href="contact.html">Contact</a></li>
			<li><form action="logout" method="post">
    				<input type="submit" value="Logout" />
				</form></li>
		</ul>
		<h3 class="fh5co-lead">Connect with us</h3>
		<p class="fh5co-social-icons">
			<a href="#"><i class="icon-twitter"></i></a> <a href="#"><i
				class="icon-facebook"></i></a> <a href="#"><i class="icon-instagram"></i></a>
			<a href="#"><i class="icon-dribbble"></i></a> <a href="#"><i
				class="icon-youtube"></i></a>
		</p>
	</div>
	<header id="fh5co-header" role="banner">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<a href="#" class="fh5co-menu-btn js-fh5co-menu-btn">Menu <i
						class="icon-menu"></i></a> <a class="navbar-brand" href="index.html">4UNetwork</a>
				</div>
			</div>
		</div>
		<div class="container">
			<div>
	            <h3> Choose File to Upload in Server </h3>
	            <form action="post" method="post">
	            	<input type="text" id ="postText" name="postText"/>
	                <button type="submit" value="upload1" >Post Text</button>
	            </form>
	            <form action="post" method="post" enctype="multipart/form-data">
	                <input type="file" name="file" />
	                <input type="submit" value="Post" />
	            </form>         
       		</div>
		</div>
	</header>
	<!-- END .header -->


	<div id="fh5co-main">
		<div class="container">
			<!-- <input type="text" value="${sessionScope.imagesPath}" />  -->
			<div class="row">
				
				<div id="fh5co-board" data-columns>
					 <%--<%@ page import="java.util.Map" import="java.util.Map.Entry" %>
					<%
						Map<String, String> foods = (Map<String, String>) session.getAttribute("imagesPath");
						for(Entry<String, String> food : foods.entrySet()) {
					%>
						<div class="item">
							<div class="animate-box">
								<a href="<%=food.getValue() %>" class="image-popup fh5co-board-img" 
									title="Text"><img src="<%=food.getValue() %>"
									alt="Free HTML5 Bootstrap template"></a>
							</div>
							<div class="fh5co-desc">Text1</div>
						</div>
					<%
						}
					%>  --%>
					<c:forEach items="${sessionScope.texts}" var="text">
							<input type="text" name="text+${text.key}" value="${text.value}" readonly>
   					</c:forEach> 
					<c:forEach items="${sessionScope.imagesPath}" var="img">
       					<div class="item">
							<div class="animate-box">
								<a href="${img.value}" class="image-popup fh5co-board-img" 
									title="Text"><img src="${img.value}"
									alt="Free HTML5 Bootstrap template"></a>
							</div>
							<div class="fh5co-desc">Text1</div>
						</div>
   					</c:forEach> 
					
					<!-- <div class="item">
						<div class="animate-box">
							<a href="Users/25/img_2.jpg" class="image-popup fh5co-board-img"><img
								src="Users/25/img_2.jpg" alt="Free HTML5 Bootstrap template"></a>
							<div class="fh5co-desc">Text2</div>
						</div>
					</div>
					<div class="item">
						<div class="animate-box">
							<a href="Users/25/img_3.jpg" class="image-popup fh5co-board-img"><img
								src="Users/25/img_3.jpg" alt="Free HTML5 Bootstrap template"></a>
							<div class="fh5co-desc">Text3</div>
						</div>
					</div>
					<div class="item">
						<div class="animate-box">
							<a href="Users/25/img_4.jpg" class="image-popup fh5co-board-img"><img
								src="Users/25/img_4.jpg" alt="Free HTML5 Bootstrap template"></a>
							<div class="fh5co-desc">Text4</div>
						</div>
					</div>
					<div class="item">
						<div class="animate-box">
							<a href="Users/25/img_5.jpg" class="image-popup fh5co-board-img"><img
								src="Users/25/img_5.jpg" alt="Free HTML5 Bootstrap template"></a>
							<div class="fh5co-desc">Text5</div>
						</div>
					</div>
					<div class="item">
						<div class="animate-box">
							<a href="Users/25/img_6.jpg" class="image-popup fh5co-board-img"><img
								src="Users/25/img_6.jpg" alt="Free HTML5 Bootstrap template"></a>
							<div class="fh5co-desc">Text6</div>
						</div>
					</div>
					<div class="item">
						<div class="animate-box">
							<a href="Users/25/img_7.jpg" class="image-popup fh5co-board-img"><img
								src="Users/25/img_7.jpg" alt="Free HTML5 Bootstrap template"></a>
							<div class="fh5co-desc">Text7</div>
						</div>
					</div>
					<div class="item">
						<div class="animate-box">
							<a href="Users/25/img_8.jpg" class="image-popup fh5co-board-img"><img
								src="Users/25/img_8.jpg" alt="Free HTML5 Bootstrap template"></a>
							<div class="fh5co-desc">Text8</div>
						</div>
					</div>
					<div class="item">
						<div class="animate-box">
							<a href="Users/25/img_9.jpg" class="image-popup fh5co-board-img"><img
								src="Users/25/img_9.jpg" alt="Free HTML5 Bootstrap template"></a>
							<div class="fh5co-desc">Text9</div>
						</div>
					</div>
					<div class="item">
						<div class="animate-box">
							<a href="Users/25/img_10.jpg" class="image-popup fh5co-board-img"><img
								src="Users/25/img_10.jpg" alt="Free HTML5 Bootstrap template"></a>
							<div class="fh5co-desc">Text10</div>
						</div>
					</div>
					<div class="item">
						<div class="animate-box">
							<a href="Users/25/img_11.jpg" class="image-popup fh5co-board-img"><img
								src="Users/25/img_11.jpg" alt="Free HTML5 Bootstrap template"></a>
							<div class="fh5co-desc">Text11</div>
						</div>
					</div>
					<div class="item">
						<div class="animate-box">
							<a href="Users/25/img_12.jpg" class="image-popup fh5co-board-img"><img
								src="Users/25/img_12.jpg" alt="Free HTML5 Bootstrap template"></a>
							<div class="fh5co-desc">Text12</div>
						</div>
					</div>
					<div class="item">
						<div class="animate-box">
							<a href="Users/25/img_13.jpg" class="image-popup fh5co-board-img"><img
								src="Users/25/img_13.jpg" alt="Free HTML5 Bootstrap template"></a>
							<div class="fh5co-desc">Text13</div>
						</div>
					</div>
					<div class="item">
						<div class="animate-box">
							<a href="Users/25/img_14.jpg" class="image-popup fh5co-board-img"><img
								src="Users/25/img_14.jpg" alt="Free HTML5 Bootstrap template"></a>
							<div class="fh5co-desc">Text14</div>
						</div>
					</div>
					<div class="item">
						<div class="animate-box">
							<a href="Users/25/img_15.jpg" class="image-popup fh5co-board-img"><img
								src="Users/25/img_15.jpg" alt="Free HTML5 Bootstrap template"></a>
							<div class="fh5co-desc">Text15</div>
						</div>
					</div>
					<div class="item">
						<div class="animate-box">
							<a href="Users/25/img_16.jpg" class="image-popup fh5co-board-img"><img
								src="Users/25/img_16.jpg" alt="Free HTML5 Bootstrap template"></a>
							<div class="fh5co-desc">Text16</div>
						</div>
					</div>
					<div class="item">
						<div class="animate-box">
							<a href="Users/25/img_17.jpg" class="image-popup fh5co-board-img"><img
								src="Users/25/img_17.jpg" alt="Free HTML5 Bootstrap template"></a>
							<div class="fh5co-desc">Text17</div>
						</div>
					</div>
					<div class="item">
						<div class="animate-box">
							<a href="Users/25/img_18.jpg" class="image-popup fh5co-board-img"><img
								src="Users/25/img_18.jpg" alt="Free HTML5 Bootstrap template"></a>
							<div class="fh5co-desc">Text18</div>
						</div>
					</div>
					<div class="item">
						<div class="animate-box">
							<a href="Users/25/img_19.jpg" class="image-popup fh5co-board-img"><img
								src="Users/25/img_19.jpg" alt="Free HTML5 Bootstrap template"></a>
							<div class="fh5co-desc">Text19</div>
						</div>
					</div>
					<div class="item">
						<div class="animate-box">
							<a href="Users/25/img_20.jpg" class="image-popup fh5co-board-img"><img
								src="Users/25/img_20.jpg" alt="Free HTML5 Bootstrap template"></a>
							<div class="fh5co-desc">Text20</div>
						</div>
					</div> -->
				</div>
			</div>
		</div>
	</div>

	<footer id="fh5co-footer">

		<div class="container">
			<div class="row row-padded">
				<div class="col-md-12 text-center">
					<p class="fh5co-social-icons">
						<a href="#"><i class="icon-twitter"></i></a> <a href="#"><i
							class="icon-facebook"></i></a> <a href="#"><i
							class="icon-instagram"></i></a> <a href="#"><i
							class="icon-dribbble"></i></a> <a href="#"><i
							class="icon-youtube"></i></a>
					</p>
					<p>
						<small>&copy; Hydrogen Free HTML5 Template. All Rights
							Reserved. <br>Designed by: <a href="http://freehtml5.co/"
							target="_blank">FREEHTML5.co</a> | Images by: <a
							href="http://pexels.com" target="_blank">Pexels</a>
						</small>
					</p>
				</div>
			</div>
		</div>
	</footer>


	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<!-- Salvattore -->
	<script src="js/salvattore.min.js"></script>
	<!-- Main JS -->
	<script src="js/main.js"></script>
</body>
</html>
<!-- <script type="text/javascript">
	///$(document).ready(function(){
	//var param1='${person}';
	var imagePaths = [];
	//imagePaths = '<%=request.getAttribute("imageAbsPaths")%>';//'<%= session.getAttribute("imageAbsPaths") %>';
	//var param2='${username}';
	//$('#userId').val(param1);
	var text = "";
	
	var test= '<%=request.getAttribute("postnum")%>';
		
	
	var i;
	for (i = 1; i < imagePaths.length; i++) {
		text += "<div class='item'><div class='animate-box'><a href='Users/25/img_1.jpg' class='image-popup fh5co-board-img' title='Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, eos?'><img src='Users/25/img_1.jpg' alt='Free HTML5 Bootstrap template'></a></div><div class='fh5co-desc'>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, eos?</div></div>"
	}
	//});
	//var imagePaths = document.getElementById("hidReqAttr").value;

	//document.getElementById("fh5co-board").innerHTML = text;
</script> -->