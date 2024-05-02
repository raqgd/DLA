import { Component, Renderer2, ElementRef  } from '@angular/core';
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
     {id:2, class:'dos', icono:'Barcelona', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false},
     {id:3, class:'tre', icono:'Almeria', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false},
     {id:4, class:'cua', icono:'Atleti', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false},
     {id:5, class:'cin', icono:'Cadiz', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false},
     {id:6, class:'sei', icono:'Alaves', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false},
     {id:5, class:'sie', icono:'Betis', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false},
     {id:5, class:'och', icono:'Celta de Vigo', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false},
     {id:5, class:'nue', icono:'Barcelona', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false},
     {id:5, class:'die', icono:'Girona', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false},
     {id:5, class:'onc', icono:'Madrid', equipo:'Almeria', nombre:"Nombre Apellido Apellido", valorActual:'400000', valorFuturo:'500000', puntos:'8', estado: false}
  ];

  constructor(private renderer: Renderer2, private el: ElementRef) {}
  // aplicarReglas1() {
  //   const elementosUno = this.el.nativeElement.querySelectorAll('.uno'); elementosUno.forEach((elemento: HTMLElement) => {this.renderer.setStyle(elemento, 'top', '12.5%');this.renderer.setStyle(elemento, 'left', '40%');});
  //   const elementosDos = this.el.nativeElement.querySelectorAll('.dos'); elementosDos.forEach((elemento: HTMLElement) => {this.renderer.setStyle(elemento, 'top', '12.5%');this.renderer.setStyle(elemento, 'left', '60%');});
  //   const elementosTre = this.el.nativeElement.querySelectorAll('.tre'); elementosTre.forEach((elemento: HTMLElement) => {this.renderer.setStyle(elemento, 'top', '32.5%');this.renderer.setStyle(elemento, 'left', '20%');});
  //   const elementosCua = this.el.nativeElement.querySelectorAll('.cua'); elementosCua.forEach((elemento: HTMLElement) => {this.renderer.setStyle(elemento, 'top', '32.5%');this.renderer.setStyle(elemento, 'left', '40%');});
  //   const elementosCin = this.el.nativeElement.querySelectorAll('.cin'); elementosCin.forEach((elemento: HTMLElement) => {this.renderer.setStyle(elemento, 'top', '32.5%');this.renderer.setStyle(elemento, 'left', '60%');});
  //   const elementosSei = this.el.nativeElement.querySelectorAll('.sei'); elementosSei.forEach((elemento: HTMLElement) => {this.renderer.setStyle(elemento, 'top', '32.5%');this.renderer.setStyle(elemento, 'left', '80%');});
  //   const elementosSie = this.el.nativeElement.querySelectorAll('.sie'); elementosSie.forEach((elemento: HTMLElement) => {this.renderer.setStyle(elemento, 'top', '52.5%');this.renderer.setStyle(elemento, 'left', '20%');});
  //   const elementosOch = this.el.nativeElement.querySelectorAll('.och'); elementosOch.forEach((elemento: HTMLElement) => {this.renderer.setStyle(elemento, 'top', '52.5%');this.renderer.setStyle(elemento, 'left', '40%');});
  //   const elementosNue = this.el.nativeElement.querySelectorAll('.nue'); elementosNue.forEach((elemento: HTMLElement) => {this.renderer.setStyle(elemento, 'top', '52.5%');this.renderer.setStyle(elemento, 'left', '60%');});
  //   const elementosDie = this.el.nativeElement.querySelectorAll('.die'); elementosDie.forEach((elemento: HTMLElement) => {this.renderer.setStyle(elemento, 'top', '52.5%');this.renderer.setStyle(elemento, 'left', '80%');});
  // }
  // aplicarReglas2() {
  //   const elementosUno = this.el.nativeElement.querySelectorAll('.uno'); elementosUno.forEach((elemento: HTMLElement) => {this.renderer.setStyle(elemento, 'top', '12.5%');this.renderer.setStyle(elemento, 'left', '30%');});
  //   const elementosDos = this.el.nativeElement.querySelectorAll('.dos'); elementosDos.forEach((elemento: HTMLElement) => {this.renderer.setStyle(elemento, 'top', '12.5%');this.renderer.setStyle(elemento, 'left', '50%');});
  //   const elementosTre = this.el.nativeElement.querySelectorAll('.tre'); elementosTre.forEach((elemento: HTMLElement) => {this.renderer.setStyle(elemento, 'top', '12.5%');this.renderer.setStyle(elemento, 'left', '70%');});
  //   const elementosCua = this.el.nativeElement.querySelectorAll('.cua'); elementosCua.forEach((elemento: HTMLElement) => {this.renderer.setStyle(elemento, 'top', '32.5%');this.renderer.setStyle(elemento, 'left', '30%');});
  //   const elementosCin = this.el.nativeElement.querySelectorAll('.cin'); elementosCin.forEach((elemento: HTMLElement) => {this.renderer.setStyle(elemento, 'top', '32.5%');this.renderer.setStyle(elemento, 'left', '50%');});
  //   const elementosSei = this.el.nativeElement.querySelectorAll('.sei'); elementosSei.forEach((elemento: HTMLElement) => {this.renderer.setStyle(elemento, 'top', '32.5%');this.renderer.setStyle(elemento, 'left', '70%');});
  //   const elementosSie = this.el.nativeElement.querySelectorAll('.sie'); elementosSie.forEach((elemento: HTMLElement) => {this.renderer.setStyle(elemento, 'top', '52.5%');this.renderer.setStyle(elemento, 'left', '20%');});
  //   const elementosOch = this.el.nativeElement.querySelectorAll('.och'); elementosOch.forEach((elemento: HTMLElement) => {this.renderer.setStyle(elemento, 'top', '52.5%');this.renderer.setStyle(elemento, 'left', '40%');});
  //   const elementosNue = this.el.nativeElement.querySelectorAll('.nue'); elementosNue.forEach((elemento: HTMLElement) => {this.renderer.setStyle(elemento, 'top', '52.5%');this.renderer.setStyle(elemento, 'left', '60%');});
  //   const elementosDie = this.el.nativeElement.querySelectorAll('.die'); elementosDie.forEach((elemento: HTMLElement) => {this.renderer.setStyle(elemento, 'top', '52.5%');this.renderer.setStyle(elemento, 'left', '80%');});
  // }
  // aplicarReglas3() {
  //   const elementosUno = this.el.nativeElement.querySelectorAll('.uno'); elementosUno.forEach((elemento: HTMLElement) => {this.renderer.setStyle(elemento, 'top', '12.5%');this.renderer.setStyle(elemento, 'left', '30%');});
  //   const elementosDos = this.el.nativeElement.querySelectorAll('.dos'); elementosDos.forEach((elemento: HTMLElement) => {this.renderer.setStyle(elemento, 'top', '12.5%');this.renderer.setStyle(elemento, 'left', '50%');});
  //   const elementosTre = this.el.nativeElement.querySelectorAll('.tre'); elementosTre.forEach((elemento: HTMLElement) => {this.renderer.setStyle(elemento, 'top', '12.5%');this.renderer.setStyle(elemento, 'left', '70%');});
  //   const elementosCua = this.el.nativeElement.querySelectorAll('.cua'); elementosCua.forEach((elemento: HTMLElement) => {this.renderer.setStyle(elemento, 'top', '52.5%');this.renderer.setStyle(elemento, 'left', '30%');});
  //   const elementosCin = this.el.nativeElement.querySelectorAll('.cin'); elementosCin.forEach((elemento: HTMLElement) => {this.renderer.setStyle(elemento, 'top', '52.5%');this.renderer.setStyle(elemento, 'left', '50%');});
  //   const elementosSei = this.el.nativeElement.querySelectorAll('.sei'); elementosSei.forEach((elemento: HTMLElement) => {this.renderer.setStyle(elemento, 'top', '52.5%');this.renderer.setStyle(elemento, 'left', '70%');});
  //   const elementosSie = this.el.nativeElement.querySelectorAll('.sie'); elementosSie.forEach((elemento: HTMLElement) => {this.renderer.setStyle(elemento, 'top', '32.5%');this.renderer.setStyle(elemento, 'left', '20%');});
  //   const elementosOch = this.el.nativeElement.querySelectorAll('.och'); elementosOch.forEach((elemento: HTMLElement) => {this.renderer.setStyle(elemento, 'top', '32.5%');this.renderer.setStyle(elemento, 'left', '40%');});
  //   const elementosNue = this.el.nativeElement.querySelectorAll('.nue'); elementosNue.forEach((elemento: HTMLElement) => {this.renderer.setStyle(elemento, 'top', '32.5%');this.renderer.setStyle(elemento, 'left', '60%');});
  //   const elementosDie = this.el.nativeElement.querySelectorAll('.die'); elementosDie.forEach((elemento: HTMLElement) => {this.renderer.setStyle(elemento, 'top', '32.5%');this.renderer.setStyle(elemento, 'left', '80%');});
  // }
}
