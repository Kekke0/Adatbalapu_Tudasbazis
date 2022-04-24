import { Component, OnInit } from '@angular/core';
import { FormControl } from '@angular/forms';
import { MatDialog } from '@angular/material/dialog';
import { Router } from '@angular/router';
import { Observable, of, Subscription } from 'rxjs';
import { DialogComponent } from 'src/app/components/dialog/dialog.component';
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

  constructor( private userService: UserService, public dialog: MatDialog, private router: Router) { }

  login(){
    //if(this.email)
    let email = this.email.value;
    let jelszo = this.password.value;
    this.userService.logIn(email, jelszo).subscribe(data =>{
      console.log(data);
      this.userService.isLoggedIn = true;
      this.router.navigateByUrl('/home');
      this.userService.loggedInUser = data;
      console.log(data);
    },
    error =>{
      console.log(error);
      this.openDialog();
    })
  }

  openDialog() {
    const dialogRef = this.dialog.open(DialogComponent,{
      data : "Sikertelen bejelentkezés!"
    });
  }

  ngOnInit(): void {
  }

}
