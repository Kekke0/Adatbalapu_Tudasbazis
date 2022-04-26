import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, of, Subject, Subscriber } from 'rxjs';
import { environment } from 'src/environments/environment';
import { Felhasznalo } from '../models/felhasznalo';

@Injectable({
  providedIn: 'root'
})
export class UserService {

  isLoggedIn : boolean = false;
  isLoggedInChange: Subject<boolean> = new Subject<boolean>();
  loggedInUser: any;

  constructor(private http: HttpClient) {
    this.isLoggedInChange.subscribe((value) => {
        this.isLoggedIn = value;
    });
   }
  
  public registration(user: any): Observable<any>{
    return this.http.post<any>(environment.API_URL + "/Reg", user);
  }

  public logIn(email: string, jelszo: string): Observable<any>{
    let body = {Email: email, Pass: jelszo };
    return this.http.post<any>(environment.API_URL + "/Bejelentkezes", body);
  }

  public getCategories(): Observable<any>{
    return this.http.get<any>(environment.API_URL + "/Kat");
  }

  public addCikk(cim: string, tartalom: string, allapot: string, nyelv: string, kategoria: string, szerzo: string, kulcsszavak: string): Observable<any>{
    let body = {cim: cim, tartalom: tartalom, allapot: allapot, nyelv: nyelv, kategoria: kategoria, szerzo: szerzo, kulcsszavak: kulcsszavak };
    return this.http.post<any>(environment.API_URL + "/Cikkadd", body);
  }

  public osszesCikkABC(){
    return this.http.get<any>(environment.API_URL + "/Cikk");
  }

  public getCikk(id: any){
    return this.http.post<any>(environment.API_URL + "/getCikk", id);
  }

  public kiHanyszorVoltBannolva(){
    return this.http.get<any>(environment.API_URL + "/felhasznalo/Bann");
  }

  public kiHanyszorJelentettHibat(){
    return this.http.get<any>(environment.API_URL + "/felhasznalo/Hibajel");
  }

  public kiHanyCikketIrt(){
    return this.http.get<any>(environment.API_URL + "/felhasznalo/Cikkek");
  }

  public osszesFelhasznalo(){
    return this.http.get<any>(environment.API_URL + "/felhasznalo");
  }

  public addKategoria(nev: string, bovebben: string): Observable<any>{
    let body = {Nev: nev, Bovebben: bovebben };
    return this.http.post<any>(environment.API_URL + "/addKategoria", body);
  }
}
