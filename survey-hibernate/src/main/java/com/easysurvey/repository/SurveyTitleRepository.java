package com.easysurvey.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.easysurvey.model.SurveyTitle;

public interface SurveyTitleRepository extends JpaRepository<SurveyTitle, Integer> {

}
