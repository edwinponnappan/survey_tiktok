package com.easysurvey.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class Publisher {

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer publisherId;

	private String name;

	private String email;

	private String password;

}
