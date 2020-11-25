package com.easysurvey.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;

import lombok.Data;
import lombok.ToString;

@Entity
@Data
public class QuestionOption {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "QuestionOptionGen")
	@SequenceGenerator(name = "QuestionOptionGen", sequenceName = "option_sequence")
	private int optionId;

	private String optionName;

	@ManyToOne
	@JoinColumn(name = "question_id")
	@ToString.Exclude
	private SurveyQuestion surveyQuestion;

	@OneToMany(mappedBy = "questionOption", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<SurveyResult> result;

}
