$(document).ready(function() { 
	alert('c');
	$("#sendDBbtn").on("click",function(){
		let obj ={
		"seq": $('#inputseq').val(),
		"name": $('#inputname').val(),
		"sub": $('#inputsub').val(),
		"reg_date": $('#inputdate').val(),
		"cont": $('#inputcont').val()
		};
		$.ajax({
			        type: "post",
			        url : "/PlusDB",
			        data : obj,
			        success : function (data){
			        	console.log("통신성공");
			        },
			})
	
	})

})