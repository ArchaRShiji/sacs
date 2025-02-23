﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>


<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
		
		<title>SACS in Cloud Computing</title>

		<!-- Loading third party fonts -->
		<link href="http://fonts.googleapis.com/css?family=Belgrano:400" rel="stylesheet" type="text/css">
		<link href="fonts/font-awesome.min.css" rel="stylesheet" type="text/css">

		<!-- Loading main css file -->
		<link rel="stylesheet" href="style.css">
		
		<!--[if lt IE 9]>
		<script src="js/ie-support/html5.js"></script>
		<script src="js/ie-support/respond.js"></script>
		<![endif]-->

	</head>


	<body>
		<div class="site-content">
			<div class="site-header header-collapsed">
				<div class="container">
					<div class="header-bar">
						<a href="index.html" class="branding">
							<img src="images/logo.png" alt="" class="logo">
							<h1 class="site-title">SACS in Cloud Computing</h1>
						</a>

						<!-- Default snippet for navigation -->
						<div class="main-navigation">
							<button type="button" class="menu-toggle"><i class="fa fa-bars"></i></button>
							<ul class="menu">
								<li class="menu-item current-menu-item"><a href="Index.aspx">Home</a></li>
								<%--<li class="menu-item"><a href="#pastors">Pastors</a></li>
								<li class="menu-item"><a href="#events">Events</a></li>
								<li class="menu-item"><a href="#seremons">Seremons</a></li>
								<li class="menu-item"><a href="#families">Families</a></li>--%>
								<li class="menu-item"><a href="Login.aspx">Login</a></li>
							</ul> <!-- .menu -->
						</div> <!-- .main-navigation -->

						<div class="mobile-navigation"></div>
						
					</div>
				</div>
			</div> <!-- .site-header -->

			<div class="hero">
				<ul class="slides">
					<li data-bg-image="images/slider-1.jpg">
						<div class="container">
							<div class="slide-content">
								<h2 class="slide-title">Sanitizable Access Control System for Secure Cloud Storage </h2>
								<small class="date">Against Malicious Data Publishers</small>
								<p>Cloud computing is considered as one of the most prominent paradigms in the information technology industry, since it can signiﬁcantly reduce the costs of hardware and software resources in computing infrastructure. This convenience has enabled corporations to efﬁciently use the cloud storage as a mechanism to share data among their employees</p>
								 
							</div>
						</div>
					</li>

					<li data-bg-image="images/slider-1.jpg">
						<div class="container">
							<div class="slide-content">
								<h2 class="slide-title">Sanitizable Access Control System for Secure Cloud Storage </h2>
								<small class="date">Against Malicious Data Publishers</small>
								<p>Cloud computing is considered as one of the most prominent paradigms in the information technology industry, since it can signiﬁcantly reduce the costs of hardware and software resources in computing infrastructure. This convenience has enabled corporations to efﬁciently use the cloud storage as a mechanism to share data among their employees</p>
								 
							</div>
						</div>
					</li>
				</ul>
			</div>

			<main class="main-content">
				<%--<div id="about" class="fullwidth-block">
					<div class="container">
						<div class="row">
							<div class="col-md-3 col-sm-6">
								<div class="feature">
									<div class="feature-icon"><img src="images/icon-church.png" alt="" class="icon"></div>
									<h2 class="feature-title">Who we are?</h2>
									<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor.</p>
								</div>
							</div>
							<div class="col-md-3 col-sm-6">
								<div class="feature">
									<div class="feature-icon"><img src="images/icon-candles.png" alt="" class="icon"></div>
									<h2 class="feature-title">Believes</h2>
									<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor.</p>
								</div>
							</div>
							<div class="col-md-3 col-sm-6">
								<div class="feature">
									<div class="feature-icon"><img src="images/icon-cross.png" alt="" class="icon"></div>
									<h2 class="feature-title">Our creed</h2>
									<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor.</p>
								</div>
							</div>
							<div class="col-md-3 col-sm-6">
								<div class="feature">
									<div class="feature-icon"><img src="images/icon-star.png" alt="" class="icon"></div>
									<h2 class="feature-title">Love &amp; Peace</h2>
									<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor.</p>
								</div>
							</div>
						</div> <!-- .row -->
					</div> <!-- .container -->
				</div> <!-- #about -->

				<div id="pastors" class="fullwidth-block" data-bg-color="#4a3173">
					<div class="container">
						<h2 class="section-title">Meet our pastors</h2>
						<p class="section-intro">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam dolorum accusantium in. Consequatur, optio. Dolore debitis velit corporis. Nostrum, facilis magni recusandae quaerat doloremque perferendis nulla ducimus ad labore cumque.</p>

						<div class="row">
							<div class="col-md-2 col-sm-3 col-xs-6">
								<div class="pastor">
									<img src="images/pastor-1.jpg" alt="" class="pastor-image">
									<h3 class="pastor-name">john Blumkin</h3>
									<small class="date">Joined 1998</small>
								</div>
							</div>
							<div class="col-md-2 col-sm-3 col-xs-6">
								<div class="pastor">
									<img src="images/pastor-2.jpg" alt="" class="pastor-image">
									<h3 class="pastor-name">Ben Johnson</h3>
									<small class="date">Joined 2001</small>
								</div>
							</div>
							<div class="col-md-2 col-sm-3 col-xs-6">
								<div class="pastor">
									<img src="images/pastor-3.jpg" alt="" class="pastor-image">
									<h3 class="pastor-name">Richard Star</h3>
									<small class="date">Joined 2003</small>
								</div>
							</div>
							<div class="col-md-2 col-sm-3 col-xs-6">
								<div class="pastor">
									<img src="images/pastor-4.jpg" alt="" class="pastor-image">
									<h3 class="pastor-name">Steven Dawkins</h3>
									<small class="date">Joined 2005</small>
								</div>
							</div>
							<div class="col-md-2 col-sm-3 col-xs-6">
								<div class="pastor">
									<img src="images/pastor-5.jpg" alt="" class="pastor-image">
									<h3 class="pastor-name">Richard Star</h3>
									<small class="date">Joined 2008</small>
								</div>
							</div>
							<div class="col-md-2 col-sm-3 col-xs-6">
								<div class="pastor">
									<img src="images/pastor-6.jpg" alt="" class="pastor-image">
									<h3 class="pastor-name">Steven Dawkins</h3>
									<small class="date">Joined 2010</small>
								</div>
							</div>
						</div> <!-- .row -->

						<div class="text-center">
							<a href="#" class="button">View all our pastors</a>
						</div>
					</div> <!-- .container -->
				</div> <!-- #pastors -->

				<div id="events" class="fullwidth-block">
					<div class="container">
						<h2 class="section-title">Upcoming events</h2>
						<div class="text-center">
							<a href="#" class="prev-events"><img src="images/arrow-left.png" alt=""></a>
							<a href="#" class="next-events"><img src="images/arrow-right.png" alt=""></a>
						</div>
						<div class="row">
							<div class="col-md-3 col-sm-6">
								<div class="event">
									<img src="images/event-1.jpg" alt="" class="event-image">
									<h3 class="event-title"><a href="#">Nam libero tempore cum soluta nobis eligendi</a></h3>
									<div class="event-meta"><span class="date"><i class="fa fa-calendar"></i> 02/04/2014</span><span class="location"><i class="fa fa-map-marker"></i>Los Angeles</span></div>
									<a href="#" class="button">Get more information</a>
								</div>
							</div>
							<div class="col-md-3 col-sm-6">
								<div class="event">
									<img src="images/event-2.jpg" alt="" class="event-image">
									<h3 class="event-title"><a href="">Nam libero tempore cum soluta nobis eligendi</a></h3>
									<div class="event-meta"><span class="date"><i class="fa fa-calendar"></i> 02/04/2014</span><span class="location"><i class="fa fa-map-marker"></i>Los Angeles</span></div>
									<a href="#" class="button">Get more information</a>
								</div>
							</div>
							<div class="col-md-3 col-sm-6">
								<div class="event">
									<img src="images/event-3.jpg" alt="" class="event-image">
									<h3 class="event-title"><a href="">Nam libero tempore cum soluta nobis eligendi</a></h3>
									<div class="event-meta"><span class="date"><i class="fa fa-calendar"></i> 02/04/2014</span><span class="location"><i class="fa fa-map-marker"></i>Los Angeles</span></div>
									<a href="#" class="button">Get more information</a>
								</div>
							</div>
							<div class="col-md-3 col-sm-6">
								<div class="event">
									<img src="images/event-4.jpg" alt="" class="event-image">
									<h3 class="event-title"><a href="">Nam libero tempore cum soluta nobis eligendi</a></h3>
									<div class="event-meta"><span class="date"><i class="fa fa-calendar"></i> 02/04/2014</span><span class="location"><i class="fa fa-map-marker"></i>Los Angeles</span></div>
									<a href="#" class="button">Get more information</a>
								</div>
							</div>
						</div> <!-- .row -->
					</div> <!-- .container -->
				</div> <!-- #events -->

				<div id="seremons" class="fullwidth-block" data-bg-color="#4a3173">
					<div class="container">
						<div class="row">
							<div class="col-md-5">
								<h3 class="section-title">Upcoming seremons</h3>
								<ul class="seremon-list">
									<li>
										<h3 class="seremon-title"><a href="#">Labore et dolore magna aliqua</a></h3>
										<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquipommodo consequat.</p>
										<div class="seremon-meta">
											<span><i class="fa fa-calendar"></i> <strong>Date:</strong> 05/04/2014</span>
											<span><i class="fa fa-user"></i> <strong>Pastor:</strong> John Birman</span>
										</div>
									</li>
									<li>
										<h3 class="seremon-title"><a href="#">Labore et dolore magna aliqua</a></h3>
										<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquipommodo consequat.</p>
										<div class="seremon-meta">
											<span><i class="fa fa-calendar"></i> <strong>Date:</strong> 05/04/2014</span>
											<span><i class="fa fa-user"></i> <strong>Pastor:</strong> John Birman</span>
										</div>
									</li>
									<li>
										<h3 class="seremon-title"><a href="#">Labore et dolore magna aliqua</a></h3>
										<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquipommodo consequat.</p>
										<div class="seremon-meta">
											<span><i class="fa fa-calendar"></i> <strong>Date:</strong> 05/04/2014</span>
											<span><i class="fa fa-user"></i> <strong>Pastor:</strong> John Birman</span>
										</div>
									</li>
								</ul>

								<a href="#" class="button">See all upcoming seremons</a>
							</div>
							<div class="col-md-5 col-md-offset-2">
								<h3 class="section-title">Latest seremons</h3>
								<ul class="seremon-list">
									<li>
										<h3 class="seremon-title"><a href="#">Labore et dolore magna aliqua</a></h3>
										<div class="seremon-meta">
											<span><i class="fa fa-calendar"></i> <strong>Date:</strong> 05/04/2014</span>
											<span><i class="fa fa-user"></i> <strong>Pastor:</strong> John Birman</span>
										</div>
										<a href="#" class="button secondary"><img src="images/icon-headset.png" alt="" class="icon"> Audio record</a>
										<a href="#" class="button secondary"><img src="images/icon-film.png" alt=""> Video record</a>
									</li>
									<li>
										<h3 class="seremon-title"><a href="#">Labore et dolore magna aliqua</a></h3>
										<div class="seremon-meta">
											<span><i class="fa fa-calendar"></i> <strong>Date:</strong> 05/04/2014</span>
											<span><i class="fa fa-user"></i> <strong>Pastor:</strong> John Birman</span>
										</div>
										<a href="#" class="button secondary"><img src="images/icon-headset.png" alt="" class="icon"> Audio record</a>
										<a href="#" class="button secondary"><img src="images/icon-film.png" alt=""> Video record</a>
									</li>
									<li>
										<h3 class="seremon-title"><a href="#">Labore et dolore magna aliqua</a></h3>
										<div class="seremon-meta">
											<span><i class="fa fa-calendar"></i> <strong>Date:</strong> 05/04/2014</span>
											<span><i class="fa fa-user"></i> <strong>Pastor:</strong> John Birman</span>
										</div>
										<a href="#" class="button secondary"><img src="images/icon-headset.png" alt="" class="icon"> Audio record</a>
										<a href="#" class="button secondary"><img src="images/icon-film.png" alt=""> Video record</a>
									</li>
								</ul>

								<a href="#" class="button">See all latest seremons</a>
							</div>
						</div> <!-- .row -->
					</div> <!-- .container -->
				</div> <!-- #seremons -->

				<div id="families" class="fullwidth-block">
					<div class="container">
						<h2 class="section-title">Our families</h2>
						<p class="section-intro">Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam quis nostrud exercitation ullamco.</p>

						<div class="family-list">
							<figure class="family">
								<img src="images/family-1.jpg" alt="">
								<figcaption>
									<h3 class="family-name">Harrison</h3>
									<span class="arrow"></span>
								</figcaption>
							</figure>
							<figure class="family">
								<img src="images/family-2.jpg" alt="">
								<figcaption>
									<h3 class="family-name">Harrison</h3>
									<span class="arrow"></span>
								</figcaption>
							</figure>
							<figure class="family">
								<img src="images/family-3.jpg" alt="">
								<figcaption>
									<h3 class="family-name">Harrison</h3>
									<span class="arrow"></span>
								</figcaption>
							</figure>
							<figure class="family">
								<img src="images/family-4.jpg" alt="">
								<figcaption>
									<h3 class="family-name">Harrison</h3>
									<span class="arrow"></span>
								</figcaption>
							</figure>
							<figure class="family">
								<img src="images/family-5.jpg" alt="">
								<figcaption>
									<h3 class="family-name">Harrison</h3>
									<span class="arrow"></span>
								</figcaption>
							</figure>
							<figure class="family">
								<img src="images/family-6.jpg" alt="">
								<figcaption>
									<h3 class="family-name">Harrison</h3>
									<span class="arrow"></span>
								</figcaption>
							</figure>
							<figure class="family">
								<img src="images/family-7.jpg" alt="">
								<figcaption>
									<h3 class="family-name">Harrison</h3>
									<span class="arrow"></span>
								</figcaption>
							</figure>
							<figure class="family">
								<img src="images/family-8.jpg" alt="">
								<figcaption>
									<h3 class="family-name">Harrison</h3>
									<span class="arrow"></span>
								</figcaption>
							</figure>
							<figure class="family">
								<img src="images/family-9.jpg" alt="">
								<figcaption>
									<h3 class="family-name">Harrison</h3>
									<span class="arrow"></span>
								</figcaption>
							</figure>
							<figure class="family">
								<img src="images/family-10.jpg" alt="">
								<figcaption>
									<h3 class="family-name">Harrison</h3>
									<span class="arrow"></span>
								</figcaption>
							</figure>
						</div>

						<hr class="space">
						<div class="text-center">
							<a href="#" class="button">View all families</a>
						</div>
					</div> <!-- .container -->
				</div> <!-- #families -->

				<div id="contact" class="fullwidth-block" data-bg-color="#4a3173">
					<div class="container">
						<h2 class="section-title">Contact us</h2>
						<p class="section-intro">Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.</p>

						<div class="contact-detail">
							<span><img src="images/icon-marker.png" alt="" class="icon"> 294 Samuelson Rd, portage</span>
							<span><img src="images/icon-phone.png" alt="" class="icon"> (989) 589 423 553</span>
							<span><img src="images/icon-envelope.png" alt="" class="icon"> contact@patrichchurch.com</span>
						</div>

						<form class="contact-form">
							<div class="row">
								<div class="col-md-6">
									<div class="control"><input type="text" placeholder="Your name..."><img src="images/icon-user.png" alt="" class="icon"></div>
									<div class="control"><input type="text" placeholder="Email..."><img src="images/icon-email.png" alt="" class="icon"></div>
									<div class="control"><input type="text" placeholder="Website..."><img src="images/icon-globe.png" alt="" class="icon"></div>
								</div>
								<div class="col-md-6">
									<div class="control">
										<textarea name="" placeholder="Your message..."></textarea>
										<img src="images/icon-pen.png" alt="" class="icon">
									</div>
									<p class="text-right">
										<input type="submit" value="Send message">
									</p>
								</div>
							</div>
						</form>
					</div>
				</div>--%>

				 <%--<div class="map" data-latitude="-6.897789" data-longitude="107.621735"></div>--%>
			</main>
		</div>

		

		<script src="js/jquery-1.11.1.min.js"></script>
		<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false&amp;language=en"></script>
		<script src="js/plugins.js"></script>
		<script src="js/app.js"></script>
		
	</body>

</html>