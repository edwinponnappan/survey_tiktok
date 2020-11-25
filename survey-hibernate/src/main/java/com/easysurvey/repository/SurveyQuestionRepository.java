package com.easysurvey.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.easysurvey.model.SurveyQuestion;

public interface SurveyQuestionRepository extends JpaRepository<SurveyQuestion, Integer> {

}
