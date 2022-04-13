package com.example.Tudsabazis;

import DAO.*;
import Functions.Login;
import UserBased.Felhasznalo;
import com.google.gson.Gson;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;

import javax.security.auth.login.AccountException;
import javax.servlet.http.HttpServletRequest;

import java.security.InvalidParameterException;

import static org.springframework.http.ResponseEntity.ok;

@SpringBootApplication
@RestController
public class TudasbazisApplication {
	SelectAll a = new SelectAll();

	public static void main(String[] args) {
		SpringApplication.run(TudasbazisApplication.class, args);
//		Felhasznalo a = new Felhasznalo("U001","Kovács Ákos","kova@random.com","jelszavatok");
//		try {
//			System.out.println(new Update().FelhaszID(a));
//		} catch (AccountException e) {
//			System.out.println("Nem található a felhasználó");
//			e.printStackTrace();
//		}catch (Exception e) {
//			e.printStackTrace();
//		}
	}

	@GetMapping("/")
	public String  fechbasic(){
		return "Ohh shit its working!!";
	}

	@GetMapping("/felhasznalo")
	public ResponseEntity<String> all() {
		return ok().body(new Gson().toJson(a.Felhasznall()));
	}

	@PostMapping("/felhasznalo")
	public String  Bejelentkezes(String Nev, String Pass){
		return Nev+" Bocsi de most nem tudsz bejelentkezni";
	}

	@PostMapping(value = "/Bejelentkezes")
	public ResponseEntity<String> Bejelentkezes(HttpServletRequest request,
											 UriComponentsBuilder uriComponentsBuilder) {
		var Email = request.getParameter("Email");
		var Pass = request.getParameter("Pass");
		try{
			Felhasznalo talalt=new Login(Email,Pass).Logging();
			return new ResponseEntity<String>(new Gson().toJson(talalt), HttpStatus.ACCEPTED);
		}
		catch (AccountException e) {
			e.printStackTrace();
			return new ResponseEntity<String>("Az email vagy a jelszó nem megfelelő!", HttpStatus.NOT_ACCEPTABLE);
		}
		catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<String>("Nem várt hiba!", HttpStatus.NOT_ACCEPTABLE);
		}
	}

}
