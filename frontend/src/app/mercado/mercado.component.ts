import { CommonModule } from '@angular/common';
import { Component, NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { Jugador } from '../models/jugador';
import { JugadoresService } from '../services/jugadores.service';

@Component({
  selector: 'app-mercado',
  templateUrl: './mercado.component.html',
  styleUrl: './mercado.component.scss'
})
export class MercadoComponent {

  puntuacion: number = 33;

  getColor(): string {
    if (this.puntuacion < 50) {
      return '#f00'; 
    } else if (this.puntuacion >= 50 && this.puntuacion < 70) {
      return '#ff0'; 
    } else if (this.puntuacion >= 70 && this.puntuacion < 90) {
      return '#0f0'; 
    } else {
      return '#00f'; 
    }
  }

  closeModel() {
    throw new Error('Method not implemented.');
    }
    openModel() {
      const modelDiv = document.getElementById('passModal');
      if(modelDiv!=null){
        modelDiv.style.display='block';
      }
     
    }
}