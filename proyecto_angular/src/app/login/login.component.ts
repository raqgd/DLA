// login.component.ts

import { Component } from '@angular/core';

@Component({
  selector: 'app-login',
  standalone: true,
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent {
  email: string = ''; // Inicializa la propiedad email
  password: string = ''; // Inicializa la propiedad password

  onSubmit() {
    // Aquí puedes manejar la lógica de inicio de sesión, por ejemplo, enviar los datos al servidor
    console.log('Email:', this.email);
    console.log('Password:', this.password);
  }
}