package com.example.Tudsabazis;

import DAO.SelectAll;
import com.google.gson.Gson;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class TudasbazisApplication {
	SelectAll a = new SelectAll();

	public static void main(String[] args) {
		SpringApplication.run(TudasbazisApplication.class, args);
	}

	@GetMapping("/")
	public String  fechbasic(){
		return "Ohh shit its working!!";
	}

	@GetMapping("/felhasznalo")
	public String  fechfelhasznalok(){
		return new Gson().toJson(a.Felhasznall());
	}

	@PostMapping("/felhasznalo")
	public String  Bejelentkezes(String Nev, String Pass){
		return Nev+" Bocsi de most nem tudsz bejelentkezni";
	}

}
