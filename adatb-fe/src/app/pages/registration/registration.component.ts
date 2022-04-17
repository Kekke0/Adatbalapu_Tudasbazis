import { Location } from '@angular/common';
import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup } from '@angular/forms';
import { environment } from 'src/environments/environment';

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

  constructor(private location: Location, private http: HttpClient) { }

  ngOnInit(): void {
  }

  onSubmit(){
      let body = {Nev: this.signUpForm.value.name, Email: this.signUpForm.value.email, jelszo: this.signUpForm.value.password };

      this.http.post<any>(environment.API_URL + "/Reg", body).subscribe(data => {
        console.log(data);
    })
    
  }

}
