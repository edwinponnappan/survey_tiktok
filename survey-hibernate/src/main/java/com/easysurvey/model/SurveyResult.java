package com.easysurvey.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class SurveyResult {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SurveyResultGen")
	@SequenceGenerator(name = "SurveyResultGen", sequenceName = "result_sequence")
	private Integer resultId;

	@ManyToOne
	@JoinColumn(name = "user_id")
	@ToString.Exclude
	private SurveyUser surveyUser;

	@ManyToOne
	@JoinColumn(name = "option_id")
	@ToString.Exclude
	private QuestionOption questionOption;

}
