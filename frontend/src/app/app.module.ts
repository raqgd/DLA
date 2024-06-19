import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { RouterModule } from '@angular/router';
import { MatDialogModule } from '@angular/material/dialog';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';


import { AppComponent } from './app.component';
import { HomeComponent } from './home/home.component';
import { JugadoresComponent } from './jugadores/jugadores.component';
import { MercadoComponent } from './mercado/mercado.component';
import { NosotrosComponent } from './nosotros/nosotros.component';
import { AppRoutingModule } from './app.routes';  // Asegúrate de que esta importación sea correcta
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
    NavbarComponent,  // Asegúrate de que NavbarComponent esté declarado aquí
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpClientModule,
    RouterModule.forRoot([]),  // Asegúrate de que RouterModule.forRoot esté correctamente configurado
    AppRoutingModule,
    BrowserAnimationsModule,
    MatDialogModule,
    CommonModule  // Asegúrate de que CommonModule esté importado aquí si es necesario
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
