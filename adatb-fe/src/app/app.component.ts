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
  title = 'adatb-fe';
  lektorok = [];
  nev = "placeholder";
  pw = "ph";

  
  constructor(private http: HttpClient){}

  getLektorok() {
    return this.http.get<any>(environment.API_URL + "/api/Lektor");
  }

  postBejelentkezes(){
    let body = JSON.stringify({ 'Nev': this.nev, 'Pass': this.pw });
    body = "bádi";
    this.http.post<any>(environment.API_URL + "/felhasznalo", body).subscribe(data => {
      console.log(data);
  })
  }

  showLektorok() {
    this.getLektorok()
      .subscribe((data: any) => {
        this.lektorok = data
        console.log(this.lektorok)
      });
      
  }

  ngOnInit(): void {
    //this.showLektorok();
    this.postBejelentkezes();
  }
}
