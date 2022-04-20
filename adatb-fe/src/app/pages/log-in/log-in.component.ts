import { Component, OnInit } from '@angular/core';
import { FormControl } from '@angular/forms';
import { Router } from '@angular/router';
import { Observable, Subscription } from 'rxjs';
import { Felhasznalo } from 'src/app/models/felhasznalo';
import { UserService } from 'src/app/services/user.service';
import { environment } from 'src/environments/environment';

@Component({
  selector: 'app-log-in',
  templateUrl: './log-in.component.html',
  styleUrls: ['./log-in.component.scss']
})
export class LogInComponent implements OnInit {

  email = new FormControl('');
  password = new FormControl('');

  loadingSubscription?: Subscription;
  loadingObservation?: Observable<boolean>;
  http: any;

  constructor( private userService: UserService) { }

  login(){
    //if(this.email)
    let email = this.email.value;
    let jelszo = this.password.value;
    this.userService.logIn(email, jelszo).subscribe(data =>{
      console.log(data);
    })

  }

  ngOnInit(): void {
  }

}
