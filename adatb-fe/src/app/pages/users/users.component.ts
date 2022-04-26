import { DataSource, SelectionModel } from '@angular/cdk/collections';
import { Component, OnInit, ViewChild } from '@angular/core';
import { MatTable } from '@angular/material/table';
import { Observable, ReplaySubject } from 'rxjs';
import { UserService } from 'src/app/services/user.service';

@Component({
  selector: 'app-users',
  templateUrl: './users.component.html',
  styleUrls: ['./users.component.scss']
})
export class UsersComponent implements OnInit {

  dataSource: any[] = [];
  dataSource2: any[] = [];
  dataSource3: any[] = [];
  dataSource4: any[] = [];

  constructor(private userService: UserService) { }

  ngOnInit(): void {
    this.userService.osszesFelhasznalo().subscribe(data =>{
        this.dataSource = data;
    });

    this.userService.kiHanyszorVoltBannolva().subscribe(data =>{
      this.dataSource2 = data;
    });

    this.userService.kiHanyszorJelentettHibat().subscribe(data =>{
      this.dataSource3 = data;
    });
    this.userService.kiHanyCikketIrt().subscribe(data =>{
      this.dataSource4 = data;
    });
  }

  displayedColumns: string[] = ['Email', 'Nev', 'select'];
  displayedColumns2: string[] = ['nev', 'count'];

  selection = new SelectionModel<any>(true, []);

  checkboxLabel(row?: any): string {
    return `${this.selection.isSelected(row) ? 'deselect' : 'select'} row ${row.position + 1}`;
  }


}

