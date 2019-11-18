package com.nwu.quantum;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.mybatis.spring.annotation.MapperScan;


@SpringBootApplication
@MapperScan(value = "com.nwu.quantum.dao")
public class QuantumApplication {

	public static void main(String[] args) {
		SpringApplication.run(QuantumApplication.class, args);
	}

}
