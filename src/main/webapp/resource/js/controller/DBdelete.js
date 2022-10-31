$(document).ready(function() { 
	alert('c');
	var gbl_tt;
	$.ajax({
		url : "/test",
		method : "POST",
		dataType : "JSON",
		resultType : "JSON",
		async : false,
		success : function(data) {
			
			gbl_tt=data.test ;
			  console.log("delete통신성공");	
			  console.log(gbl_tt);	
					var td = $("<table/>");
					for( var i in data.test ){
						var $seq = data.test[i].seq;
						var $name =  data.test[i].name;
						var $sub = data.test[i].sub;
						var $reg_date =  data.test[i].reg_date;
						var $cont =  data.test[i].cont;
//						var $check = "<input type='checkbox' class='check[i]'>";
//						var $check ="<input type='checkbox' class="+check[i]+">";
//						console.log($seq);
//						console.log($name);
//						console.log($sub);	
//						console.log($reg_date);	
//						console.log($cont);	
//			
						var row2= $("<tr/>").append(
								$("<td/>").html("<input type='checkbox' class='check"+i+"'>"),
								$("<td/>").text($seq),
								$("<td/>").text($name),
								$("<td/>").text($sub),
								$("<td/>").text($reg_date),
								$("<td/>").text($cont),
						)
						$("#board_list2").append(row2);
					}
					
			
					
		},
		error : function(data) {
			 console.log("통신 실패");
			 console.log(data);
		}
	});	
	
	//------------------데이터를 받아온 상태서 진행 check0~data 끝까지 
	  console.log("전역변수 확인용");	
	  console.log(gbl_tt);	
	  console.log(gbl_tt[0]);	

//	var $seq = data.test[i].seq;
//	
	
	$("#board_list2").is(':checked');
	  
	  
	$("#totaldel").on("click",function(){
	
	});
	$("#selectdel").on("click",function(){
		  
		  var sls_ck=[];
		  console.log("11");
		  console.log(gbl_tt.length);
		
		for( var i =0; i<gbl_tt.length ; i++){
			  if($(".check"+i).is(":checked")){
			  var j=0;
				  if( sls_ck[j]!=null) j++;
				  sls_ck[j]=gbl_tt[i].seq;
			  }
		  }
		//fruitarray=sls_ck
		//objparams=selectdel
//		var selectdel={
//				"seq": sls_ck
//				
//		};
		console.log("sls_ck");	
		  console.log(sls_ck);	
		  
		$.ajax({
			url : "/selectdel",
			method : "get",
			dataType:"json",
			
			traditional:true,
			data : {seq : sls_ck},
			success : function(data) {
		  console.log(data);	
			}
			
//		for( var i in data.test ){
//			var $seq = data.test[i].seq;
//		$("#board_list2").is(':checked');
	});
	});


})