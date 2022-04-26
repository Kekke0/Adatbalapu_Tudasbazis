import { HttpClientModule } from '@angular/common/http';
import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { MatToolbarModule } from '@angular/material/toolbar';
import { FlexLayoutModule } from '@angular/flex-layout';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';
import { MatButtonModule } from '@angular/material/button';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { LogInComponent } from './pages/log-in/log-in.component';
import { ContactComponent } from './pages/contact/contact.component';
import { ContentComponent } from './pages/content/content.component';
import { HomeComponent } from './pages/home/home.component';
import { RandomArticleComponent } from './pages/random-article/random-article.component';
import { RecentChangesComponent } from './pages/recent-changes/recent-changes.component';
import { RegistrationComponent } from './pages/registration/registration.component';
import { SearchComponent } from './pages/search/search.component';
import { ArticleComponent } from './components/article/article.component';
import { MatCardModule} from '@angular/material/card';
import { DialogComponent } from './components/dialog/dialog.component';
import { MatDialogModule } from '@angular/material/dialog';
import { AddArticleComponent } from './components/add-article/add-article.component';
import { MatSelectModule} from '@angular/material/select';
import {MatChipsModule} from '@angular/material/chips';
import {MatIconModule} from '@angular/material/icon';
import { AccountComponent } from './pages/account/account.component';
import { UsersComponent } from './pages/users/users.component';
import {MatTableModule} from '@angular/material/table';
import {MatCheckboxModule} from '@angular/material/checkbox';
import { CategoriesComponent } from './pages/categories/categories.component';
import { MistakeComponent } from './pages/mistake/mistake.component';
import { EditArticleComponent } from './pages/edit-article/edit-article.component';


@NgModule({
  declarations: [
    AppComponent,
    LogInComponent,
    ContactComponent,
    ContentComponent,
    HomeComponent,
    RandomArticleComponent,
    RecentChangesComponent,
    RegistrationComponent,
    SearchComponent,
    ArticleComponent,
    DialogComponent,
    AddArticleComponent,
    AccountComponent,
    UsersComponent,
    CategoriesComponent,
    MistakeComponent,
    EditArticleComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    BrowserAnimationsModule,
    MatToolbarModule,
    FlexLayoutModule,
    ReactiveFormsModule,
    MatFormFieldModule,
    MatInputModule,
    MatButtonModule,
    MatCardModule,
    MatDialogModule,
    MatInputModule,
    MatSelectModule,
    MatChipsModule,
    MatIconModule,
    MatTableModule,
    MatCheckboxModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
