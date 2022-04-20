import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup } from '@angular/forms';
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


  constructor(private userService : UserService) { }

  ngOnInit(): void {
  }

  onSubmit(){
    let body = {Nev: this.signUpForm.value.name, Email: this.signUpForm.value.email, jelszo: this.signUpForm.value.password };
    this.userService.registration(body).subscribe(data =>{
      let felhasznalo: Felhasznalo = data;
    },
    error => {
      //this.errors = error;
    });
    
  }

}
