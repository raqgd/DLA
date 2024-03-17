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

  cambiarEstadoJugador(id: number) {
    const boton = this.jugadors.find(b => b.id === id);
    if (boton) {
      boton.estado = !boton.estado;
    }
  }

  jugadors =[
     {id:1, icono:'Alaves', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false},
     {id:2, icono:'Alaves', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false},
     {id:3, icono:'Alaves', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false},
     {id:4, icono:'Alaves', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false},
     {id:5, icono:'Alaves', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false},
     {id:6, icono:'Alaves', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false}
  ];
  valores: number[] = [3, 5, 8, 2, 10, 13];
}