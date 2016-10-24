<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<style type="text/css" role="stylesheet">
			*{
				margin: 0px;
				padding: 0px;
			}
			
			
			@media screen and (max-width:1023px){
				.container{
					width: 900px;
					margin: 0px auto;
				}
				.container .grid1{width: 75px;}
				.container .grid2{width: 150px;}
				.container .grid3{width: 225px;}
				.container .grid4{width: 300px;}
				.container .grid5{width: 375px;}
				.container .grid6{width: 450px;}
				.container .grid7{width: 525px;}
				.container .grid8{width: 600px;}
				.container .grid9{width: 675px;}
				.container .grid10{width: 750px;}
				.container .grid11{width: 825px;}
				.container .grid12{width: 900px;}
			}		
			@media screen and (min-width:1024px){
				.container{
					width: 100%;
					margin: 0px auto;
				}	
				.container .grid1{width: 8.333%;}
				.container .grid2{width: 16.666%;}
				.container .grid3{width: 25%;}
				.container .grid4{width: 33.333%;}
				.container .grid5{width: 41.666%;}
				.container .grid6{width: 50%;}
				.container .grid7{width: 58.333%;}
				.container .grid8{width: 66.666%;}
				.container .grid9{width: 75%;}
				.container .grid10{width: 83.333%;}
				.container .grid11{width: 91.666%;}
				.container .grid12{width: 100%;}	
			}
			
			.grid1,.grid2,.grid3
			,.grid4,.grid5,.grid6
			,.grid7,.grid8,.grid9
			,.grid10,.grid11,.grid12{
				float: left;
				/* border: 1px red solid;
				box-sizing: border-box; */
			}
			/* 
			.container .grid1{width: 75px;}
			.container .grid2{width: 150px;}
			.container .grid3{width: 225px;}
			.container .grid4{width: 300px;}
			.container .grid5{width: 375px;}
			.container .grid6{width: 450px;}
			.container .grid7{width: 525px;}
			.container .grid8{width: 600px;}
			.container .grid9{width: 675px;}
			.container .grid10{width: 750px;}
			.container .grid11{width: 825px;}
			.container .grid12{width: 900px;}
			.containerw .grid1{width: 8.333%;}
			.containerw .grid2{width: 16.666%;}
			.containerw .grid3{width: 25%;}
			.containerw .grid4{width: 33.333%;}
			.containerw .grid5{width: 41.666%;}
			.containerw .grid6{width: 50%;}
			.containerw .grid7{width: 58.333%;}
			.containerw .grid8{width: 66.666%;}
			.containerw .grid9{width: 75%;}
			.containerw .grid10{width: 83.333%;}
			.containerw .grid11{width: 91.666%;}
			.containerw .grid12{width: 100%;}
			 */
			.row{clear: both;}
			
			.header img{
				width: auto;
				height: 80px;
			}
			/* 
			.menu{
				background-color: pink;
				overflow: hidden;
			}
			.menu ul{
				list-style: none;
				width: 400px;
				overflow: hidden;
				background-color: hotpink;
				margin: 0px auto;
			}
			.menu ul>li{
				float: left;
			}
			.menu ul>li>a{
				display: inline-block;
				width: 100px;
				height: 40px;
				border-left: dashed 2px red;
				box-sizing: border-box;
				text-align: center;
				font-weight: bold;
				text-decoration: none;
				line-height: 40px;
			}
			.menu ul>li:last-child>a{
				border-right: dashed 2px red;
			} 
			*/
			.menu>div>a{
				display: inline-block;
				width: 100%;
				height: 40px;
				margin: 10px 0px 40px 0px;
				border-top: red 1px solid;
				border-bottom: red 1px solid;
				border-left: dashed 5px red;
				border-left-style: dotted;
				text-align: center;
				text-decoration: none;
				font-size: 1.6em;
				line-height: 40px;
			}
			.menu>div:nth-child(5)>a{
				border-right: dotted 5px red;
			}
			
			.menu2 ul{list-style: none;}
			.menu2 ul>li{}
			.menu2 ul>li>a{
				display: inline-block;
				width: 90%;
				height: 50px;
				background-color: orange;
				border-radius: 25px;
				border: red 5px solid;
				box-sizing: border-box;
				text-align: center;
				line-height: 40px;
				font-size: 1.6em;
				text-decoration: none;
				margin: 5px 0px;
				
			}
			.aside{
				height: 300px;
				background-color: #eee;
			}
						
		</style>
	</head>
	<body>
		<div class="container">
			<div class="header row">
				<div class="grid12">
					<img alt="logo" src="imgs/logo_ai.png">
				</div>
			</div>
			<!-- 
			<div class="menu row">
				<div class="grid12">
					<div>
					<ul>
						<li><a href="#">menu1</a></li>
						<li><a href="#">menu2</a></li>
						<li><a href="#">menu3</a></li>
						<li><a href="#">menu4</a></li>
					</ul>
					</div>
				</div>
			</div> 
			-->
			<div class="menu row">
				<div class="grid2">&nbsp;</div>
				<div class="grid2"><a href="#">menu1</a></div>
				<div class="grid2"><a href="#">menu2</a></div>
				<div class="grid2"><a href="#">menu3</a></div>
				<div class="grid2"><a href="#">menu4</a></div>
				<div class="grid2">&nbsp;</div>
			</div>
			<div class="row">
				<div class="menu2 grid3">
					<ul>
						<li><a href="#">menu1</a></li>
						<li><a href="#">menu2</a></li>
						<li><a href="#">menu3</a></li>
						<li><a href="#">menu4</a></li>
					</ul>
				</div>
				<div class="content grid6">
					<h1>환영합니다</h1>
					<p>한빛 교육센터 입니다</p>
					<img alt="" src="imgs/main.jpg" width="100%">
				</div>
				<div class="aside grid3">
					<p>광고란</p>
				</div>
			</div>
			<div class="footer grid12">
				<address>한빛교육센터강남센터 : 서울특별시 강남구 테헤란로 5길 11 유빌딩 3층</address>
				Copyright (c) 2015 한빛교육센터 All rights reserved. Hosting by (주)오마이사이트
			</div>
		</div>
	</body>
</html>











