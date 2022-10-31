package com.systemk;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

//@MapperScan(value = { "com.systemk.mapper.mapper_m" })
//@SpringBootApplication(scanBasePackages = { "com.systemk.service.service2/*" })
@SpringBootApplication
public class Test2Application {
	public static void main(String[] args) {
		SpringApplication.run(Test2Application.class, args);
	}
}
