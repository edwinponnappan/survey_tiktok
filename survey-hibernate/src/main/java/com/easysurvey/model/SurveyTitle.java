package com.easysurvey.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class SurveyTitle {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SurveyTitleGen")
	@SequenceGenerator(name = "SurveyTitleGen", sequenceName = "title_sequence")
	private Integer titleId;

	private String title;

	@OneToMany(mappedBy = "title", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<SurveyQuestion> questionList;

}
