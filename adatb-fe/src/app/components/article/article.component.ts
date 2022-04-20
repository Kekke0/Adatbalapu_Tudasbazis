import { Component, DoCheck, Input, OnInit } from '@angular/core';
import { Cikk } from 'src/app/models/cikk';
import { UserService } from 'src/app/services/user.service';

@Component({
  selector: 'app-article',
  templateUrl: './article.component.html',
  styleUrls: ['./article.component.scss']
})
export class ArticleComponent implements OnInit, DoCheck {

  @Input() cikk: any;
  kulcsszavak: any;
  isLektor: boolean = false;
  loggedInUser: any = {};

  constructor(private userService: UserService) { }

  isLoggedIn: boolean = this.userService.isLoggedIn;

  ngOnInit(): void {
    this.kulcsszavak = this.cikk?.kulcsszo[0]?.split(',');
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

}
