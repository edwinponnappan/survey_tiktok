let survey ;
$(function(){

	$("#add-question").on("click",function(){
		$("#msg-div").empty();
		$(".question-content:last").clone().appendTo("#question-div");
		$(".question-content:last .question-head").text("Question" +$(".question-head").length +" : ");
		$(".question-content:last").find(".question-input,.option-input").val('');
		$(".question-content:last .question-input").focus();
		$('html,body').animate({scrollTop: $(".question-content:last .question-input").offset().top},'slow');
	});

	$("#submit").on("click",function(){
		$("#msg-div").empty();
		let questionList = [];
		$(".question-content").each(function(index,question){
			let optionList = [];
			$(question).find(".option-input").each(function(index,option){
				if($(option).val()){
					optionList.push({ optionName : $(option).val()});
				}
			});

			if($(question).find('.question-input').val()){
				questionList.push({
					question : $(question).find('.question-input').val(),
					optionList : optionList
				});
			}
		});

		survey = {};
		survey.title = $("#title").val();
		survey.titleId = $("#titleId").val();
		survey.questionList = questionList;

		ajax("/saveSurvey",survey).then((message) => {
			$("#msg-div").append('<div class="alert alert-success" role="alert"> '+message+'</div>');
			$("html, body").animate({ scrollTop: 0 }, "slow");
		},(message) => {
			$("#msg-div").append('<div class="alert alert-danger" role="alert"> '+message+'</div>');
			$("html, body").animate({ scrollTop: 0 }, "slow");
		});

	});

	$(document).on("click",'.question-del',function(){
		$("#msg-div").empty();
		if($(".question-head").length == 1){
			$(".question-content:last .question-head").text("Question" +$(".question-head").length +" : ");
			$(".question-content:last").find(".question-input,.option-input").val('');
		}else{
			$(this).closest('.question-content').remove();
		}
	});

});

const ajax = (url,survey) => {
	return new Promise((resolve, reject)=>{
		$.ajax({
			type : "POST",
			url : url,
			data : JSON.stringify(survey),
			contentType: 'application/json; charset=utf-8',
			success : function(response) {
				if (response) {
					resolve("Survey is saved successfully.");
				}else{
					reject("Survey is not saved.");
				}
			}
		});
	});
}

