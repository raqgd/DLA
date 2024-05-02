import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { JugadoresComponent } from './jugadores/jugadores.component';
import { MercadoComponent } from './mercado/mercado.component';
import { TecComponent } from './tec/tec.component';
import { PrivacidadComponent } from './privacidad/privacidad.component';
import { FaqComponent } from './faq/faq.component';
import { ContactoComponent } from './contacto/contacto.component';
import { NosotrosComponent } from './nosotros/nosotros.component';
import { LoginComponent } from './login/login.component';
import { AdminInicioComponent } from './admin-inicio/admin-inicio.component';
import { EquipoComponent } from './equipo/equipo.component';

export const routes: Routes = [
    { path: 'Inicio', component: HomeComponent},
    { path: 'Jugadores', component: JugadoresComponent },
    { path: 'Mercado', component: MercadoComponent },
    { path: 'Acerca', component: NosotrosComponent },
    { path: 'Contacto', component: ContactoComponent },
    { path: 'FAQ', component: FaqComponent },
    { path: 'Privacidad', component: PrivacidadComponent },
    { path: 'Tec', component: TecComponent },
    { path: 'Login', component: LoginComponent },
    { path: 'Administrador', component: AdminInicioComponent},
    { path: 'equipo/:nombreEquipo', component: EquipoComponent }
];

@NgModule({
    imports: [RouterModule.forRoot(routes)],
    exports: [RouterModule]
  })

  export class AppRoutingModule { }