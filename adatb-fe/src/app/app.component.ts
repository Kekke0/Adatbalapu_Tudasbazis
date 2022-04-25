import { Component, DoCheck, Injectable, OnInit } from '@angular/core';
import { HttpClient, HttpParams } from '@angular/common/http';
import { environment } from 'src/environments/environment';
import { UserService } from './services/user.service';
import { Observable } from 'rxjs';
import { ThisReceiver } from '@angular/compiler';
import { Router } from '@angular/router';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})

@Injectable({
  providedIn: 'root'
})
export class AppComponent implements OnInit, DoCheck{
  bejelentkezett: boolean = this.userService.isLoggedIn;
  isLoggedIn = false;
  isAdmin = false;
  isLektor= false;
  loggedInUser: any = {};
  constructor(private http: HttpClient, private userService: UserService, private router: Router){}

  felhasznalo = this.userService.loggedInUser;

  kijelentkezes(): void{
    this.userService.isLoggedIn = false;
    this.userService.loggedInUser = null;
    this.router.navigateByUrl('/home');
  }


  ngOnInit(): void {

  }
  ngDoCheck(): void {
    if(this.bejelentkezett !== this.userService.isLoggedIn){
      this.bejelentkezett = this.userService.isLoggedIn;
    }

    if(this.loggedInUser !== this.userService.loggedInUser){
      this.loggedInUser = this.userService.loggedInUser;
      this.isLektor = false;
      this.isAdmin = false;
      if(this.loggedInUser?.id.startsWith("L")){
        this.isLektor = true;
      }
      if(this.loggedInUser?.id.startsWith("A")){
        this.isAdmin = true;
      }
    }
  }

}
