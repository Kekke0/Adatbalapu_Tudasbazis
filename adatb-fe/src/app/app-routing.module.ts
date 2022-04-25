import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AddArticleComponent } from './components/add-article/add-article.component';
import { AccountComponent } from './pages/account/account.component';
import { CategoriesComponent } from './pages/categories/categories.component';
import { ContactComponent } from './pages/contact/contact.component';
import { ContentComponent } from './pages/content/content.component';
import { HomeComponent } from './pages/home/home.component';
import { LogInComponent } from './pages/log-in/log-in.component';
import { RandomArticleComponent } from './pages/random-article/random-article.component';
import { RecentChangesComponent } from './pages/recent-changes/recent-changes.component';
import { RegistrationComponent } from './pages/registration/registration.component';
import { SearchComponent } from './pages/search/search.component';
import { UsersComponent } from './pages/users/users.component';

const routes: Routes = [
  {path: '', component: HomeComponent},
  {path: 'contact', component: ContactComponent},
  {path: 'content', component: ContentComponent},
  {path: 'home', component: HomeComponent},
  {path: 'log-in', component: LogInComponent},
  {path: 'random-article', component: RandomArticleComponent},
  {path:'recent-changes', component: RecentChangesComponent},
  {path: 'registration', component: RegistrationComponent},
  {path:'search', component: SearchComponent},
  {path:'add-article', component: AddArticleComponent},
  {path:'account', component: AccountComponent},
  {path:'users', component: UsersComponent},
  {path:'categories', component: CategoriesComponent},
  {path: '**', component: HomeComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
