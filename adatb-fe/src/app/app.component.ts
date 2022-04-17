import { Component, Injectable, OnInit } from '@angular/core';
import { HttpClient, HttpParams } from '@angular/common/http';
import { environment } from 'src/environments/environment';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})

@Injectable({
  providedIn: 'root'
})
export class AppComponent implements OnInit{

  constructor(private http: HttpClient){}

  postRegisztracio(){
    let body = {Nev: "valami nev ANGULARBOL", Email: "ANGULARemil@gmail.com", jelszo: "jelszoertek" };
    this.http.post<any>(environment.API_URL + "/Reg", body).subscribe(data => {
      console.log(data);
  })
  }

  ngOnInit(): void {
    //this.postBejelentkezes();
  }
}
