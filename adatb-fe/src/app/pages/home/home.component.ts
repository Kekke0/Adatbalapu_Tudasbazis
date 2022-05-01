import { Component, DoCheck, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { UserService } from 'src/app/services/user.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit, DoCheck {

  cikkek: any;
  bejelentkezett = false;
  loggedInUser: any = {};
  isLektor = false;
  isUser = false;
  constructor(private userService: UserService, private router: Router) { }

  ngOnInit(): void {
    this.userService.osszesCikkABC().subscribe((data)=>{
        this.cikkek = data;
    });
  }

  ngDoCheck(): void {
    if(this.bejelentkezett !== this.userService.isLoggedIn){
      this.bejelentkezett = this.userService.isLoggedIn;
    }
    if(this.loggedInUser !== this.userService.loggedInUser){
      this.loggedInUser = this.userService.loggedInUser;
    }
    if(this.loggedInUser?.id.startsWith("L")){
      this.isLektor = true;
    }
    if(this.loggedInUser?.id.startsWith("U")){
      this.isUser = true;
    }
  }

  cikkHozzaadas(): void{
    this.router.navigateByUrl('/add-article');
  }
}
