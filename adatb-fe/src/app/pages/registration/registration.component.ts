import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup } from '@angular/forms';
import { MatDialog } from '@angular/material/dialog';
import { Router } from '@angular/router';
import { DialogComponent } from 'src/app/components/dialog/dialog.component';
import { Felhasznalo } from 'src/app/models/felhasznalo';
import { UserService } from 'src/app/services/user.service';


@Component({
  selector: 'app-registration',
  templateUrl: './registration.component.html',
  styleUrls: ['./registration.component.scss']
})
export class RegistrationComponent implements OnInit {

  signUpForm = new FormGroup({
    email: new FormControl(''),
    password: new FormControl(''),
    name: new FormControl('')
  });


  constructor(private userService : UserService, public dialog: MatDialog, private router: Router) { }

  ngOnInit(): void {
  }

  openDialog() {
    const dialogRef = this.dialog.open(DialogComponent,{
      data : "Sikertelen regisztráció!"
    });
  }

  onSubmit(){
    let body = {Nev: this.signUpForm.value.name, Email: this.signUpForm.value.email, jelszo: this.signUpForm.value.password };
    this.userService.registration(body).subscribe(data =>{
      let felhasznalo: Felhasznalo = data;
      this.router.navigateByUrl('/log-in');
    },
    error => {
      //this.errors = error;
      this.openDialog();
    });
    
  }

}
