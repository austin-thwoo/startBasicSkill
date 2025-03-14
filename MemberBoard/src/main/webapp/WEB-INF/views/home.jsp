<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<title>Hello, world!</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>
<body>


	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
		<div class="container">
			<a class="navbar-brand" href="#">Full Silider Bs.4.1.1 by
				Luckmoshy</a>
			<button class="bar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<c:if test="${signinAlert eq 'success'}">

						<script>alert("로그인 성공입니다.")</script>
					</c:if>
					<c:if test="${!empty mb_name}">
						<li class="nav-item active">${mb_name}님 어서오라눙!!!!</li>
						<li class="nav-item active"><a href="./">Home
								<span class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="https://namu.wiki/w/%EC%95%A0%EB%8B%88%EB%A9%94%EC%9D%B4%EC%85%98">About
								animation</a></li>
						<li class="nav-item"><a class="nav-link" href="logout">LOGOUT</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="mypage?mb_code=${mb_code}">MyPage</a>
						</li>
						
						<c:if test="${sessionScope.userlevel eq 'A'}">
							<li class="nav-item">
								<a class="nav-link" href="memberlist">VML</a>
							</li>
						</c:if>


					</c:if>
					<c:if test="${empty mb_name}">
						<li class="nav-item active"><a class="nav-link" href="">Home
								<span class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="https://namu.wiki/w/%EC%95%A0%EB%8B%88%EB%A9%94%EC%9D%B4%EC%85%98">About
								animation</a></li>
						<li class="nav-item"><a class="nav-link" href="signin">SignIn</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="signup">SignUp</a>
					</c:if>
					<c:if test="${alert eq 'success'}">
						
						<script>alert("회원가입 성공입니다.로그인해주세요")</script>
				
					</c:if>
					
				</ul>
			</div>
		</div>
	</nav>

	<header>
		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<!-- Slide One - Set the background image for this slide in the line below -->
				<div class="carousel-item active"
					style="background-image: url('https://3.bp.blogspot.com/-_7vaKiNZPXk/XCWoF-0xj7I/AAAAAAAAAMk/Bx7Ne5WLEvINHPDoG1jwY6rGO2d62pprwCKgBGAs/s1600/ux-design.jpeg')">
					<div class="carousel-caption d-none d-md-block">
						<h2 class="display-4">First Slide</h2>
						<p class="lead">This is a description for the first slide.</p>
					</div>
				</div>
				<!-- Slide Two - Set the background image for this slide in the line below -->
				<div class="carousel-item"
					style="background-image: url('https://4.bp.blogspot.com/-InDD3Hm_bhU/XB4_TK3TT7I/AAAAAAAAAJ4/r5tUeCOqq1MTchFh7D7pWdf582A4qYIIwCEwYBhgL/s1600/Businesswoman-working-at-a-computer-1280x720.jpg')">
					<div class="carousel-caption d-none d-md-block">
						<h2 class="display-4">Second Slide</h2>
						<p class="lead">This is a description for the second slide.</p>
					</div>
				</div>
				<!-- Slide Three - Set the background image for this slide in the line below -->
				<div class="carousel-item"
					style="background-image: url('https://1.bp.blogspot.com/-GWl5F8P4t-8/XB4_VV4VE5I/AAAAAAAAAKE/SmHRzas-LpMpDBoLn6otR9AznVsr6L7OgCEwYBhgL/s1600/t1larg.africa.cnn.jpg')">
					<div class="carousel-caption d-none d-md-block">
						<h2 class="display-4">Third Slide</h2>
						<p class="lead">This is a description for the third slide.</p>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</header>

	<!-- Page Content -->
	<section class="py-5 text-center">
		<div class="container">
			<p>
			<p>
			<p>
			<h2 class="text-center">What is your favorite Animation genre?</h2>
			<h5 class="text-muted mb-5 text-center">
				If you're an initiator, click on me<a href="recommendation"> >ㅂ<
				</a>
				</p>
			</h5>
			<div class="row">
				<div class="col-sm-6 col-lg-4 mb-3">
					<svg class="lnr text-primary services-icon">
              <use xlink:href="#lnr-magic-wand"></use>
            </svg>
					<h4>Fantasy</h4>
					<p class="text-muted">If you're an initiator, click on me</p>
				</div>
				<div class="col-sm-6 col-lg-4 mb-3">
					<svg class="lnr text-primary services-icon">
              <use xlink:href="#lnr-heart"></use>
            </svg>
					<h4>romance</h4>
					<p class="text-muted">Tempor aute occaecat pariatur esse aute
						amet.</p>
				</div>
				<div class="col-sm-6 col-lg-4 mb-3">
					<svg class="lnr text-primary services-icon">
              <use xlink:href="#lnr-rocket"></use>
            </svg>
					<h4>Horror</h4>
					<p class="text-muted">Voluptate ex irure ipsum ipsum ullamco
						ipsum reprehenderit non ut mollit commodo.</p>
				</div>
				<div class="col-sm-6 col-lg-4 mb-3">
					<svg class="lnr text-primary services-icon">
              <use xlink:href="#lnr-paperclip"></use>
            </svg>
					<h4>Action</h4>
					<p class="text-muted">Tempor commodo nostrud ex Lorem occaecat
						duis occaecat minim.</p>
				</div>
				<div class="col-sm-6 col-lg-4 mb-3">
					<svg class="lnr text-primary services-icon">
              <use xlink:href="#lnr-screen"></use>
            </svg>
					<h4>Harem</h4>
					<p class="text-muted">Et fugiat sint occaecat voluptate
						incididunt anim nostrud ea cillum cillum consequat.</p>
				</div>
				<div class="col-sm-6 col-lg-4 mb-3">
					<svg class="lnr text-primary services-icon">
              <use xlink:href="#lnr-inbox"></use>
            </svg>
					<h4>Comic</h4>
					<p class="text-muted">Et labore tempor et adipisicing dolor.</p>
				</div>
			</div>
		</div>
	</section>
	<section class="main">
		<div class="container mt-4">
			<h1 class="text-center mb-4 p-4 text-secondary">From The
				animation</h1>
			<div class="row">

				<div class="card-columns">
					<div class="card shadow border-0">
						<img class="card-img-top"
							src="https://4.bp.blogspot.com/-InDD3Hm_bhU/XB4_TK3TT7I/AAAAAAAAAJ4/r5tUeCOqq1MTchFh7D7pWdf582A4qYIIwCEwYBhgL/s1600/Businesswoman-working-at-a-computer-1280x720.jpg"
							alt="Card image cap">
						<div class="card-body">
							<h5 class="card-title">Card title that wraps to a new line</h5>
							<p class="card-text">This is a longer card with supporting
								text below as a natural lead-in to additional content. This
								content is a little bit longer.</p>
						</div>
					</div>
					<div class="card shadow border-0  p-3">
						<blockquote class="blockquote mb-0 card-body">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Integer posuere erat a ante.</p>
							<footer class="blockquote-footer">
								<small class="text-muted"> Someone famous in <cite
									title="Source Title">Source Title</cite>
								</small>
							</footer>
						</blockquote>
					</div>
					<div class="card shadow border-0">
						<img class="card-img-top"
							src="https://4.bp.blogspot.com/-InDD3Hm_bhU/XB4_TK3TT7I/AAAAAAAAAJ4/r5tUeCOqq1MTchFh7D7pWdf582A4qYIIwCEwYBhgL/s1600/Businesswoman-working-at-a-computer-1280x720.jpg"
							alt="Card image cap">
						<div class="card-body">
							<h5 class="card-title">Card title</h5>
							<p class="card-text">This card has supporting text below as a
								natural lead-in to additional content.</p>
							<p class="card-text">
								<small class="text-muted">Last updated 3 mins ago</small>
							</p>
						</div>
					</div>
					<div
						class="card shadow border-0 bg-primary text-white text-center p-3">
						<blockquote class="blockquote mb-0">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Integer posuere erat.</p>
							<footer class="blockquote-footer">
								<small> Someone famous in <cite title="Source Title">Source
										Title</cite>
								</small>
							</footer>
						</blockquote>
					</div>
					<div class="card shadow border-0 text-center">
						<div class="card-body">
							<h5 class="card-title">Card title</h5>
							<p class="card-text">This card has a regular title and short
								paragraphy of text below it.</p>
							<p class="card-text">
								<small class="text-muted">Last updated 3 mins ago</small>
							</p>
						</div>
					</div>
					<div class="card shadow border-0">
						<img class="card-img"
							src="https://4.bp.blogspot.com/-InDD3Hm_bhU/XB4_TK3TT7I/AAAAAAAAAJ4/r5tUeCOqq1MTchFh7D7pWdf582A4qYIIwCEwYBhgL/s1600/Businesswoman-working-at-a-computer-1280x720.jpg"
							alt="Card image">
					</div>
					<div class="card shadow border-0 p-3 text-right">
						<blockquote class="blockquote mb-0">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Integer posuere erat a ante.</p>
							<footer class="blockquote-footer">
								<small class="text-muted"> Someone famous in <cite
									title="Source Title">Source Title</cite>
								</small>
							</footer>
						</blockquote>
					</div>
					<div class="card shadow border-0">
						<div class="card-body">
							<h5 class="card-title">Card title</h5>
							<p class="card-text">This is another card with title and
								supporting text below. This card has some additional content to
								make it slightly taller overall.</p>
							<p class="card-text">
								<small class="text-muted">Last updated 3 mins ago</small>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Header -->
	<header class="bg-primary text-center py-5 mb-4">
		<div class="container">
			<h1 class="font-weight-light text-white">Meet the Team</h1>
		</div>
	</header>

	<!-- Page Content -->
	<div class="container">
		<div class="row">
			<!-- Team Member 1 -->
			<div class="col-xl-3 col-md-6 mb-4">
				<div class="card border-0 shadow">
					<img src="https://source.unsplash.com/TMgQMXoglsM/500x350"
						class="card-img-top" alt="...">
					<div class="card-body text-center">
						<h5 class="card-title mb-0">Team Member</h5>
						<div class="card-text text-black-50">Austin</div>
					</div>
				</div>
			</div>
			<!-- Team Member 2 -->
			<div class="col-xl-3 col-md-6 mb-4">
				<div class="card border-0 shadow">
					<img src="https://source.unsplash.com/9UVmlIb0wJU/500x350"
						class="card-img-top" alt="...">
					<div class="card-body text-center">
						<h5 class="card-title mb-0">Team Member</h5>
						<div class="card-text text-black-50">Thwoo</div>
					</div>
				</div>
			</div>
			<!-- Team Member 3 -->
			<div class="col-xl-3 col-md-6 mb-4">
				<div class="card border-0 shadow">
					<img src="https://source.unsplash.com/sNut2MqSmds/500x350"
						class="card-img-top" alt="...">
					<div class="card-body text-center">
						<h5 class="card-title mb-0">Team Member</h5>
						<div class="card-text text-black-50">Web Developer</div>
					</div>
				</div>
			</div>
			<!-- Team Member 4 -->
			<div class="col-xl-3 col-md-6 mb-4">
				<div class="card border-0 shadow">
					<img src="https://source.unsplash.com/ZI6p3i9SbVU/500x350"
						class="card-img-top" alt="...">
					<div class="card-body text-center">
						<h5 class="card-title mb-0">Team Member</h5>
						<div class="card-text text-black-50">Web Developer</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /.row -->

	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<blockquote class="blockquote text-center mb-0">
					<svg class="lnr text-muted quote-icon pull-left">
            <use xlink:href="#lnr-heart">                                       
          </use></svg>
					<p class="mb-0">Keep in touch with me for more Theme right
						here!</p>
					<footer class="blockquote-footer">
						Luckmoshy Designing <cite title="Source Title">Webublog @</cite>
					</footer>
				</blockquote>
			</div>
			<div class="col-md-4">
				<a
					class="flot-right btn btn-white border-0 rounded shadow post-pager-link p-0 next ml-4"
					href=""> <span class="d-flex h-100"> <span
						class="p-3 d-flex flex-column justify-content-center w-100">
							<div class="indicator mb-1 text-uppercase text-muted">
								webublog<i class="fa fa-bars ml-2"></i>
							</div>
							<p class="f-13">See next awesome themes</p>
					</span> <span class="bg-primary p-2 d-flex align-items-center text-white">
							<i class="fa fa-arrow-circle-right"></i>
					</span>
				</span>
				</a>
			</div>
		</div>

	</div>
	<!-- /.container -->
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
	<script src="https://cdn.linearicons.com/free/1.0.0/svgembedder.min.js"></script>

</body>
</html>
