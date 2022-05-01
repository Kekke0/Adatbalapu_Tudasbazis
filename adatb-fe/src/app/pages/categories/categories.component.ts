import { Component, DoCheck, OnInit } from '@angular/core';
import { FormControl } from '@angular/forms';
import { UserService } from 'src/app/services/user.service';

@Component({
  selector: 'app-categories',
  templateUrl: './categories.component.html',
  styleUrls: ['./categories.component.scss']
})
export class CategoriesComponent implements OnInit, DoCheck {

  nev = new FormControl('');
  bovebben = new FormControl('');
  dataSource: any[] = [];
  displayedColumns: string[] = ['Nev', 'Bovebben'];
  isLektor: boolean = false;
  loggedInUser: any = {};
  userId: string = "";
  isUser = false;
  isLoggedIn: boolean = this.userService.isLoggedIn;

  constructor(private userService: UserService) { }

  ngOnInit(): void {
    this.userService.getCategories().subscribe(data =>{
      this.dataSource = data;
      console.log(this.dataSource)
    });
  }

  kategoriaHozzaadas(){
    this.userService.addKategoria(this.nev.value, this.bovebben.value).subscribe(data =>{
      this.userService.getCategories().subscribe(data =>{
        this.dataSource = data;
        console.log(this.dataSource)
      });
    });
  }
  ngDoCheck(): void {
    if(this.isLoggedIn !== this.userService.isLoggedIn){
      this.isLoggedIn = this.userService.isLoggedIn;
    }
    if(this.loggedInUser !== this.userService.loggedInUser){
      this.loggedInUser = this.userService.loggedInUser;
      this.userId = this.userService.loggedInUser?.id;
      if(this.loggedInUser?.id.startsWith("L")){
        this.isLektor = true;
      }
      if(this.loggedInUser?.id.startsWith("U")){
        this.isUser = true;
      }
      console.log(this.loggedInUser);
    }
  }
}
