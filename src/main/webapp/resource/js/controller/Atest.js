myApp.controller("myAppCtrl", function($scope,$http){
	alert('b');

	//!------------일반 DB 통신 
		  $http({
			    method : "POST",
			    url : "/test",
		  }).success(function(data){
			  console.log(data);	
			  	$scope.test=data.test;
			  	 console.log($scope.test);	
		})
		 .error (function(data) {
					 console.log("통신 실패");
					 console.log(data);
		  })

	  	//!------------검색라인 (클릭시 아래 실행)
	  $scope.Asearch = function(){
		  
		  var inputval=$scope.Aipval;
		  console.log(inputval);

		//-------- input 창이 비어있을때 경고 이벤트 발생 
		  if(inputval.length === 0 ) {
				var ret=window.open("","warning","width=300,height=100");
				ret.document.write("<p>입력 후 검색해 주세요.</p>");
		    }
		//-------- input 창에 검색 단어 있을시 이벤트 발생조건 
			else{						
				//-------- 제조번호 이면서 검색할 단어 존재시 이벤트 발생 
				if($scope.typecheck==="mount"){
					  console.log($scope.typecheck);
						 $http({
							    method : "POST",
							    url : "/searchM",
//							    param : {"inputval": "$scope.typecheck"} //이것도 가능 
							    params :{inputval: inputval }
						 }).success(function(data){
							  console.log("통신성공 수량");	
							  	$scope.test=data.searchM;
								console.log("몇줄");	
								  console.log(	data.searchM.length);	
								
						  }).error (function(data) {
								 console.log("통신 실패");
								 console.log(data);
						  })
				}else{
					 $http({
						    method : "POST",
						    url : "/searchN",
//						    param : {"inputval": "$scope.typecheck"} //이것도 가능 
						    params :{inputval: inputval }
					 }).success(function(data){
						  console.log("통신성공 수량");		
						  console.log(data);	
						  $scope.test=data.searchN;

					 })
					}
			 }
			  console.log("버튼클릭");	
	  }
	  
});