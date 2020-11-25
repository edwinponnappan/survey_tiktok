package com.easysurvey;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

@SpringBootApplication
@EnableJpaAuditing
public class EasySurveyApplication {

	public static void main(String[] args) {
		SpringApplication.run(EasySurveyApplication.class, args);
	}
}
