<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Strongly Typed by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>Strongly Typed by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />

<style>
#img1 {
	display: block;
	width: 200px;
	height: 200px;
}

.featured {
	background-color: floralwhite !important;
}

#goReport {
	color: floralwhite !important;
}
</style>
</head>
<body class="homepage is-preload">

	<div id="page-wrapper">

		<!-- Header -->
		<section id="header">

			<div class="container">

				<!-- Logo -->
				<h1 id="logo">
					<a href="index.jsp">잘못된 접근입니다</a>
				</h1>
				<p>요청하신 페이지를 이용하실 수 없습니다.</p>
				<script>
					alert("로그인 후 이용해 주세요.");
					document.location.href="login.jsp";
				</script>
				<!-- Nav -->
						<nav id="nav">
							<ul>
								
								<li><a class="icon solid fa-home" href="index.jsp"><span>HOME</span></a></li>
								
								<li display = hidden>
									<a href="#" class="icon fa-chart-bar"><span>회원가입/로그인</span></a>
									<ul>
										<li><a href="join.jsp">회원가입</a></li>
										<li><a href="login.jsp">로그인</a></li>
									</ul>
								</li>
								<li><a class="icon solid fa-cog" href="camRecog.jsp"><span>화장품 성분 분석</span></a></li>
								<li><a class="icon solid fa-retweet" href="mise"><span>날씨별 화장품 추천</span></a></li>
								<li><a class="icon solid fa-sitemap" href="BefoHis"><span>나의 사용목록 추가</span></a></li>
								<li><a class="icon solid fa-sitemap" href="BefoAller"><span>알러지 제보</span></a></li>
							</ul>
						</nav>

					</div>
				</section>
		<!-- Features -->
		<section id="features" class="backimg">
			<div class="container">
				<div class="row aln-center">
					<div class="col-4 col-6-medium col-12-small">

						<!-- Feature -->
						<section>
							<a href="" class="image featured" onclick="history.back(-1);"><img
								id=img1 src="./images/back.jpg" alt="" /></a>
							<header>
								<h3>돌아가기</h3>
							</header>
						</section>

					</div>
					<div class="col-4 col-6-medium col-12-small">

						<!-- Feature -->
						<section>
							<a href="login.jsp" class="image featured"><img id=img1
								src="./images/login.jpg" alt="" /></a>
							<header>
								<h3>로그인하기</h3>
							</header>

						</section>

					</div>


				</div>
			</div>
		</section>
</body>
</html>