import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { RouterModule } from '@angular/router'; 

import { AppComponent } from './app.component';
import { HomeComponent } from './home/home.component';
import { JugadoresComponent } from './jugadores/jugadores.component';
import { MercadoComponent } from './mercado/mercado.component';
import { NosotrosComponent } from './nosotros/nosotros.component';
import { AppRoutingModule } from './app.routes'; 
import { routes } from './app.routes'; 
import { FooterComponent } from './footer/footer.component';
import { NavbarComponent } from './navbar/navbar.component';
import {LoginComponent} from './login/login.component';
import { AdminInicioComponent } from './admin-inicio/admin-inicio.component';

@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    JugadoresComponent,
    MercadoComponent,
    NosotrosComponent,
    FooterComponent,
    NavbarComponent,
    LoginComponent,
    AdminInicioComponent
  ],
  imports: [
    AppRoutingModule,
    RouterModule.forRoot(routes),
    BrowserModule,
    FormsModule,
    HttpClientModule,
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }