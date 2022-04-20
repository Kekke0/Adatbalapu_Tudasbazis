package com.example.Tudsabazis;

import CikkOriented.Cikk;
import CikkOriented.Kategoria;
import DAO.*;
import Functions.Login;
import UserBased.Felhasznalo;
import com.google.gson.Gson;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;


import javax.security.auth.login.AccountNotFoundException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
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

	@GetMapping("/Cikk")
	public ResponseEntity<ArrayList<Cikk>> Cikkabc() {
		return new ResponseEntity<>(a.ABCikkek(), HttpStatus.OK);
	}

	@GetMapping("/Kat")
	public ResponseEntity<ArrayList<Kategoria>> Kategory() {
		return new ResponseEntity<>(a.Katall(), HttpStatus.OK);
	}

	@PostMapping("/felhasznalo")
	public ResponseEntity<Felhasznalo>  Bejelentkezes(@RequestBody String ID){
		Felhasznalo talalt;
		try{
			try {
				talalt=new Find().FelhaszID(ID);
			} catch (SQLException e1){
				try {
					talalt = new Find().LektorID(ID);
				}catch (SQLException e2){
					talalt = new Find().AdminID(ID);
				}
			}
			return new ResponseEntity<>(talalt, HttpStatus.ACCEPTED);
		}
		catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<>(null, HttpStatus.NOT_ACCEPTABLE);
		}
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
	 * @param uj:
	 *          {
	 *              "Nev":"neve",
	 *          	"Email":"Emailcíme"
	 *          	"jelszo": "jelszava
	 *          }
	 */
	@PostMapping(value = "/Reg")
	public ResponseEntity<Felhasznalo> Regisztracio (@RequestBody Map<String,String> uj){
		Felhasznalo ujf= new Felhasznalo(uj.get("Nev"),uj.get("Email"), uj.get("jelszo"));
		try {
			Boolean a =new Insert().addFelhasz(ujf);
			if(!a) throw new Exception();
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<>(null, HttpStatus.NOT_ACCEPTABLE);
		}
		return new ResponseEntity<>(ujf, HttpStatus.ACCEPTED);
	}

	/**
	 *
	 * @param uj:
	 *             {
	 *             "cim":"Cime",
	 *             "tartalom":"tartalma",
	 *             "allapot":"allapota",
	 *             "nyelv":"nyelve",
	 *             "kategoria": "Knev",
	 *             "szerzo":"U..",
	 *             "kulcsszavak": "k1, k2, k3" <-- Lehet "" is
	 *             }
	 */
	@PostMapping(value = "/Cikkadd")
	public ResponseEntity<Cikk> Cikkadd (@RequestBody Map<String,String> uj){
		List<String> kulcsszavak;
		if (!uj.get("kulcsszavak").equals("")) {
			String[] kulcsszo = uj.get("kulcsszavak").split(", ");
			kulcsszavak = new ArrayList<String>(Arrays.asList(kulcsszo));
		}
		else kulcsszavak=new ArrayList<String>();
		Cikk ujc= new Cikk(uj.get("cim"), uj.get("tartalom"), uj.get("allapot"), uj.get("nyelv"), uj.get("kategoria"),uj.get("szerzo"),kulcsszavak);
		try {
			Boolean a =new Insert().addCikk(ujc);
			if(!a) throw new Exception();
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<>(null, HttpStatus.NOT_ACCEPTABLE);
		}
		return new ResponseEntity<>(ujc, HttpStatus.ACCEPTED);
	}



}
