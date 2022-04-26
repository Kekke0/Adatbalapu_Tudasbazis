import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Params } from '@angular/router';

@Component({
  selector: 'app-mistake',
  templateUrl: './mistake.component.html',
  styleUrls: ['./mistake.component.scss']
})
export class MistakeComponent implements OnInit {

  constructor(private route: ActivatedRoute) { }

  ngOnInit(): void {
    this.route.params.subscribe(
      (params: Params) => {
        console.log(params['id']);
      }
    );
  }

}
