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
public class SurveyUser {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SurveyUserGen")
	@SequenceGenerator(name = "SurveyUserGen", sequenceName = "user_sequence")
	private Integer userId;

	private String name;

	private String email;

	@OneToMany(mappedBy = "title", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<SurveyQuestion> questionList;

}
