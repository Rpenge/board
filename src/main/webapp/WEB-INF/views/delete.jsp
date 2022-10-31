<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- 진행 방법 -->
<!-- jsp요청 -> controller -> Service-> Mapper-> DB 쿼리실행 -->
<html>
<head>
		<!-- js요청 -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/resource/js/controller/DBdelete.js"></script>
		<script src="${pageContext.request.contextPath}/resource/js/bootstrap.bundle.min.js"></script>
		<script src="${pageContext.request.contextPath}/resource/js/bootstrap.js"></script>
		
		<!-- jsp요청 -->
		
		
		<!-- CSS -->
		<link rel="stylesheet"  href="${pageContext.request.contextPath}/resource/css/style.css">
		<link rel="stylesheet"  href="${pageContext.request.contextPath}/resource/css/write.css">
		<link rel="stylesheet" 	href="${pageContext.request.contextPath}/resource/css/bootstrap.css">
		<link rel="stylesheet" 	href="${pageContext.request.contextPath}/resource/css/bootstrap-responsive.min.css">
		
		<!-- 게시판 이름 -->
		<title>게시판</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<!-- ---------------------------------상단-------------------------------------------- -->
		<!-- 상단 로고와 메뉴 -->

	<div class= "container-fluid ">
				<div class="row"  id="container2">
						<!-- 로고 부분 -->
						<div class ="col col-1 navbar " id="navbar-example2" 	>
								<a class="navbar-brand" href="#"><img class="img-responsive" src="/resource/img/systemk.png" alt="Bootstrap" width=auto; height="50px";></a>
						</div>
				</div>
				<!-- ---------------------------------DB단 추가-------------------------------------------- -->
				<div class= "container3">
				<div class ="col col-12 text-center">	
						<div class="board_list_wrap">
									<table class="board_list table-hover" >
										<caption>게시판 목록</caption>
										<thead>
												<tr class="bg-light inputsetting">
														<th>체크박스</th>
														<th>제조번호</th>
														<th>제품이름</th>
														<th>글쓴이</th>
														<th>작성일</th>
														<th>조회</th>
												</tr>
													<tbody id="board_list2">
													</tbody>
										</thead>
									</table>
							</div>
							<div class="btn-group" role="group">
<!-- 							<input type="button" value="추가하기" class="btn  btn-outline-secondary insertbtn"id="sendDBbtn" onclick="document.location='index'"> -->
	  							<button type="button" class="btn  btn-outline-secondary insertbtn"id= "totaldel" onclick="document.location='/'">전체 지우기</button>
	  							<button type="button" class="btn  btn-outline-secondary insertbtn"id= "selectdel" onclick="document.location='/'">선택 지우기</button>
	  							<button type="button" class="btn  btn-outline-secondary insertbtn"id= "cancel" onclick="document.location='/'">취소하기</button>
							</div>'
					</div>
		</div>
</body>
</html>
		