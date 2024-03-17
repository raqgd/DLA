import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-jugadores',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './jugadores.component.html',
  styleUrl: './jugadores.component.scss'
})
export class JugadoresComponent {
  cambiarEstadoJugador(id: number) {
    const boton = this.jugadors.find(b => b.id === id);
    if (boton) {
      boton.estado = !boton.estado;
    }
  }

  jugadors =[
     {id:1, class:'uno', icono:'Alaves', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false},
     {id:2, class:'dos', icono:'Alaves', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false},
     {id:3, class:'tre', icono:'Alaves', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false},
     {id:4, class:'cua', icono:'Alaves', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false},
     {id:5, class:'cin', icono:'Alaves', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false},
     {id:6, class:'sei', icono:'Alaves', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false},
     {id:5, class:'sie', icono:'Alaves', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false},
     {id:5, class:'och', icono:'Alaves', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false},
     {id:5, class:'nue', icono:'Alaves', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false},
     {id:5, class:'die', icono:'Alaves', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false},
     {id:5, class:'onc', icono:'Alaves', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false}
  ];
  valores: number[] = [3, 5, 8, 2, 10, 13];
}
