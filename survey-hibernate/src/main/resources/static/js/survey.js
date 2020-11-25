$(function(){

	$(document).on("click",'#survey-submit',function(){
		$("#msg-div").empty();


		let optionArray = [];
		$(".question-content").each(function(index,question){
			let questionName = $(this).find("input").attr("name");

			optionArray.push({
				optionId : $(this).find('input[name='+questionName+']:checked').val()
			});
		});

		$("#name").val();
		$("#email").val();


		let result = {};
		result.surveyUser = {
			name : $("#name").val() || 'anonymous',
			email : $("#email").val() || 'anonymous'
		};
		result.optionList = optionArray;


		ajax("/survey",result).then((message) => {
			$("#msg-div").append('<div class="alert alert-success" role="alert"> '+message+'</div>');
			$("html, body").animate({ scrollTop: 0 }, "slow");
		},(message) => {
			$("#msg-div").append('<div class="alert alert-danger" role="alert"> '+message+'</div>');
			$("html, body").animate({ scrollTop: 0 }, "slow");
		});

	});

});

const ajax = (url,obj) => {
	return new Promise((resolve, reject)=>{
		$.ajax({
			type : "POST",
			url : url,
			data : JSON.stringify(obj),
			contentType: 'application/json; charset=utf-8',
			success : function(response) {
				if (response) {
					resolve("Survey is submitted successfully");
				}else{
					reject("Survey is not submitted");
				}
			}
		});
	});
}

