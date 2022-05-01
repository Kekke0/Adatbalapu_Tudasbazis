import { DataSource, SelectionModel } from '@angular/cdk/collections';
import { Component, Inject, OnInit, ViewChild } from '@angular/core';
import { MatDialog, MatDialogRef, MAT_DIALOG_DATA } from '@angular/material/dialog';
import { MatTable } from '@angular/material/table';
import { Observable, ReplaySubject } from 'rxjs';
import { BanComponent } from 'src/app/components/ban/ban.component';
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

  constructor(private userService: UserService, public dialog: MatDialog) { }

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


  openDialog(element:any): void {
    const dialogRef = this.dialog.open(BanComponent, {
      width: '250px',
      data: element,
    });

    dialogRef.afterClosed().subscribe(result => {
      //console.log('The dialog was closed');
      //this.animal = result;
      //console.log(result);
      //console.log(this.userService.loggedInUser.id)
      this.userService.addBan(result.ID, this.userService.loggedInUser.id, result.indok, result.hossz)
    });
  }

  ban(element: any){
    console.log(element);
  }

}
