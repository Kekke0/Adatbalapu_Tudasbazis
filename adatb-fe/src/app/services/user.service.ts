import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, Subscriber } from 'rxjs';
import { environment } from 'src/environments/environment';
import { Felhasznalo } from '../models/felhasznalo';

@Injectable({
  providedIn: 'root'
})
export class UserService {


  constructor(private http: HttpClient) { }
  
  public registration(user: any): Observable<any>{
    return this.http.post<any>(environment.API_URL + "/Reg", user);
  }

  public logIn(email: string, jelszo: string): Observable<any>{
    let body = {Email: email, Pass: jelszo };
    return this.http.post<any>(environment.API_URL + "/Bejelentkezes", body);
  }
}
