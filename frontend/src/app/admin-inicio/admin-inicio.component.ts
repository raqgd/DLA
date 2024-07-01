import { Component, AfterViewInit, OnInit } from '@angular/core';

interface Usuario {
  nombre: string;
  correo: string;
}

@Component({
  selector: 'app-admin-inicio',
  templateUrl: './admin-inicio.component.html',
  styleUrls: ['./admin-inicio.component.scss']
})
export class AdminInicioComponent implements OnInit, AfterViewInit {
  usuarios: Usuario[] = [
    { nombre: "Usuario 1", correo: "usuario1@example.com" },
    { nombre: "Usuario 2", correo: "usuario2@example.com" },
    { nombre: "Usuario 3", correo: "usuario3@example.com" }
  ];

  constructor() { }

  ngOnInit(): void {
    // Initialization logic here
  }

  ngAfterViewInit(): void {
    // View initialization logic here
  }  
}
