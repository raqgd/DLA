import { Component, AfterViewInit, OnInit } from '@angular/core';


@Component({
  selector: 'app-admin-inicio',
  standalone: true,
  imports: [],
  templateUrl: './admin-inicio.component.html',
  styleUrl: './admin-inicio.component.scss'
})
export class AdminInicioComponent implements OnInit, AfterViewInit {
  constructor(){

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
  ngOnInit(): void {
    // Implementación de ngOnInit
    // Este método se llama después de que Angular haya inicializado los datos del componente
  }

  ngAfterViewInit(): void {
    // Implementación de ngAfterViewInit
    // Este método se llama después de que Angular haya inicializado la vista del componente
  }  

}
