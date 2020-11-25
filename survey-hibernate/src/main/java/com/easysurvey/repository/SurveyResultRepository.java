package com.easysurvey.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.easysurvey.model.SurveyResult;

public interface SurveyResultRepository extends JpaRepository<SurveyResult, Integer> {

}
