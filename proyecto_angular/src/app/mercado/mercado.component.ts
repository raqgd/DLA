import { CommonModule } from '@angular/common';
import { Component, NgModule } from '@angular/core';

@Component({
  selector: 'app-mercado',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './mercado.component.html',
  styleUrl: './mercado.component.scss'
})
export class MercadoComponent {
  jugadors =[
     {icono:'Alaves', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8'},
     {icono:'Alaves', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8'},
     {icono:'Alaves', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8'},
     {icono:'Alaves', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8'},
     {icono:'Alaves', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8'},
     {icono:'Alaves', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8'}
  ]
}
