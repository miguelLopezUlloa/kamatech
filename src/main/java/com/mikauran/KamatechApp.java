package com.mikauran;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.boot.web.servlet.ServletContextInitializer;
import org.springframework.boot.builder.SpringApplicationBuilder;

@SpringBootApplication
public class KamatechApp extends SpringBootServletInitializer { 

	@Override
	protected SpringApplicationBuilder
	configure(SpringApplicationBuilder application){
		return application.sources(KamatechApp.class);
	}
	
	public static void main(String[] args) {
		SpringApplication.run(KamatechApp.class, args);
	}
}
