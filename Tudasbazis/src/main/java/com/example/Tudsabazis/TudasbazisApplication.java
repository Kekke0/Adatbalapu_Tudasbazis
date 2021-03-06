package com.example.Tudsabazis;

import Model.CikkOriented.Cikk;
import Model.CikkOriented.Hibakezeles.Hiba;
import Model.CikkOriented.Hibakezeles.Javitas;
import Model.CikkOriented.Kategoria;
import Model.CikkOriented.Modositas;
import DAO.*;
import Functions.Login;
import Functions.Udelete;
import Model.UserBased.*;
import com.google.gson.Gson;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.sql.Date;
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

	@GetMapping("/felhasznalo/Lektoralt")
	public ResponseEntity<String> FelhLekt() {
		return ok().body(new Gson().toJson(new NonTrivial().Lektoralt()));
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

	@GetMapping("/Cikk/hibak")
	public ResponseEntity<String> Hibak() {
		return ok().body(new Gson().toJson(new NonTrivial().Cikkhibai()));
	}

	@GetMapping("/felhasznalo/Hibajav")
	public ResponseEntity<String> Javitott() {
		return ok().body(new Gson().toJson(new NonTrivial().Hibajav()));
	}

	@GetMapping("/Kat")
	public ResponseEntity<ArrayList<Kategoria>> Category() {
		return new ResponseEntity<>(a.Katall(), HttpStatus.OK);
	}

	@GetMapping("/Kat/cikkek")
	public ResponseEntity<String> CatCikk() {
		return ok().body(new Gson().toJson(new NonTrivial().Kategoriabancikk()));
	}

	/**
	 *
	 * @param keresoszo csak egy keres?? sz??t vagy sz?? r??szletet kell ??tadni
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
	 *          	"Email":"Emailc??me"
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
	 *
	 * @param uj
	 * {
	 *             "LektorID":"",
	 *             "szint":"",
	 *             "nyelv":""
	 * }
	 */
	@PostMapping(value = "/felhasznalo/Nyelvek/add")
	public ResponseEntity<Boolean> Nyelvadd (@RequestBody Map<String,String> uj){
		Nyelvtudas nyelv = new Nyelvtudas(uj.get("LektorID"),uj.get("szint"),uj.get("nyelv"));
		try {
			Boolean a =new Insert().addNyelvtudas(nyelv);
			return new ResponseEntity<>(a, HttpStatus.ACCEPTED);
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<>(false, HttpStatus.NOT_ACCEPTABLE);
		}
	}

	/**
	 *
	 * @param uj {
	 *              "felhID":"",
	 *           	"ujID":""
	 *           }
	 */
	@PostMapping(value = "/Admin")
	public ResponseEntity<Admin> Rangadd (@RequestBody Map<String,String> uj){
		Admin uja;
		try {
			uja= new Admin (new Find().FelhaszID(uj.get("felhID")));
			uja.setID(uj.get("ujID"));
			Boolean a =new Insert().addAdmin(uja);


			ArrayList<Cikk> atir = new Find().usercikkei(uj.get("felhID"));
			for (Cikk n : atir)
			{
				n.setSzerzo(uja.getID());
				new Update().UpdateSzerzo(n);
			}
			new Delete().Userid(uj.get("felhID"));
			if(!a) throw new Exception();
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<>(null, HttpStatus.NOT_ACCEPTABLE);
		}
		return new ResponseEntity<>(uja, HttpStatus.ACCEPTED);
	}

	/**
	 *
	 * @param uj {
	 *            "felhID":"",
	 *            "intezet":"",
	 *            "szakterulet":"",
	 *           "fokozat":""
	 *           }
	 */
	@PostMapping(value = "/Lektor")
	public ResponseEntity<Lektor> Lektoradd (@RequestBody Map<String,String> uj){
		Lektor ujl;
		try {
			ujl= new Lektor(new Find().FelhaszID(uj.get("felhID")));
			ujl.setIntezet(uj.get("intezet"));
			ujl.setSzakterulet(uj.get("szakterulet"));
			ujl.setTudFokozat(uj.get("fokozat"));
			Boolean a =new Insert().addLektor(ujl);

			ArrayList<Cikk> atir = new Find().usercikkei(uj.get("felhID"));
			for (Cikk n : atir)
			{
				n.setSzerzo(ujl.getID());
				new Update().UpdateSzerzo(n);
			}
			new Delete().Userid(uj.get("felhID"));
			if(!a) throw new Exception();
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<>(null, HttpStatus.NOT_ACCEPTABLE);
		}
		return new ResponseEntity<>(ujl, HttpStatus.ACCEPTED);
	}

	/**
	 *NINCS TESZTELVE!
	 * @param uj:
	 *             {
	 *             "ID":"",
	 *             "leiras":"",
	 *             "javitva": 1/true-> true|| b??rmi m??s -> false,
	 *          	"jelentoID":"",
	 *          	"cikkID":""
	 *          }
	 */
	@PostMapping(value = "/Hiba") //ID,LEIRAS,JAVITVA,JELENTOID,HIBASCIKKID
	public ResponseEntity<Hiba> Hibaadd (@RequestBody Map<String,String> uj){
		Boolean javit = false;
		if (uj.get("javitva").equals("1")||uj.get("javitva").equals("true"))
			javit = true;
		Hiba ujc= new Hiba(uj.get("leiras"), javit, uj.get("jelentoID"), uj.get("cikkID"));
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
		Javitas ujc= new Javitas(uj.get("adminID"), uj.get("hibaID"), "2002.1.15", uj.get("jegyzet"));
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
	 *             "leiras":""
	 *          }
	 */
	@PostMapping("/Cikk/mod")
	public ResponseEntity<Modositas> Modadd (@RequestBody Map<String,String> uj){
		Modositas ujm= new Modositas(uj.get("CikkID"),uj.get("leiras"),"2022.01.01");
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
		Ban ujc= new Ban(uj.get("felhasznaloID"),uj.get("adminID"),"2022.01.01",uj.get("indok"),uj.get("hossz"));
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
	 *      "jelszo": "jelszava"
	 * }
	 */
	@PostMapping(value = "/felhasznalo/jelszo")
	public ResponseEntity<Boolean> Felhasznupdate (@RequestBody Map<String,String> up){
		try {
			Boolean a;
			if (up.get("ID").contains("L")){
				a = new Update().LEKTORID(up.get("ID"), up.get("jelszo"));
				return new ResponseEntity<>(a, HttpStatus.ACCEPTED);
			}
			else if (up.get("ID").contains("A")) {
				a = new Update().ADMINID(up.get("ID"), up.get("jelszo"));
				return new ResponseEntity<>(a, HttpStatus.ACCEPTED);
			}
				a = new Update().FelhaszID(up.get("ID"), up.get("jelszo"));
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

		Cikk Updated= new Cikk(up.get("ID"),up.get("cim"), up.get("tartalom"), up.get("allapot"), up.get("nyelv"), up.get("kategoria"),up.get("szerzo"),kulcsszavak,up.get("lektor"),null);

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
