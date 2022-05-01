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
    // console.log(this.loggedInUser)
    // console.log(this.loggedInUser.nev)
    // console.log(this.loggedInUser.jelszo)
  }
  changePassword(){
    console.log(this.password.value);
      this.userService.changeJelszo(this.loggedInUser.id, this.loggedInUser.nev, this.loggedInUser.email, this.password.value).subscribe(data =>{
        console.log("sikeres jelszóváltás")
      },
      error =>{
        console.log("sikertelen jelszóváltás")
      });
  }

}
