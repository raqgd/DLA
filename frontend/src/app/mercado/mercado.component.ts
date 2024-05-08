import { CommonModule } from '@angular/common';
import { Component, NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { Jugador } from '../models/jugador';
import { JugadoresService } from '../services/jugadores.service';

@Component({
  selector: 'app-mercado',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './mercado.component.html',
  styleUrl: './mercado.component.scss'
})
export class MercadoComponent {

  jugadorComprado: boolean = false;

  /* Eliminada funcionalidad temporalmente
  cambiarEstadoJugador(id: number) {
    const boton = this.jugadores.find(b => b.id === id);
    if (boton) {
      this.jugadorComprado = !this.jugadorComprado;
      boton.estado = !boton.estado;
    }

    ##<button class="boton" [ngStyle]="{'background-color': jugadorComprado ? '#00913F' : '#77DD77'}" (click)="cambiarEstadoJugador(jugador.id)">
                                ##    {{ jugador.estado ? 'Comprado' : 'Comprar' }}
                                ##</button>
  }*/

  //Arrays
  jugadores: Jugador[] = [];

  // Llamamos a los servicios
  constructor(private jugadoresService: JugadoresService) {}
  ngOnInit(): void{
    // Funciones de los servicios
    this.jugadoresService.GetAll().subscribe(jugadoresLeidos => {
      // Guardamos los datos
      this.jugadores = jugadoresLeidos;
      console.log(this.jugadores)
    });
  }
  valores: number[] = [3, 5, 8, 2, 10, 13];
}