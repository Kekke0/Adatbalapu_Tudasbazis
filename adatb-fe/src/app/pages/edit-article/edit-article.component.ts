import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { FormControl } from '@angular/forms';
import { MatChipInputEvent } from '@angular/material/chips';
import { MatDialog } from '@angular/material/dialog';
import { DialogComponent } from 'src/app/components/dialog/dialog.component';
import { UserService } from 'src/app/services/user.service';
import {COMMA, ENTER} from '@angular/cdk/keycodes';
import { ActivatedRoute, Params, Route } from '@angular/router';

@Component({
  selector: 'app-edit-article',
  templateUrl: './edit-article.component.html',
  styleUrls: ['./edit-article.component.scss']
})
export class EditArticleComponent implements OnInit {


  @Output() change = new EventEmitter<any>();
  cikk: any = {};
  addOnBlur = true;
  readonly separatorKeysCodes = [ENTER, COMMA] as const;
  kulcsszavak: any = [];


  cim = new FormControl('');
  tartalom = new FormControl('');
  // valasztottNyelv = new FormControl('');
  // valasztottKategoria = new FormControl('');
  valasztottNyelv = "";
  valasztottKategoria = "";

  nyelvek = [
    {value: 'Magyar'},
    {value: 'Angol'},
    {value: 'Francia'},
    {value: 'Német'},
    {value: 'Olasz'}
  ];
  kategoriak: any;

  constructor(private userService: UserService, public dialog: MatDialog, private route: ActivatedRoute) { }

  cikkSzerkesztes(): void{
    let cim = this.cim.value;
    let tartalom = this.tartalom.value;
    let nyelv = this.valasztottNyelv;
    let kategoria = this.valasztottKategoria;
    let kulcsszavak = this.kulcsszavak.toString();
    let szerzo = this.userService?.loggedInUser?.id;
    console.log(szerzo);
    console.log(tartalom);
    console.log(nyelv);
    console.log(kategoria);
    console.log("kulcsszavak: " + kulcsszavak);
    console.log(cim);

    if(this.cikk.id && szerzo && cim && tartalom && nyelv && kategoria && kulcsszavak){
      this.userService.addCikk(cim, tartalom, "kezdeti", nyelv, kategoria, szerzo, kulcsszavak).subscribe(data =>{
        console.log(data.kulcsszo[0].split(','));

      },
        (      error: any) =>{
        console.log(error);
        this.openDialog("Sikertelen cikklétrehozás!");
      })
    } else{
      this.openDialog("Az összes mezőt szükséges kitölteni!");
    }
  }

  ngOnInit(): void {
    this.userService.getCategories().subscribe((data: any)=>{
      this.kategoriak = data;
    });

    this.route.params.subscribe(
      (params: Params) => {
        console.log(params['id']);
        this.userService.getCikk(params['id']).subscribe(data =>{
          console.log(data)
          this.cikk = data;
          this.valasztottKategoria = this.cikk.valasztottKategoria;
          this.cim.setValue(this.cikk.cim);
          this.tartalom.setValue(this.cikk.tartalom);
        });
      }
    );
  }

  openDialog(szoveg : string) {
    const dialogRef = this.dialog.open(DialogComponent,{
      data : szoveg
    });
  }

  add(event: MatChipInputEvent): void {
    const value = (event.value || '').trim();

    if (value) {
      this.kulcsszavak.push(value);
    }

    event.chipInput!.clear();

    console.log(this.kulcsszavak.toString());
  }

  remove(kulcsszo: string): void {
    const index = this.kulcsszavak.indexOf(kulcsszo);

    if (index >= 0) {
      this.kulcsszavak.splice(index, 1);
    }
  }
}
