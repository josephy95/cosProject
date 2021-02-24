<%@page import="com.model.memberDTO"%>
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
<title>Left Sidebar - Strongly Typed by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />

<style>
html, body {
	margin: 0;
	padding: 0;
	height: 100%;
	width: 100%;
}

#header1 {
	position: sticky;
	z-index: 999;
	color: white;
	text-align: center;
	transform: translate(-50%, -50%);
}

#header>p {
	font-size: 0.9em;
}

#camera, #camera--view, #camera--sensor, #camera--output {
	position: inherit;
	height: 290px;
	width: 350px;
	object-fit: contain;
}

#camera--view, #camera--sensor, #camera--output {
	transform: scaleX(-1);
	filter: FlipH;
}

#camera--trigger, #sendUrl {
	width: 180px;
	color: white;
	background-color: black;
	font-size: 16px;
	border-radius: 30px;
	border: none;
	text-align: center;
	box-shadow: 0 5px 10px 0 rgba(0, 0, 0, 0, 0.2);
	position: sticky;
	bottom: 30px;
}

.taken {
	height: 280px !important;
	width: 560px !important;
}

#buttons {
	display: flex;
	justify-content: center; /* 완전 딱 붙여서 하는거 */
	justify-content: space-evenly; /* 가운데 살짝 띄워짐 */
}

#camera--sensor {
	visibility: hidden;
	width: 0;
	/* 캡쳐 이미지 저장하는 캔버스
        	사용자가 찍은 사진은 img 태그에서 보여주므로 사용자 눈에 안보여도 되므로 안보이게끔 설정*/
}

#camera--output, #camera--view {
	transform: rotateY(180deg);
	-webkit-transform: rotateY(0deg); /* Safari and Chrome */
	-moz-transform: rotateY(180deg); /* Firefox */
	/* 사진을 거울처럼 보기 */
	position: contain;
}
</style>
<script type="text/javascript" src="assets/js/jquery-3.5.1.min.js"></script>

</head>
<body class="left-sidebar is-preload">
	<%
memberDTO member = (memberDTO)session.getAttribute("list");
String id = member.getId();
%>
	<div id="page-wrapper">

		<!-- Header -->

		<section id="header">
			<div class="container">

				<!-- Logo -->
				<h1 id="logo">
					<a href="index.jsp"> Search Ingredient 준석아 알려줘</a>
				</h1>
				<p>카메라를 이용한 성분 확인</p>

				<!-- Logo -->

			

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
								<li><a class="icon solid fa-cog" href="camRecog.jsp"><span>OCR 이용 이미지 인식</span></a></li>
								<li><a class="icon solid fa-retweet" href="mise"><span>날씨별 화장품 추천</span></a></li>
								<li><a class="icon solid fa-sitemap" href="BefoHis"><span>나의 사용목록 추가</span></a></li>
								<li><a class="icon solid fa-sitemap" href="BefoAller"><span>알러지 제보</span></a></li>
							</ul>
						</nav>





			</div>
		</section>
		<!-- Header -->
		<!-- Main -->
		<section id="main">
			<div class="container">
				








					<!-- Content -->
					<div id="content" class="col-8 col-12-medium imp-medium">

						<!-- Post --><!-- 
						<article class="box post"> -->
							<header1 align="center">
							<h2>촬영을 통해 성분을 분석하고 <br>나에게 맞지 않는 성분을 찾아요.</h2>
							</header1>
							<br>
							<div style="text-align: center;">
								<main id="camera">
									<canvas id="camera--sensor"></canvas>

									<!-- 기기의 카메라에 접근하여 영상을 페이지에 재생한다. -->
									<video id="camera--view" autoplay playsinline
										style="visibility: hidden; width: 0; height: 0;"></video>

									<img src="./images/cam.png" alt="" id="camera--output"
										style="position: absolute; padding-right: 41px">
									<!-- 고라파덕 부분에 카메라 이미지 넣어서 찍는거 조절하기... img 크기 조절도 해야해 -->

								</main>
							</div>
					<!-- 

						</article> -->
						<div style="width: 150px; height: 150px;"></div>

						<div id="buttons">

							<%-- <form action="http://118.40.82.69:9000/imgUp" method="post"
								enctype="multipart/form-data">
								<input type="hidden" name='memId' value="<%=id%>"> <input
									type="hidden" name="inputUrl" id="inputUrl" value="">
								<input type="submit" id="sendUrl" value="분석하기">
							</form> --%>
							
							
							<button id="sendUrl" style ="font-family: inherit;" >분석하기</button>
							<button id="camera--trigger" style ="font-family: inherit;">사진촬영</button>
						</div>

						<p></p>
					</div>

				
			</div>
		</section>

		<!-- Footer -->
		<section id="footer">

			<div id="copyright" class="container">
				<ul class="links">
					<li>&copy; Untitled. All rights reserved.</li>
					<li>Design: <a href="http://html5up.net">JIN6IX__O</a></li>
				</ul>
			</div>
		</section>

	</div>
	<script>

        let constraints = { video: { facingMode: "user"}, audio: false};
        const cameraView = document.querySelector("#camera--view");
        const cameraOutput = document.querySelector("#camera--output");
        const cameraSensor = document.querySelector("#camera--sensor");
        const cameraTrigger = document.querySelector("#camera--trigger");


        function cameraStart(){
            navigator.mediaDevices.getUserMedia(constraints)
                .then(function(stream){
                    track = stream.getTracks()[0];
                    cameraView.srcObject = stream;

                })
                .catch(function(error){
                    console.error("카메라에 문제가 있습니다.", error);
                })
        }
		
        var imgUrl
        //촬영 버튼 클릭 리스너
        cameraTrigger.addEventListener("click", function(){
            
            cameraSensor.width = cameraView.videoWidth; //640으로 정해져서 나오네?
            cameraSensor.height = cameraView.videoHeight;
            cameraSensor.getContext("2d").drawImage(cameraView, 0, 0);
            cameraOutput.src = cameraSensor.toDataURL("image/webp");
            imgUrl = $("#camera--output").attr('src');
            // $("#inputUrl").val(imgUrl); 인풋 히든 타입에 넣을 값 
            // alert(imgUrl); imgUrl 이 잘 전달되는지 확인했음 잘 전달됨 
            cameraOutput.classList.add("taken");
            console.log(cameraSensor.height);
          
            $("#camera--output").css("padding-right", "200px");
        });
       /*  function imgSend(){
        	$.ajax({
        		url : "http://118.40.82.69.9000/imgUp",
        		type : "POST",
        		data : {img : imgUrl}
        	})
        } */
    
        // 페이지가 로드되면 함수 실행
        window.addEventListener("load", cameraStart, false);
        
        $("#sendUrl").click(function () {
            var id = "<%=id%>";
            var url = imgUrl;
            $.ajax({
                url: "http://118.40.82.69:9000/imgUp",
                type: "GET",
                data: { memId: id},
                dataType: "json",
                success: function (result) {
/* 		    			alert(result); 바꿔
*/		    $('#main').empty();
                    // 나랑 안맞는 성분 개수 길이
                    console.log("들어오니");
                    console.log(result.myNotData.length);
                    let my = result.myNotData.length;
                    // 유해성분 개수 길이
                    let harm = result.harmfulList.length;
                    // 나머지 성분 개수 길이
                    let rest = result.imgData.length;

                    let total = my + harm + rest;
                    let dv1Width = parseInt(600 * (my / total));
                    let dv2Width = parseInt(600 * (harm / total));
                    let dv3Width = parseInt(600 * (rest / total));
					
                    $('#main').css("text-align", "-webkit-center");
                    
                    $('#main').append("<br><br>")
                    $('#main').append("<div style ='text-align: -webkit-center;'>")
                    $('#main').append("<div style='display: flex; width: 600px;' id='colorContainer'><div style='background-color: #99A1C6; height: 5rem; width :" + dv1Width + "px;' class='dv1'> </div><div class='dv2' style='background-color: #E9A19B; height: 5rem; width :" + dv2Width + "px;'> </div><div class='dv3' style = 'background-color: #86DCBD; height: 5rem;width :" + dv3Width + "px;'> </div></div>")
                    $('#main').append("<br>")
                	$('#main').append("<div>")
                	
                	// 바의 색깔이 어떤걸 의미하는지 알려주는 코드
                	$('#main').append("<div style='display: flex; justify-content: center;'><div style='width: 20px; height: 20px; background-color: #99A1C6;'></div><span style='padding-left: 10px;'>나랑 안맞는 성분</span><div style='width: 20px; height: 20px; background-color: #E9A19B; margin-left: 10px;'></div><span style='padding-left: 10px;'>유해 성분</span><div style='width: 20px; height: 20px; background-color: #86DCBD; margin-left: 10px;'></div><span style='padding-left: 10px;'>나머지 성분</span></div></div>");
                  
                },
                error: function (a, b, c) {
                    alert("fail")
                    alert(b)
                    alert(c)
                }
            })
        });
    </script>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>