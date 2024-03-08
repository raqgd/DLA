import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { JugadoresComponent } from './jugadores/jugadores.component';
import { MercadoComponent } from './mercado/mercado.component';
import { NosotrosComponent } from './nosotros/nosotros.component';
import { NgModule } from '@angular/core';


/*@NgModule({
    imports: [RouterModule.forRoot(routes)],
    exports: [RouterModule]
})*/
export const routes: Routes = [
    {path: '', component:HomeComponent},
    {path: 'a', component:JugadoresComponent},
    {path: 'b', component:MercadoComponent},
    {path: 'c', component:NosotrosComponent}
];
