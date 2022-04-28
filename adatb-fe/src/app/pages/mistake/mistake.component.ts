import { Component, Inject, OnInit } from '@angular/core';
import { MatDialogRef, MAT_DIALOG_DATA } from '@angular/material/dialog';
import { ActivatedRoute, Params } from '@angular/router';
import { BanComponent } from 'src/app/components/ban/ban.component';

@Component({
  selector: 'app-mistake',
  templateUrl: './mistake.component.html',
  styleUrls: ['./mistake.component.scss']
})
export class MistakeComponent implements OnInit {

  ngOnInit(): void {
    // this.route.params.subscribe(
    //   (params: Params) => {
    //     console.log(params['id']);
    //   }
    // );
  }
  constructor(
    public dialogRef: MatDialogRef<BanComponent>,
    @Inject(MAT_DIALOG_DATA) public data: any,
  ) {}

  onNoClick(): void {
    this.dialogRef.close();
  }

}
