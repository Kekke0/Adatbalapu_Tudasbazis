import { ComponentFixture, TestBed } from '@angular/core/testing';

import { BanComponent } from './ban.component';

describe('BanComponent', () => {
  let component: BanComponent;
  let fixture: ComponentFixture<BanComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ BanComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(BanComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
