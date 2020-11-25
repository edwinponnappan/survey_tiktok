package com.easysurvey.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.easysurvey.model.SurveyUser;

public interface SurveyUserRepository extends JpaRepository<SurveyUser, Integer> {

}
