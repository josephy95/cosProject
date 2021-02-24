<%@page import="com.model.ReportDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@page import="com.model.MemHistoryDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.memberDTO"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>Right Sidebar - Strongly Typed by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<script src="assets/js/jquery-3.5.1.min.js"></script>
		<script type="text/javascript">
                function insertAller(i){
/*         		console.log(i+ "클릭");
 */        		var value = $('.va'+i );
        		/* for(var i = 0; i < value.length - 1; i++ ){
        			console.log(value[i].innerHTML);
        		} */
        			var comVal = value[0].innerHTML;
        			var proVal = value[1].innerHTML;
        			var symVal = value[value.length - 1].value;
        			/* console.log(comVal);
        			console.log(proVal);
        			console.log(symVal); */
        	/* 		console.log(comVal+"변수에 넣어서 확인")
        			console.log(value[0].innerHTML+"확인용")
        			console.log(value[1].innerHTML+"확인용 2")
        			console.log(value[value.length - 1].value +"확인용3")
        		console.log(value[value.length - 1].value); */
        		$.ajax({
        			url : "allerInsert.jsp",
        			type : "GET",
        			data : {com: comVal , pro : proVal, sym : symVal},
        			dataType : "json",
        			success : function(res){
        				$('#ajaxTable2').empty();
        				        				
        				for(let j = 0; j<res.aller.length; j++){
        					
        					let num = res.aller[j].num;
        					let company = res.aller[j].company;
        					let proName = res.aller[j].proName;
        					let symptom = res.aller[j].symptom;
        					
        					$('#ajaxTable2').append("<tr><td>"+num+"번</td><td>"+company+"</td><td>"+proName+"</td><td>"+symptom+"</td></tr>");
        				}
        				// 알러지 제보시 알러지 제보 목록 테이블로 이동
        				var offset = $('.badTable').offset();
        				$('html,body').animate({scrollTop : offset.top},400);
        				
        			},
        			error : function(a,b,c){
        				alert("fail")
        				alert(b)
        				alert(c)
        			}
        		})
        		
        	}
        
        
        </script>
        <style>
        	table td {
			vertical-align: middle !important;
		}
     
        
        </style>
	</head>
	<body class="right-sidebar is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<section id="header">
					<div class="container">

						<!-- Logo -->
							<h1 id="logo">알러지 제보 페이지<a href="index.html"></a></h1>
							<p>화장품 성분으로 인해 이상 증상이 있다면 <br>증상을 제보해 해주세요!</p>
							
							
		

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

			<!-- Main -->
				<section id="main">
					<div class="container">
						<div class="row">

							<!-- Content -->
								<div id="content" class="col-8 col-12-medium">

									<!-- Post -->
										<article class="box post">
<% memberDTO dto = (memberDTO)session.getAttribute("list");
	String name = dto.getName();
	
%>
											<div class = "nuribox" id="memList">
											
											
											
      <h1><strong style="font-size: 28px;"><%=name %> </strong>님의 이용목록 <strong>🤧</strong></h1>
      <br>
      <table  class = "badTable2" style="text-align: center; border: 1px solid">
         <thead>
            <tr>
               <th style="text-align: center; width: 100px; border: 1px;">번호</th>
               <th style="text-align: center; width: 120px; border: 1px;">회사</th>
               <th style="text-align: center; width: 300px; border: 1px;">제품명</th>
               <th style="text-align: center; width: 150px; border: 1px;">증상</th>
               <th style="text-align: center; width: 150px; border: 1px;">제보</th>
               
            </tr>
         </thead>
         <tbody id = "ajaxTable">
         <%ArrayList<ReportDTO> badArray = (ArrayList)session.getAttribute("badList"); %>
         <%for(int i = 0; i < badArray.size(); i++) {%>
	         <tr>
	             <td><%=i+1 %>번</td>
		         <td class="company va<%= i %>"><%=badArray.get(i).getCompany() %></td>
		         <td class="proName va<%= i %>"><%=badArray.get(i).getProName() %></td>
		         <td>
		         	<select id="insertAller" name="mySelect" class="va<%= i %>" style="width : 87px; text-align-last: center; cursor : pointer">
		         	
		         		<option hidden>==선택==</option>
		         		<option value="발진">발진</option>
		         		<option value="두드러기">두드러기</option>
		         		<option value="눈충혈">눈충혈</option>
		         		<option value="가려움">가려움</option>
		         		<option value="홍반">홍반</option>
		         	</select>
		         </td>
		         <td class="hello" ><button style="font-family: inherit; background : #e9a19b;"   onclick="insertAller(<%= i %>)">제보</button></td>
		         
		         
		         
		          
		        	
	         </tr>
	      <%} %>
         </tbody>
        </table>
        
        
        
        
        
        
     	 <br>
         <h1><strong style="font-size: 28px;"><%=name %> </strong> 님의 알러지 제보 목록</h1>
         <br>
         <table  class = "badTable" style="text-align: center; border: 1px solid">
         <thead>
            <tr>
            
               <th style="text-align: center; width: 100px; border: 1px;">번호</th>
               <th style="text-align: center; width: 120px; border: 1px;">회사</th>
               <th style="text-align: center; width: 300px; border: 1px;">제품명</th>
               <th style="text-align: center; width: 150px; border: 1px;">증상</th>
            </tr>
         </thead>
         <tbody id = "ajaxTable2">
         <%ArrayList<ReportDTO> alArray = (ArrayList)session.getAttribute("allerList"); %>
         <%for(int i = 0; i < alArray.size(); i++) {%>
	         <tr>
	             <td style="text-align: center; width: 100px; border: 1px;"><%=i+1 %>번</td>
		         <td style="text-align: center; width: 120px; border: 1px;"><%=alArray.get(i).getCompany() %></td>
		         <td style="text-align: center; width: 300px; border: 1px;"><%=alArray.get(i).getProName() %></td>
		         <td style="text-align: center; width: 150px; border: 1px;"><%=alArray.get(i).getSymptom() %></td>
	         </tr>
	      <%} %>
         </tbody>
        </table>
      </div>
										</article>

								</div>



								</div>

						</div>
					</div>
				</section>

			<!-- Footer -->
				<section id="footer">
					
					<div id="copyright" class="container">
						<ul class="links">
							<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">JIN6IX__O</a></li>
						</ul>
					</div>
				</section>

		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>