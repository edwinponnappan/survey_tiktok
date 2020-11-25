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
public class SurveyQuestion {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SurveyQuestionGen")
	@SequenceGenerator(name = "SurveyQuestionGen", sequenceName = "question_sequence")
	private Integer questionId;

	private String question;

	@ManyToOne
	@JoinColumn(name = "title_id")
	@ToString.Exclude
	private SurveyTitle title;

	@OneToMany(mappedBy = "surveyQuestion", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<QuestionOption> optionList;

}
