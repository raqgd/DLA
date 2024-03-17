import { Injectable } from '@angular/core';
import { BehaviorSubject } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class LoaderService {
  // Utilizamos un BehaviorSubject para mantener el estado del loader
  private loadingSubject: BehaviorSubject<boolean> = new BehaviorSubject<boolean>(false);
  
  // Propiedad observable que se puede suscribir para obtener el estado actual del loader
  public isLoading$ = this.loadingSubject.asObservable();

  constructor() { }

  // Método para mostrar el loader
  public show(): void {
    this.loadingSubject.next(true);
  }

  // Método para ocultar el loader
  public hide(): void {
    this.loadingSubject.next(false);
  }
}