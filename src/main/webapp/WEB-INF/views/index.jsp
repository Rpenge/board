<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- 진행 방법 -->
<!-- jsp요청 -> controller -> Service-> Mapper-> DB 쿼리실행 -->
<html ng-app="myApp">
<head>
		<!-- js요청 -->
		<script src="${pageContext.request.contextPath}/resource/js/angular.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

		<script src="${pageContext.request.contextPath}/resource/js/bootstrap.bundle.min.js"></script>
		<script src="${pageContext.request.contextPath}/resource/js/bootstrap.js"></script>
		
		<%-- 		<script src="${pageContext.request.contextPath}/resource/js/controller/test.js"></script> --%>
		<script src="${pageContext.request.contextPath}/resource/js/config/Aroute.js"></script>
		<script src="${pageContext.request.contextPath}/resource/js/controller/Atest.js"></script>
		
		
		<!-- jsp요청 -->
		
		
		<!-- CSS -->
		<link rel="stylesheet"  href="${pageContext.request.contextPath}/resource/css/style.css">
		<link rel="stylesheet" 	href="${pageContext.request.contextPath}/resource/css/bootstrap.css">
		<link rel="stylesheet" 	href="${pageContext.request.contextPath}/resource/css/bootstrap-responsive.min.css">
		
		<!-- 게시판 이름 -->
		<title>게시판</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
</head>


<body ng-controller="myAppCtrl">
<!-- ---------------------------------상단-------------------------------------------- -->
		<!-- 상단 로고와 메뉴 -->
		<div class= "container-fluid ">
				<div class="row"  id="container2">
				
						<!-- 로고 부분 -->
						<div class ="col col-1 navbar " id="navbar-example2" 	>
								<a class="navbar-brand" href="#"><img class="img-responsive" src="/resource/img/systemk.png" alt="Bootstrap" width=auto; height="50px";></a>
						</div>
						
						<div class ="col col-7">
			
						</div> 
						
						<div class ="col col-1 navbar navbar-default navbar-fixed-top" id="navbar-example2" 	>
									<div class="navbar-header navbar-expand-sm ">
											<button type="button" class="btn navbar-light navbar-toggle   navbar-collapse justify-content-end" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">홈</button>
									</div>
						</div>
						
						<div class ="col col-1 navbar navbar-default navbar-fixed-top" id="navbar-example2" 	>
									<div class="navbar-header navbar-expand-sm ">
											<button type="button" class="btn navbar-light navbar-toggle   navbar-collapse justify-content-end" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">게시판</button>
									</div>
									<div id="navbar" class="navbar-collapse collapse" aria-expanded="false">
											<ul class="nav navbar-nav navbar-right ">
													<li role="presentation"><a href="#" class="badge badge-light ">게시판1</a></li>
													<li role="presentation"><a href="#" class="badge badge-light">게시판2</a></li>
													<li role="presentation"><a href="#" class="badge badge-light">게시판3</a></li>
											</ul>
									</div>
						</div>
						
						<div class ="col col-1 navbar navbar-default navbar-fixed-top" id="navbar-example2" 	>
									<div class="navbar-header navbar-expand-sm ">
											<button type="button" class="btn navbar-light navbar-toggle   navbar-collapse justify-content-end" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">Q&A</button>
									</div>
									<div id="navbar" class="navbar-collapse collapse" aria-expanded="false">
											<ul class="nav navbar-nav navbar-right ">
													<li role="presentation"><a href="#" class="badge badge-light ">무엇</a></li>
													<li role="presentation"><a href="#" class="badge badge-light">이든</a></li>
													<li role="presentation"><a href="#" class="badge badge-light">물어보세요</a></li>
											</ul>
									</div>
						</div>
						
						<div class ="col col-1 navbar navbar-default navbar-fixed-top" id="navbar-example2" 	>
									<div class="navbar-header navbar-expand-sm ">
											<button type="button" class="btn navbar-light navbar-toggle   navbar-collapse justify-content-end" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">보기</button>
									</div>
									<div id="navbar" class="navbar-collapse collapse" aria-expanded="false">
											<ul class="nav navbar-nav navbar-right ">
													<li role="presentation"><a href="#" class="badge badge-light ">참고</a></li>
													<li role="presentation"><a href="#" class="badge badge-light">사항</a></li>
													<li role="presentation"><a href="#" class="badge badge-light">정리</a></li>
											</ul>
									</div>
						</div>
				</div>
<!-- ---------------------------------중단-------------------------------------------- -->
			<!-- 중간 포토 체인지 -->
		<div class= "container-fluid">
			<div id="myCarousel" class="carousel slide">
					<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner">
							<div class="carousel-item active">
									<img src="resource/img/aa.jpg" class="w-100 h-5" alt="1">
							</div>
							<div class="carousel-item">
									<img src="resource/img/bb.jpg" class="w-100 h-5" alt=2">
							</div>
							<div class="carousel-item">
									<img src="resource/img/cc.jpg" class="w-100 h-5" alt="3">
							</div>
					</div>
					<a class="carousel-control-prev" href="#myCarousel" data-slide="prev"><span class="carousel-control-prev-icon"></span></a> 
					<a class="carousel-control-next" href="#myCarousel" data-slide="next"><span class="carousel-control-next-icon"></span></a>
			</div>
			</div>
<!-- ---------------------------------하단1(오른쪽)-------------------------------------------- -->	
			<!-- 획 나눠주기  -->
			<div class= "container">
					
					<!-- 사이즈가 992px이상일때 -->
					<div id="hidden">
						<div class="row">
							<div class ="col col-1">
									<ul class="nav navbar-nav navbar-right " >
											<li role="presentation"><a href="#" class="badge badge-light ">홈</a></li>
											<li role="presentation"><a href="#" class="badge badge-light ">게시판</a></li>
											<li role="presentation"><a href="#" class="badge badge-light">lace</a></li>
									</ul>
							</div>
							
							<!-- ---------------------------------하단1(왼쪽)-------------------------------------------- -->	
							<div class ="col col-11">		
							<!-- 게시판 구성 -->
							<div class="board_list_wrap2">
									<!-- ---------------------------------검색어 조회-------------------------------------------- -->	
									<table class="search_list ">
<!-- 											<th class="search_list1">  제조번호로 검색    </th> -->
											<th class="form_radio  search_list1"><form>
													  <input type="radio" id="mount" name="check" ng-model="typecheck" value="mount" checked="checked">
													  <label for="mount">제조번호</label>
													  <input type="radio" id="name" name="check"ng-model="typecheck" value="name">
													  <label for="name">이름</label>
											</form></th>
											<th class="search_list_box "><input class="search_list_input text-center" type="text" placeholder="검색어 입력" name="input_text" ng-model="Aipval">
											<button class="btn-group-lg btn-outline-secondary search_list2"ng-click="Asearch()">검색</button></th>
									</table>
									</div>    
									<!-- ---------------------------------검색어 조회-------------------------------------------- -->	
									<div class="board_list_wrap">
											<table class="board_list table-hover text-center " >
													<caption>게시판 목록</caption>
													
													<tr class="bg-light">
														<td>제조번호</td>
														<td>제품이름</td>
														<td>글쓴이</td>
														<td>작성일</td>
														<td>조회</td>
													</tr>
<!-- 													<tbody id="board_list2" >{{data.Atable}} -->
<!-- 													</tbody> -->
													<tr class="board_list_wrap" ng-repeat="item in test">
														<td>{{item.seq}}</td>
														<td>{{item.name}}</td>
														<td>{{item.sub}}</td>
														<td>{{item.reg_date}}</td>
														<td>{{item.cont}}</td>
													</tr>
													
											</table>
									</div>
									
									<!-- ------------------------------------DB추가 생성, 삭제------------------------------------------ -->
								  	<div class="btn-group" role="group" aria-label="Basic outlined example">
								  		  <button ng-click="btnadd()" type="button" class="btn  btn-outline-secondary"id= "btnadd" onclick="document.location='write'">DB추가</button>
										  <button ng-click="btndel()" type="button" class="btn  btn-outline-secondary"id= "btndel" onclick="document.location='delete'">DB삭제</button>
									</div>
								
							<!-- 페이지 넘기는 부분 -->
							<nav aria-label="Page navigation example">
									<ul class="pagination justify-content-center">
											<li class="page-item"><a class="page-link" href="#">Previous</a></li>
											<li class="page-item"><a class="page-link" href="#">1</a></li>
											<li class="page-item"><a class="page-link" href="#">2</a></li>
											<li class="page-item"><a class="page-link" href="#">3</a></li>
											<li class="page-item"><a class="page-link" href="#">Next</a></li>
									</ul>
							</nav>
						</div>
					</div>
				</div>
					<!------------------------------------- 사이즈가 992px이하일때 ------------------------------------>
			<div id="appear">
				
			</div>
	</div><!-- 하단1 컨네이너 -->
<!-- ---------------------------------하단2-------------------------------------------- -->
		<div class="container">
				<div class="row text-center board-info">
						<div class="col col-4 board-info1">찾아오시는길</div>
						<div class="col col-4 board-info2">연락처</div>
						<div class="col col-4 board-info3">스폰서</div>
				</div>
		</div>
		</div><!-- 가장 밖쪽 컨테이너 -->
</body>
</html>

<!-- -------디자인 없이 완성된 형태 -->
<!-- <body ng-app="todo"> -->

<!-- 	<div class="search"> -->
<!-- 		<table class="search_list"> -->
<%-- 			<caption>검색 목록</caption> --%>
<!-- 			<thead> -->
<!-- 				<th><label class="search_list_sub">제조번호로 검색 </label></th> -->
<!-- 				<th class="search_list_box"><input class="search_list_input" -->
<!-- 					type="text" placeholder="검색어 입력"> -->
<!-- 					<button class="search_list_but">검색</button></th> -->
<!-- 			</thead> -->
<!-- 		</table> -->
<!-- 	</div> -->

<!-- 	<div class="board_list_wrap"> -->
<!-- 		<table class="board_list"> -->
<%-- 			<caption>게시판 목록</caption> --%>
<!-- 			<tr> -->
<!-- 				<th>제조번호</th> -->
<!-- 				<th>제품이름</th> -->
<!-- 				<th>글쓴이</th> -->
<!-- 				<th>작성일</th> -->
<!-- 				<th>조회</th> -->
<!-- 			</tr> -->
<!-- 			<!-- 				<th class = "wer"></th> -->


<!-- 			<!-- 					<tr class="wrap"></tr > -->


<!-- 		</table> -->

<!-- 		<div class="paging"> -->
<!-- 			<a href="#" class="bt">처음으로</a> <a href="#" class="bt">이전페이지</a> <a -->
<!-- 				href="#" class="num on">1</a> <a href="#" class="num">2</a> <a -->
<!-- 				href="#" class="num">3</a> <a href="#" class="bt">다음페이지</a> <a -->
<!-- 				href="#" class="bt">마지막</a> -->
<!-- 		</div> -->
<!-- 	</div> -->

<!-- 테스트를 위한 간단한 형식 -->
<!-- 	<h>게시판</h> -->
<!-- 	<button id="test" onclick="doing();">click</button> -->
<!-- 	<input type="button" id="test2" value="submit"> -->
<!-- 	<p>DB :<input type = "text" id="data" ng-model="invList" ></p> -->
<!-- 	<h1>Hello {{invList}}</h1> -->

<!---------------------------페이지가 작아질때 추가할부분--------------->
<!-- <div class="board_list_wrap2"> -->
<!-- 									검색어 조회 -->
<!-- 								<table class="search_list "> -->
<!-- 										<th class="form_radio  search_list1"> -->
<!-- 											<form> -->
<!-- 												<input type="radio" id="mount" name="check" value="mount" checked="checked"><label for="mount">제조번호</label> -->
<!-- 	                                            <input type="radio" id="name" name="check" value="name"><label for="name">이름</label> -->
<!-- 											</form> -->
<!-- 										</th> -->
<!-- 										<th class="search_list_box "><input class="search_list_input text-center" type="text" placeholder="검색어 입력"> -->
<!-- 										<button class="btn-group-lg btn-outline-secondary search_list2">검색</button></th> -->
<!-- 									</table> -->
<!-- 					</div> -->
<!--                     <div class="board_list_wrap"> -->
<!--                     		<table class="board_list table-hover text-center " > -->
<%-- 									<caption>게시판 목록</caption> --%>
<!-- 									<thead> -->
<!--                                            <tr class="bg-light"> -->
<!-- 	                                           <th>제조번호</th> -->
<!-- 	                                           <th>제품이름</th> -->
<!-- 	                                           <th>글쓴이</th> -->
<!-- 	                                           <th>작성일</th> -->
<!-- 	                                           <th>조회</th> -->
<!--                                            </tr> -->
<!--                                     </thead> -->
<!--                                     <tbody id="board_list2"> -->
<!--                                     </tbody> -->
<!-- 							</table> -->
<!-- 					 	<div class="btn-group DBbtn" role="group" aria-label="Basic outlined example"> -->
<!-- 								  <button type="button" class="btn  btn-outline-secondary"id= "btnadd">DB추가</button> -->
<!-- 								  	   <span id="msg1"></span> -->
<!-- 								  <button type="button" class="btn  btn-outline-secondary"id= "btndel">DB삭제</button> -->
<!-- 						</div> -->
<!-- 							페이지 넘기는 부분 -->
<!-- 						<nav aria-label="Page navigation example"> -->
<!-- 								<ul class="pagination justify-content-center"> -->
<!-- 										<li class="page-item"><a class="page-link" href="#">Previous</a></li> -->
<!-- 										<li class="page-item"><a class="page-link" href="#">1</a></li> -->
<!-- 										<li class="page-item"><a class="page-link" href="#">2</a></li> -->
<!-- 										<li class="page-item"><a class="page-link" href="#">3</a></li> -->
<!-- 										<li class="page-item"><a class="page-link" href="#">Next</a></li> -->
<!-- 								</ul> -->
<!-- 						</nav> -->
<!--                  </div> -->
