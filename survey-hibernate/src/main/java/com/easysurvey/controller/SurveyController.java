package com.easysurvey.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.easysurvey.model.SurveyTitle;
import com.easysurvey.repository.SurveyQuestionRepository;
import com.easysurvey.repository.SurveyResultRepository;
import com.easysurvey.repository.SurveyTitleRepository;
import com.easysurvey.repository.SurveyUserRepository;

@Controller
public class SurveyController {

	@Autowired
	SurveyTitleRepository surveyTitleRepository;

	@Autowired
	SurveyQuestionRepository surveyQuestionRepository;

	@Autowired
	SurveyResultRepository surveyResultRepository;

	@Autowired
	SurveyUserRepository surveyUserRepository;

	/**
	 * Acquire the all Survey Title for list screen
	 *
	 * @param model
	 * @return list screen
	 */
	@GetMapping(value = { "/survey_title", "" })
	public String getSurveyTitles(Model model) {
		List<SurveyTitle> surveyTitleList = surveyTitleRepository.findAll();

		model.addAttribute("surveyTitleList", surveyTitleList);
		return "survey_title";
	}

	/**
	 * Acquire the Survey details by using title id for register or edit screen
	 *
	 * @param model
	 * @param titleId
	 * @return register screen
	 */
	@GetMapping("/survey_question")
	public String getSurveyQuestion(Model model, @RequestParam(required = false) Integer titleId) {

		SurveyTitle surveyTitle = new SurveyTitle();
		if (null != titleId) {
			Optional<SurveyTitle> titleQuestions = surveyTitleRepository.findById(titleId);
			if (titleQuestions.isPresent()) {
				surveyTitle = titleQuestions.get();
			}
		}
		model.addAttribute("titleQuestions", surveyTitle);

		return "survey_question";

	}

	/**
	 * Acquire the Survey details by using title id for survey screen
	 *
	 * @param model
	 * @param titleId
	 * @return register screen
	 */
	@GetMapping("/survey")
	public String getSurveyDetailsForSurvey(Model model, @RequestParam Integer titleId) {

		SurveyTitle surveyTitle = new SurveyTitle();
		Optional<SurveyTitle> titleQuestions = surveyTitleRepository.findById(titleId);
		if (titleQuestions.isPresent()) {
			surveyTitle = titleQuestions.get();
		}
		model.addAttribute("titleQuestions", surveyTitle);

		return "survey";

	}

	/**
	 * Acquire the Survey Result by using title id for Result screen
	 *
	 * @param model
	 * @param titleId
	 * @return register screen
	 */
	@GetMapping("/survey_result")
	public String getSurveyResult(Model model, @RequestParam Integer titleId) {

		SurveyTitle surveyTitle = new SurveyTitle();
		Optional<SurveyTitle> titleQuestions = surveyTitleRepository.findById(titleId);
		if (titleQuestions.isPresent()) {
			surveyTitle = titleQuestions.get();
		}
		model.addAttribute("surveyResults", surveyTitle);

		return "survey_result";

	}
}
