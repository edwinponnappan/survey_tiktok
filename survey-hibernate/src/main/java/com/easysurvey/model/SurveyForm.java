package com.easysurvey.model;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class SurveyForm {

	private SurveyUser surveyUser;

	private List<QuestionOption> optionList;
}
