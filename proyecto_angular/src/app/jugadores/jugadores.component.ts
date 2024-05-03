import { Component, Renderer2, ElementRef, inject  } from '@angular/core';
import { CommonModule } from '@angular/common';
import { MatDialogModule } from '@angular/material/dialog';
import { MatDialog } from '@angular/material/dialog';
import { PopUpComponent } from '../pop-up/pop-up.component';

@Component({
  selector: 'app-jugadores',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './jugadores.component.html',
  styleUrl: './jugadores.component.scss'
})
export class JugadoresComponent {
  jugadors = [
    {id:1, class:'uno', icono:'Alaves', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false},
    {id:2, class:'dos', icono:'Barcelona', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false},
    {id:3, class:'tre', icono:'Almeria', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false},
    {id:4, class:'cua', icono:'Atleti', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false},
    {id:5, class:'cin', icono:'Cadiz', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false},
    {id:6, class:'sei', icono:'Alaves', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false},
    {id:7, class:'sie', icono:'Betis', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false},
    {id:8, class:'och', icono:'Celta de Vigo', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false},
    {id:9, class:'nue', icono:'Barcelona', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false},
    {id:10, class:'die', icono:'Girona', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false},
    {id:11, class:'onc', icono:'Madrid', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false}
  ];

  constructor(private dialogRef: MatDialog) {}

  openDialog(jugador:any) {
    this.dialogRef.open(PopUpComponent, {
      data: jugador
    });
  }
}