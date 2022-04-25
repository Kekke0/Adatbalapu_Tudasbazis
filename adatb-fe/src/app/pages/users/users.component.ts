import { DataSource, SelectionModel } from '@angular/cdk/collections';
import { Component, OnInit, ViewChild } from '@angular/core';
import { MatTable } from '@angular/material/table';
import { Observable, ReplaySubject } from 'rxjs';

@Component({
  selector: 'app-users',
  templateUrl: './users.component.html',
  styleUrls: ['./users.component.scss']
})
export class UsersComponent implements OnInit {

  constructor() { }

  ngOnInit(): void {
  }

  ELEMENT_DATA = [
    {position: 1, name: 'Hydrogen', weight: 1.0079, symbol: 'H'},
    {position: 2, name: 'Helium', weight: 4.0026, symbol: 'He'},
    {position: 3, name: 'Lithium', weight: 6.941, symbol: 'Li'},
    {position: 4, name: 'Beryllium', weight: 9.0122, symbol: 'Be'},
    {position: 5, name: 'Boron', weight: 10.811, symbol: 'B'},
    {position: 6, name: 'Carbon', weight: 12.0107, symbol: 'C'},
    {position: 7, name: 'Nitrogen', weight: 14.0067, symbol: 'N'},
    {position: 8, name: 'Oxygen', weight: 15.9994, symbol: 'O'},
    {position: 9, name: 'Fluorine', weight: 18.9984, symbol: 'F'},
    {position: 10, name: 'Neon', weight: 20.1797, symbol: 'Ne'},
  ];
  displayedColumns: string[] = ['position', 'name', 'select'];
  dataToDisplay = [...this.ELEMENT_DATA];

  dataSource = new ExampleDataSource(this.dataToDisplay);
  selection = new SelectionModel<any>(true, []);

  // addData() {
  //   const randomElementIndex = Math.floor(Math.random() * this.ELEMENT_DATA.length);
  //   this.dataToDisplay = [...this.dataToDisplay, this.ELEMENT_DATA[randomElementIndex]];
  //   this.dataSource.setData(this.dataToDisplay);
  // }

  // removeData() {
  //   this.dataToDisplay = this.dataToDisplay.slice(0, -1);
  //   this.dataSource.setData(this.dataToDisplay);
  // }

    /** The label for the checkbox on the passed row */
    checkboxLabel(row?: any): string {
      return `${this.selection.isSelected(row) ? 'deselect' : 'select'} row ${row.position + 1}`;
    }
}

class ExampleDataSource extends DataSource<any> {
  private _dataStream = new ReplaySubject<any[]>();

  constructor(initialData: any) {
    super();
    this.setData(initialData);
  }

  connect(): Observable<any> {
    return this._dataStream;
  }

  disconnect() {}

  setData(data: any) {
    this._dataStream.next(data);
  }

}
