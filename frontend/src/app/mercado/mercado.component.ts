import { CommonModule } from '@angular/common';
import { Component, NgModule, ElementRef, ViewChild } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { Jugador } from '../models/jugador';
import { JugadoresService } from '../services/jugadores.service';
import $ from 'jquery';

@Component({
  selector: 'app-mercado',
  standalone: true, // This property is not valid in Angular components
  imports: [CommonModule],
  templateUrl: './mercado.component.html',
  styleUrl: './mercado.component.scss'
})
export class MercadoComponent {

  name = 'Angular';
  jsonData = [
    { label: 'Option 1', value: 'option1' },
    { label: 'Option 2', value: 'option2' },
    { label: 'Option 3', value: 'option3' },
    { label: 'Option 4', value: 'option4' },
    { label: 'Option 5', value: 'option5' },
  ];

  selectedValue: string = '';

  onSelect(event: any) {
    this.selectedValue = event.target.value;
  }

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
    // You might want to implement this method properly
    // For now, let's remove the error
  }

  openModel() {
    const modelDiv = document.getElementById('passModal');
    if (modelDiv != null) {
      modelDiv.style.display = 'block';
    }
  }
}
