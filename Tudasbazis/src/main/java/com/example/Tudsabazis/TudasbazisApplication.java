package com.example.Tudsabazis;

import CikkOriented.Cikk;
import CikkOriented.Hibakezeles.Hiba;
import CikkOriented.Hibakezeles.Javitas;
import CikkOriented.Kategoria;
import CikkOriented.Modositas;
import DAO.*;
import Functions.Login;
import Functions.Udelete;
import UserBased.Ban;
import UserBased.Felhasznalo;
import com.google.gson.Gson;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

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
	Find find = new Find();

	public static void main(String[] args) {
		SpringApplication.run(TudasbazisApplication.class, args);
	}

	@GetMapping("/")
	public String  fechbasic(){
		return "Ohh shit its working!!";
	}

	@GetMapping("/felhasznalo")
	public ResponseEntity<String> all() {
		return ok().body(new Gson().toJson(a.Felhasznall()));
	}

	@GetMapping("/felhasznalo/Bann")
	public ResponseEntity<String> Baned() {
		return ok().body(new Gson().toJson(new NonTrivial().Bannum()));
	}

	@GetMapping("/felhasznalo/Hibajel")
	public ResponseEntity<String> Hibatjel() {
		return ok().body(new Gson().toJson(new NonTrivial().Hibajel()));
	}

	@GetMapping("/felhasznalo/Cikkek")
	public ResponseEntity<String> Cikketirt() {
		return ok().body(new Gson().toJson(new NonTrivial().Cikknum()));
	}

	@GetMapping("/felhasznalo/Nyelvek")
	public ResponseEntity<String> Nyelvek() {
		return ok().body(new Gson().toJson(new NonTrivial().Nyelevek()));
	}

	@GetMapping("/Cikk")
	public ResponseEntity<ArrayList<Cikk>> Cikkabc() {
		return new ResponseEntity<>(a.ABCikkek(), HttpStatus.OK);
	}
	@GetMapping("/Cikk/mod")
	public ResponseEntity<String> Modositott() {
		return ok().body(new Gson().toJson(new NonTrivial().Cikkmod()));
	}

	@GetMapping("/felhasznalo/Hibajav")
	public ResponseEntity<String> Javitott() {
		return ok().body(new Gson().toJson(new NonTrivial().Hibajav()));
	}

	@GetMapping("/Kat")
	public ResponseEntity<ArrayList<Kategoria>> Category() {
		return new ResponseEntity<>(a.Katall(), HttpStatus.OK);
	}

	/**
	 *
	 * @param keresoszo csak egy kereső szót vagy szó részletet kell átadni
	 */
	@PostMapping("/Cikk")
	public ResponseEntity<ArrayList<Cikk>> Cikkeres(@RequestBody String keresoszo) {
		ArrayList<Cikk> ret = new ArrayList<>();
		for (Cikk n : a.ABCikkek()) {
			if (n.getCim().contains(keresoszo))
				ret.add(n);
			else for (String k : n.getKulcsszo()) {
				if (k.contains(keresoszo))
					ret.add(n);
			}
		}
		return new ResponseEntity<>(ret, HttpStatus.OK);
	}

	@PostMapping("/felhasznalo")
	public ResponseEntity<Felhasznalo>  Fkeres(@RequestBody String ID){
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

	@PostMapping("/getCikk")
	public ResponseEntity<Cikk> getCikk(@RequestBody String id) {
/*		ArrayList<Cikk> ret = new ArrayList<>();
		for (Cikk n : a.ABCikkek()) {
			if (n.getCim().contains(keresoszo))
				ret.add(n);
			else for (String k : n.getKulcsszo()) {
				if (k.contains(keresoszo))
					ret.add(n);
			}
		}*/
		Cikk cikk = null;
		try{
			cikk = find.cikkLekeres(id);
		} catch (Exception e){
			e.printStackTrace();
			return new ResponseEntity<>(null, HttpStatus.NOT_ACCEPTABLE);
		}

		return new ResponseEntity<>(cikk, HttpStatus.OK);
	}



	///////////////////////////////////////////////////////////////////////
	// Insertek
	///////////////////////////////////////////////////////////////////////
	/**
	 *NINCS TESZTELVE!
	 * @param uj:
	 *             {
	 *             "ID":"",
	 *             "leiras":"",
	 *             "javitva": 1/true-> true|| bármi más -> false,
	 *          	"jelentoID":"",
	 *          	"cikkID":""
	 *          }
	 */
	@PostMapping(value = "/Hiba") //ID,LEIRAS,JAVITVA,JELENTOID,HIBASCIKKID
	public ResponseEntity<Hiba> Hibaadd (@RequestBody Map<String,String> uj){
		Boolean javit = false;
		if (uj.get("javitva").equals("1")||uj.get("javitva").equals("true"))
			javit = true;
		Hiba ujc= new Hiba(uj.get("ID"), uj.get("leiras"), javit, uj.get("jelentoID"), uj.get("cikkID"));
		try {
			Boolean a =new Insert().addHiba(ujc);
			if(!a) throw new Exception();
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<>(null, HttpStatus.NOT_ACCEPTABLE);
		}
		return new ResponseEntity<>(ujc, HttpStatus.ACCEPTED);
	}

	/**
	 *NINCS TESZTELVE!
	 * @param uj:
	 *             {
	 *             "adminID":"",
	 *             "hibaID":"",
	 *          	"date":"",
	 *          	"jegyzet":""
	 *          }
	 */
	@PostMapping(value = "/Hiba/jav") //ID,LEIRAS,JAVITVA,JELENTOID,HIBASCIKKID
	public ResponseEntity<Javitas> Javadd (@RequestBody Map<String,String> uj){
		Javitas ujc= new Javitas(uj.get("adminID"), uj.get("hibaID"), uj.get("date"), uj.get("jegyzet"));
		try {
			Boolean a =new Insert().addJavitas(ujc);
			if(!a) throw new Exception();
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<>(null, HttpStatus.NOT_ACCEPTABLE);
		}
		return new ResponseEntity<>(ujc, HttpStatus.ACCEPTED);
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


	/**
	 *NINCS TESZTELVE!
	 * @param uj:
	 *             {
	 *             "CikkID":"",
	 *             "leiras":"",
	 *             "date":""
	 *          }
	 */
	@PostMapping("/Cikk/mod")
	public ResponseEntity<Modositas> Modadd (@RequestBody Map<String,String> uj){
		Modositas ujm= new Modositas(uj.get("CkkID"),uj.get("leiras"),uj.get("date"));
		try {
			Boolean a =new Insert().addModositas(ujm);
			if(!a) throw new Exception();
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<>(null, HttpStatus.NOT_ACCEPTABLE);
		}
		return new ResponseEntity<>(ujm, HttpStatus.ACCEPTED);
	}

	/**
	 * NINCS TESZTELVE
	 * @param uj{
	 * 	 *             "felhasznaloID":"",
	 * 	 *             "adminID":"",
	 * 	 *             "date":"",
	 * 	 *             "indok":"",
	 * 	 *             "hossz": ""
	 * 	 *             }
	 */
	@PostMapping(value = "/felhasznalo/Bann")
	public ResponseEntity<Ban> Bannadd (@RequestBody Map<String,String> uj){
		Ban ujc= new Ban(uj.get("felhasznaloID"),uj.get("adminID"),uj.get("date"),uj.get("indok"),uj.get("hossz"));
		try {
			Boolean a =new Insert().addBan(ujc);
			if(!a) throw new Exception();
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<>(null, HttpStatus.NOT_ACCEPTABLE);
		}
		return new ResponseEntity<>(ujc, HttpStatus.ACCEPTED);
	}

	@PostMapping(value = "/addKategoria")
	public ResponseEntity<Kategoria> addKategoria (@RequestBody Map<String,String> uj){
		Kategoria ujKategoria= new Kategoria(uj.get("Nev"),uj.get("Bovebben"));
		try {
			Boolean a =new Insert().addKategoria(ujKategoria);
			if(!a) throw new Exception();
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<>(null, HttpStatus.NOT_ACCEPTABLE);
		}
		return new ResponseEntity<>(ujKategoria, HttpStatus.ACCEPTED);
	}
	///////////////////////////////////////////////////////////////////////
	// Insertek vege
	///////////////////////////////////////////////////////////////////////
	///////////////////////////////////////////////////////////////////////
	// Deletek
	///////////////////////////////////////////////////////////////////////
	@PostMapping(value = "/Cikk/del")
	public ResponseEntity<Boolean> CikkDel (@RequestBody Map<String,String> del){
		try {
			Boolean a =new Delete().CikkID(del.get("ID"));
			return new ResponseEntity<>(a, HttpStatus.ACCEPTED);
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<>(false, HttpStatus.NOT_ACCEPTABLE);
		}
	}

	@PostMapping(value = "/felhasznalo/Nyelvek/del")
	public ResponseEntity<Boolean> Nyelvdel (@RequestBody Map<String,String> del){
		try {
			Boolean a =new Delete().Nyelvtudas(del.get("LektorID"),del.get("nyelv"));
			return new ResponseEntity<>(a, HttpStatus.ACCEPTED);
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<>(false, HttpStatus.NOT_ACCEPTABLE);
		}
	}

	@PostMapping(value = "/Cikk/kulcsszo/del")
	public ResponseEntity<Boolean> KulcsszoDel (@RequestBody Map<String,String> del){
		try {
			Boolean a =new Delete().Kulcsszo(del.get("CikkID"),del.get("szo"));
			return new ResponseEntity<>(a, HttpStatus.ACCEPTED);
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<>(false, HttpStatus.NOT_ACCEPTABLE);
		}
	}

	@PostMapping(value = "/Cikk/Kat/del")
	public ResponseEntity<Boolean> KategoriaDel (@RequestBody Map<String,String> del){
		try {
			Boolean a =new Delete().KategoriaNev(del.get("Kategoria"));
			return new ResponseEntity<>(a, HttpStatus.ACCEPTED);
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<>(false, HttpStatus.NOT_ACCEPTABLE);
		}
	}
	@PostMapping(value = "/felhasznalo/del")
	public ResponseEntity<Boolean> Felhaszznalodel (@RequestBody Map<String,String> del){
		try {
			Boolean a = new Udelete().Del(del.get("ID"));
			return new ResponseEntity<>(a, HttpStatus.ACCEPTED);
		} catch (SecurityException a) {
			a.printStackTrace();
			return new ResponseEntity<>(false, HttpStatus.I_AM_A_TEAPOT);
		}catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<>(false, HttpStatus.NOT_ACCEPTABLE);
		}
	}
	///////////////////////////////////////////////////////////////////////
	// Deletek vege
	///////////////////////////////////////////////////////////////////////
	///////////////////////////////////////////////////////////////////////
	// Update
	///////////////////////////////////////////////////////////////////////

	/**
	 *
	 * @param up
	 * {
	 *      "ID":"id",
	 *      "Nev":"neve",
	 *      "Email":"Emailcíme",
	 *      "jelszo": "jelszava"
	 * }
	 */
	@PostMapping(value = "/felhasznalo/upd")
	public ResponseEntity<Boolean> Felhasznupdate (@RequestBody Map<String,String> up){
		Felhasznalo Updated=new Felhasznalo(up.get("ID"),up.get("Nev"),up.get("Email"), up.get("jelszo"));
		try {
			Boolean a = new Update().FelhaszID(Updated);
			return new ResponseEntity<>(a, HttpStatus.ACCEPTED);
		}catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<>(false, HttpStatus.NOT_ACCEPTABLE);
		}
	}

	/**
	 *
	 * @param up:
	 *{
	 *     "ID": "C30",
	 *     "cim": "Cime",
	 *     "tartalom": "tartalma",
	 *     "allapot": "allapota",
	 *     "nyelv": "Angol",
	 *     "kategoria": "Knev",
	 *     "szerzo": "U2",
	 *     "kulcsszavak": "k1, k2, k3",
	 *     "lektor": "L2",
	 *     "date": "22-JAN.  -20"
	 * }
	 */
	@PostMapping(value = "/Cikk/upd")
	public ResponseEntity<Boolean> Cikkupdate (@RequestBody Map<String,String> up){
		List<String> kulcsszavak;

		if (!up.get("kulcsszavak").equals("")) {
			String[] kulcsszo = up.get("kulcsszavak").split(", ");
			kulcsszavak = new ArrayList<String>(Arrays.asList(kulcsszo));
		}
		else kulcsszavak=new ArrayList<String>();

		Cikk Updated= new Cikk(up.get("ID"),up.get("cim"), up.get("tartalom"), up.get("allapot"), up.get("nyelv"), up.get("kategoria"),up.get("szerzo"),kulcsszavak,up.get("lektor"),up.get("date"));

		try {
			Boolean a = new Update().UpdateCikk(Updated);
			return new ResponseEntity<>(a, HttpStatus.ACCEPTED);
		}catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<>(false, HttpStatus.NOT_ACCEPTABLE);
		}
	}
	///////////////////////////////////////////////////////////////////////
	// Update vege
	///////////////////////////////////////////////////////////////////////


}
