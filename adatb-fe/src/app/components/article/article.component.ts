import { Component, DoCheck, Input, OnInit } from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { Router } from '@angular/router';
import { Cikk } from 'src/app/models/cikk';
import { MistakeComponent } from 'src/app/pages/mistake/mistake.component';
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
  userId: string = "";
  isUser = false;

  constructor(private userService: UserService, private router: Router, public dialog: MatDialog) { }

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
      this.userId = this.userService.loggedInUser?.id;
      console.log(this.cikk.szerzo);
      if(this.loggedInUser?.id.startsWith("L")){
        this.isLektor = true;
      }
      if(this.loggedInUser?.id.startsWith("U")){
        this.isUser = true;
      }
      console.log(this.loggedInUser);
    }
  }

  hibaJelentes(cikk:any){
    //this.router.navigate(['/mistake', this.cikk.id]);
    cikk.ok="";
    const dialogRef = this.dialog.open(MistakeComponent, {
      width: '250px',
      data: cikk,
    });

    dialogRef.afterClosed().subscribe(result => {
      console.log('The dialog was closed');
      //this.animal = result;
      if(result && result?.ok != ""){
        this.userService.addHiba(result.ok, "0", this.userService.loggedInUser.id, cikk.id).subscribe(data =>{
          console.log("sikeres hibajelentés")
        },
        error =>{
          console.log("sikertelen hibajelentés")
        });
      }
    });
  }

  szerkesztes(){
    this.router.navigate(['/edit-article', this.cikk.id]);
  }

  torles(){

  }

  lektoralas(){
    this.router.navigate(['/edit-article', this.cikk.id]);
  }

}
