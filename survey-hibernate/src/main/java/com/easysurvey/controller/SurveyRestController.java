package com.easysurvey.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.easysurvey.model.SurveyForm;
import com.easysurvey.model.SurveyResult;
import com.easysurvey.model.SurveyTitle;
import com.easysurvey.model.SurveyUser;
import com.easysurvey.repository.SurveyQuestionRepository;
import com.easysurvey.repository.SurveyResultRepository;
import com.easysurvey.repository.SurveyTitleRepository;
import com.easysurvey.repository.SurveyUserRepository;

@RestController
public class SurveyRestController {

	@Autowired
	SurveyTitleRepository surveyTitleRepository;

	@Autowired
	SurveyQuestionRepository surveyQuestionRepository;

	@Autowired
	SurveyResultRepository surveyResultRepository;

	@Autowired
	SurveyUserRepository surveyUserRepository;

	/**
	 * update or save the survey details
	 *
	 * @param survey
	 * @return
	 */
	@PostMapping("/saveSurvey")
	public boolean saveSurvey(@RequestBody SurveyTitle survey) {

		boolean isSaved = true;
		try {
			survey.getQuestionList().forEach(ques -> {
				ques.setTitle(survey);
				ques.getOptionList().forEach(opt -> {
					opt.setSurveyQuestion(ques);
				});
			});
			surveyTitleRepository.save(survey);
		} catch (Exception e) {
			isSaved = false;
		}
		return isSaved;

	}

	/**
	 * delete the survey related tables
	 *
	 * @param survey
	 * @return
	 */
	@PostMapping("/deleteSurvey")
	public boolean deleteSurvey(SurveyTitle survey) {

		boolean isDeleted = true;
		try {
			Optional<SurveyTitle> delete = surveyTitleRepository.findById(survey.getTitleId());
			surveyTitleRepository.delete(delete.isPresent() ? delete.get() : new SurveyTitle());
		} catch (Exception e) {
			isDeleted = false;
		}
		return isDeleted;

	}

	/**
	 * save the survey
	 *
	 * @param model
	 * @param titleId
	 * @return register screen
	 */
	@PostMapping("/survey")
	public boolean saveSurvey(@RequestBody SurveyForm surveyForm) {

		boolean isSaved = true;
		try {
			SurveyUser registeredUser = surveyUserRepository.save(surveyForm.getSurveyUser());

			List<SurveyResult> resultList = new ArrayList<>();
			surveyForm.getOptionList().forEach(opt -> {
				resultList.add(SurveyResult.builder().surveyUser(registeredUser).questionOption(opt).build());
			});

			surveyResultRepository.saveAll(resultList);
		} catch (Exception e) {
			isSaved = false;
		}

		return isSaved;

	}
}
