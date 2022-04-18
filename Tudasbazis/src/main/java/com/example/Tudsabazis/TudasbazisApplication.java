package com.example.Tudsabazis;

import DAO.*;
import Functions.Login;
import UserBased.Felhasznalo;
import com.google.gson.Gson;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;


import javax.security.auth.login.AccountException;

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
	public ResponseEntity<Felhasznalo> Bejelentkezes(@RequestBody Map<String,String> data) {
		try{
			Felhasznalo talalt=new Login(data.get("Email"), data.get("Pass")).Logging();
			return new ResponseEntity<>(talalt, HttpStatus.ACCEPTED);
		}
		catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<>(null, HttpStatus.NOT_ACCEPTABLE);
		}
	}

	/**
	 *
	 * @param uj:Az új felhasználó
	 * @return
	 */
	@PostMapping(value = "/Reg")
	public ResponseEntity<Felhasznalo> Regisztracio (@RequestBody Map<String,String> uj){
		Felhasznalo ujf= new Felhasznalo(uj.get("Nev"),uj.get("Email"), uj.get("jelszo"));
		try {
			Boolean a =new Insert().Felhasz(ujf);
			if(!a) throw new Exception();
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<>(null, HttpStatus.NOT_ACCEPTABLE);
		}
		return new ResponseEntity<>(ujf, HttpStatus.ACCEPTED);
	}

}
