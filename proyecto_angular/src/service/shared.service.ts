import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root',
})
export class SharedService {
  private _mostrarDiv: boolean = true;

  constructor() {}

  get mostrarDiv(): boolean {
    return this._mostrarDiv;
  }

  set mostrarDiv(value: boolean) {
    this._mostrarDiv = value;
  }
}
