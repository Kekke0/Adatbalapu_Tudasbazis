import { Component, OnInit } from '@angular/core';
import { FormControl } from '@angular/forms';
import { UserService } from 'src/app/services/user.service';

@Component({
  selector: 'app-categories',
  templateUrl: './categories.component.html',
  styleUrls: ['./categories.component.scss']
})
export class CategoriesComponent implements OnInit {

  nev = new FormControl('');
  bovebben = new FormControl('');
  dataSource: any[] = [];
  displayedColumns: string[] = ['Nev', 'Bovebben'];

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
}
