import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class AuthService {
  private isLoggedIn: boolean = false;

  constructor() { }

  login() {
    // Lógica de inicio de sesión
    this.isLoggedIn = true;
  }

  logout() {
    // Lógica de cierre de sesión
    this.isLoggedIn = false;
  }

  isLoggedInUser(): boolean {
    // Devuelve el estado de inicio de sesión del usuario
    return this.isLoggedIn;
  }
}