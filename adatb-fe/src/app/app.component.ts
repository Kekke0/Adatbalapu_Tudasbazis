import { Component, Injectable, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';
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

constructor(private http: HttpClient){}

  getLektorok() {
    return this.http.get<any>(environment.API_URL + "/api/Lektor");
  }

  showLektorok() {
    this.getLektorok()
      .subscribe((data: any) => {
        this.lektorok = data
        console.log(this.lektorok)
      });
      
  }

  ngOnInit(): void {
    this.showLektorok();
    
  }
}
