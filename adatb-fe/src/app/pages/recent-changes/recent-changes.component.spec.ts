import { ComponentFixture, TestBed } from '@angular/core/testing';

import { RecentChangesComponent } from './recent-changes.component';

describe('RecentChangesComponent', () => {
  let component: RecentChangesComponent;
  let fixture: ComponentFixture<RecentChangesComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ RecentChangesComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(RecentChangesComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
