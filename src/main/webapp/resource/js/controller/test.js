//JSON 통신 성공
//$(document).ready(function() { 
//	alert('b');
//	$.ajax({
//		url : "/test",
//		method : "GET",
//		dataType : "JSON",
//		data : { ggg : "sadf" },
//		success : function(data) {
//			  console.log("통신성공");
//			  let str=JSON.stringify(data);
//			  console.log(str);
//		},
//		error : function(data) {
//			 console.log("통신 실패");
//		}
//	});
//});

//--------html 과 String 으로 통신 성공 (DB columns 1개)
//$(document).ready(function() { 
//	alert('b');
//	$.ajax({
//		url : "/test",
//		method : "GET",
////		dataType : "text",
////		data  : $scope.form,
////		data : {ggg : "asdf" },
//		success : function(data) {
//			  console.log("통신성공");
//			
//			  console.log(data);
//		},
//		error : function(data) {
//			 console.log("통신 실패");
//			 console.log(data);
//		}
//	});
//});
//--------사이즈가 992px이하일때 나중에 처리
// --------html 과 map으로 통신 시도 (DB columns 여러개)
$(document).ready(function() { 
	alert('b');
	
	//----------DB추가
	$("#btnadd").click(function(){
		httpGetList($http, $scope,'/write');
	});
	//----------DB삭제
	$("#btndel").click(function(){
		httpGetList($http, $scope,'/delete');
	});

	//-------- 처음 부팅시 전체 DB세팅
	$.ajax({
		url : "/test",
		method : "GET",
		dataType : "JSON",
		resultType : "JSON",
		success : function(data) {
			  console.log("통신성공");			  			
					var td = $("<table/>");
					for( var i in data.test ){
						var $seq = data.test[i].seq;
						var $name =  data.test[i].name;
						var $sub = data.test[i].sub;
						var $reg_date =  data.test[i].reg_date;
						var $cont =  data.test[i].cont;
						console.log($seq);
						console.log($name);
						console.log($sub);	
						console.log($reg_date);	
						console.log($cont);	
						var row = $("<tr/>").append(
								$("<td/>").text($seq),
								$("<td/>").text($name),
								$("<td/>").text($sub),
								$("<td/>").text($reg_date),
								$("<td/>").text($cont),
						);
						$("#board_list2").append(row);
					}
		},
		error : function(data) {
			 console.log("통신 실패");
			 console.log(data);
		}
	});	
	
	//-------- 검색 버튼 누를시 발생하는 이벤트
	$(".search_list2").on("click",function(){
		var inputval=$("input[ name=input_text]").val();
		console.log(inputval);		
		$("#board_list2").empty();		
		
			//-------- input 창이 비어있을때 경고 이벤트 발생 
						if(inputval.length === 0 ) {
							var ret=window.open("","warning","width=300,height=100");
							ret.document.write("<p>입력 후 검색해 주세요.</p>");
					    }
						
		  //-------- input 창에 검색 단어 있을시 이벤트 발생조건 
					else{						
						//-------- 제조번호 이면서 검색할 단어 존재시 이벤트 발생 
							    	if($('[name=check]:checked').val()=="mount"){	    		
								    	$.ajax({
								    		url : "/searchM",
								    		type:"POST",
								    		data:{"inputval": $("input[ name=input_text]").val()},
								    		success : function(data) {
								    			//-------- DB없는 검색시 경고창 호출
								    			if(data.searchM.length==0){
								    				var ret=window.open("","warning","width=300,height=100");
								    				ret.document.write("<p>다시 확인 바람니다.</p>");
								    			}
								    			console.log("통신성공 수량");			  			
												var td = $("<table/>");		
												for( var i =0; i<data.searchM.length; i++){
													var row = $("<tr/>").append(
														$("<td/>").text(data.searchM[i].seq),
														$("<td/>").text(data.searchM[i].name),
														$("<td/>").text(data.searchM[i].sub),
														$("<td/>").text(data.searchM[i].reg_date),
														$("<td/>").text(data.searchM[i].cont),
														);
													$("#board_list2").append(row);
												}
								    		},
								    		
								    		error : function(data) {
								    			 console.log("통신 실패 수량");
								    			 console.log(data);
								    		}
								    	});	
							    	}
						//-------- 이름 이면서 검색할 단어 존재시 이벤트 발생 
							    	else{
							    		console.log("통신 이름시작");
											    	$.ajax({
											   	    	url : "/searchN",
												    	type:"POST",
												    	data:{"inputval": $("input[ name=input_text]").val()},
											    		success : function(data) {
											//-------- DB없는 검색시 경고창 호출
														    			if(data.searchN.length==0){
														    				var ret=window.open("","warning","width=300,height=100");
														    				ret.document.write("<p>다시 확인 바람니다.</p>");
														    			}
														    			console.log("통신성공 이름");		    			  
														    			for( var i =0; i<data.searchN.length; i++){
																			var row = $("<tr/>").append(
																				$("<td/>").text(data.searchN[i].seq),
																				$("<td/>").text(data.searchN[i].name),
																				$("<td/>").text(data.searchN[i].sub),
																				$("<td/>").text(data.searchN[i].reg_date),
																				$("<td/>").text(data.searchN[i].cont),
																				);
																			$("#board_list2").append(row);
																			}
											    		},
											    		error : function(data) {
														    			 console.log("통신 실패 이름");
														    			 console.log(data);
											    		}
											    	});	
							    	}
							    }	    
			
				});
	//-------- 검색 버튼 누를시 발생하는 이벤트
});


	
	
	

