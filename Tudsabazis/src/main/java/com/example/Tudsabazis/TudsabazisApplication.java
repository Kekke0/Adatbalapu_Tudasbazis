package com.example.Tudsabazis;

import DAO.SelectAll;
import com.google.gson.Gson;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class TudsabazisApplication {

	public static void main(String[] args) {
		SpringApplication.run(TudsabazisApplication.class, args);
	}

	@GetMapping("/")
	public String  fechbasic(){
		return "Ohh shit its working!!";
	}
	@GetMapping("/felhasznalo")
	public String  fechfelhasznalok(){
		SelectAll a = new SelectAll();
		return new Gson().toJson(a.Felhasznall());
	}

}
