import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { RouterModule } from '@angular/router'; 
import { MatDialogModule } from '@angular/material/dialog';
import { PopUpComponent } from './pop-up/pop-up.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';

import { AppComponent } from './app.component';
import { HomeComponent } from './home/home.component';
import { JugadoresComponent } from './jugadores/jugadores.component';
import { MercadoComponent } from './mercado/mercado.component';
import { NosotrosComponent } from './nosotros/nosotros.component';
import { AppRoutingModule } from './app.routes'; 
import { routes } from './app.routes'; 
import { FooterComponent } from './footer/footer.component';
import { NavbarComponent } from './navbar/navbar.component';
import { LoginComponent } from './login/login.component';
import { AdminInicioComponent } from './admin-inicio/admin-inicio.component';
import { EquipoComponent } from './equipo/equipo.component';
import { CommonModule } from '@angular/common';

@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    JugadoresComponent,
    MercadoComponent,
    NosotrosComponent,
    FooterComponent,
    LoginComponent,
    AdminInicioComponent,
    EquipoComponent,
    PopUpComponent
  ],
  imports: [
    NavbarComponent,
    AppRoutingModule,
    RouterModule,
    RouterModule.forRoot(routes),
    BrowserModule,
    FormsModule,
    HttpClientModule,
    BrowserAnimationsModule,
    MatDialogModule, 
    CommonModule,
    FooterComponent
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }