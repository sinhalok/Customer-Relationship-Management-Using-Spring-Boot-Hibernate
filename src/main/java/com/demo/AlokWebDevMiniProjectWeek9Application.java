package com.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan({ "com.demo","com.demo.controller","com.demo.pojo","com.demo.service","com.demo.repository"})
public class AlokWebDevMiniProjectWeek9Application {

	public static void main(String[] args) {
		SpringApplication.run(AlokWebDevMiniProjectWeek9Application.class, args);
	}

}
