$(function(){

	$(document).on("click",'#title-del',function(){
		$("#msg-div").empty();
		let titleObj = {
				titleId : $(this).data('titleid')
		}

		ajax("/deleteSurvey",titleObj).then((message) => {
			$(this).closest('tr').remove();
			$("#msg-div").append('<div class="alert alert-success" role="alert"> '+message+'</div>');
		},(message) => {
			$("#msg-div").append('<div class="alert alert-danger" role="alert"> '+message+'</div>');
		});

	});

});

const ajax = (url,obj) => {
	return new Promise((resolve, reject)=>{
		$.ajax({
			type : "POST",
			url : url,
			data : obj,
			success : function(response) {
				if (response) {
					resolve("Title is deleted successfully");
				}else{
					reject("Title is not deleted");
				}
			}
		});
	});
}

