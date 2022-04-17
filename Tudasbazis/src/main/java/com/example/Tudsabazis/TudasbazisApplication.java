package com.example.Tudsabazis;

import DAO.*;
import Functions.Login;
import UserBased.Felhasznalo;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;

import javax.security.auth.login.AccountException;
import javax.servlet.http.HttpServletRequest;

import java.security.InvalidParameterException;
import java.util.Map;

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
	public ResponseEntity<String>  Bejelentkezes( String Nev){
		return new ResponseEntity<String>(new Gson().toJson(Nev + "eredmény"), HttpStatus.ACCEPTED);
	}

	@PostMapping(value = "/Bejelentkezes")
	public ResponseEntity<String> Bejelentkezes(String Email, String Pass) {
		try{
			Felhasznalo talalt=new Login(Email, Pass).Logging();
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

	/**
	 *
	 * @param uj:Az új felhasználó
	 * @return
	 */
	@PostMapping(value = "/Reg")
	public ResponseEntity<String> Regisztracio (@RequestBody Map<String,String> uj) {
		Felhasznalo ujf= new Felhasznalo(uj.get("Nev"),uj.get("Email"), uj.get("jelszo"));
		try {
			Boolean a =new Insert().Felhasz(ujf);
			if(!a) throw new Exception();
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<String>("A létrehozás nem sikerült", HttpStatus.NOT_ACCEPTABLE);
		}
		return new ResponseEntity<String>("A létrehozás sikeres volt: \n"+new Gson().toJson(ujf),HttpStatus.OK);
	}

}
