import { ComponentFixture, TestBed } from '@angular/core/testing';

import { RandomArticleComponent } from './random-article.component';

describe('RandomArticleComponent', () => {
  let component: RandomArticleComponent;
  let fixture: ComponentFixture<RandomArticleComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ RandomArticleComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(RandomArticleComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
