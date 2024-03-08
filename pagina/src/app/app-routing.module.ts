import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './home/home.component'; // Asegúrate de importar tu componente home aquí

export const routes: Routes = [
  { path: '', component: HomeComponent }, // Esta es la ruta que carga HomeComponent por defecto
  // Otras rutas si las tienes
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }