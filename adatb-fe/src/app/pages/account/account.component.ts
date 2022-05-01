import { Component, OnInit } from '@angular/core';
import { FormControl } from '@angular/forms';
import { UserService } from 'src/app/services/user.service';

@Component({
  selector: 'app-account',
  templateUrl: './account.component.html',
  styleUrls: ['./account.component.scss']
})
export class AccountComponent implements OnInit {

  loggedInUser: any = {};
  isLoggedIn = false;
  isLektor= false;
  name = new FormControl(this.loggedInUser.nev);
  password = new FormControl(this.loggedInUser.jelszo);
  valasztottNyelv = "";
  valasztottSzint = "";
  nyelvek = [
    {value: 'Magyar'},
    {value: 'Angol'},
    {value: 'Francia'},
    {value: 'Német'},
    {value: 'Olasz'}
  ];
  szintek = [
    {value: 'A1'},
    {value: 'A2'},
    {value: 'B1'},
    {value: 'B2'},
    {value: 'C1'},
    {value: 'C2'}
  ];
  constructor(private userService: UserService) { }

  ngOnInit(): void {
  }

  ngDoCheck(): void {
    if(this.isLoggedIn !== this.userService.isLoggedIn){
      this.isLoggedIn = this.userService.isLoggedIn;
    }
    if(this.loggedInUser !== this.userService.loggedInUser){
      this.loggedInUser = this.userService.loggedInUser;
      if(this.loggedInUser?.id.startsWith("L")){
        this.isLektor = true;
      }
    }
  }
  changePassword(){
    console.log(this.password.value);
      this.userService.changeJelszo(this.loggedInUser.id, this.loggedInUser.nev, this.loggedInUser.email, this.password.value).subscribe(data =>{
        console.log("sikeres jelszóváltás")
      },
      error =>{
        console.log("sikertelen jelszóváltás")
      });
      if(this.valasztottNyelv && this.valasztottSzint){
        this.userService.addNyelv(this.loggedInUser.id, this.valasztottSzint, this.valasztottNyelv).subscribe(data =>{
          console.log("sikeres nyelvhozzáadás")
        },
        error=>{
          console.log("sikertelen nyelvhozzáadás")
        });
      }

  }

}
