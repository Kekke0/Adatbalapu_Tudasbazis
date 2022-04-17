import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ContactComponent } from './pages/contact/contact.component';
import { ContentComponent } from './pages/content/content.component';
import { HomeComponent } from './pages/home/home.component';
import { LogInComponent } from './pages/log-in/log-in.component';
import { RandomArticleComponent } from './pages/random-article/random-article.component';
import { RecentChangesComponent } from './pages/recent-changes/recent-changes.component';
import { RegistrationComponent } from './pages/registration/registration.component';
import { SearchComponent } from './pages/search/search.component';

const routes: Routes = [
  {path: 'contact', component: ContactComponent},
  {path: 'content', component: ContentComponent},
  {path: 'home', component: HomeComponent},
  {path: 'log-in', component: LogInComponent},
  {path: 'random-article', component: RandomArticleComponent},
  {path:'recent-changes', component: RecentChangesComponent},
  {path: 'registration', component: RegistrationComponent},
  {path:'search', component: SearchComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
