package com.example.AdatbTudasbazis;

import DAO.DB;
import DAO.SelectAll;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class AdatbTudasbazisApplication {

	public static void main(String[] args) {
		SelectAll a = new SelectAll();
		//Itt az "a" metódusai mind egy-egy táblát kérnek le.
	}

}
