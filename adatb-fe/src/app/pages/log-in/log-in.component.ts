import { Component, OnInit } from '@angular/core';
import { FormControl } from '@angular/forms';
import { Router } from '@angular/router';
import { Observable, Subscription } from 'rxjs';
import { LoginService } from 'src/app/services/login.service';

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

  constructor(private router: Router, private loginService: LoginService) { }

  login(){
    this.loadingObservation = this.loginService.loadingWithObservable(this.email.value, this.password.value);
    this.loadingSubscription = this.loadingObservation
      .subscribe(
        {
          next: (data: boolean) => {
            this.router.navigateByUrl('/home');
          }, error: (error) => {
            console.error(error);
          }, complete: () => {
            console.log('finally');
          }
        }
      );
  }

  ngOnInit(): void {
  }

}
