package com.grownited;

import java.time.LocalDate;
import java.util.Map;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;

@SpringBootApplication
public class VehicleVaultProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(VehicleVaultProjectApplication.class, args);
	}
	
	@Bean
	PasswordEncoder encoder() {
		return new BCryptPasswordEncoder(5);
	}
	
	@Bean
	Cloudinary cloudinary() {
		Map<String, String> config = ObjectUtils.asMap("cloud_name", "dzwz5lhyk", "api_key", "295627786594221",
				"api_secret", "6Mp7s9y25aGxoeQ9OaHOx3RN-gc");
		return new Cloudinary(config);
	}

	
	

}


