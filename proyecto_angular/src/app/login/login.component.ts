import { Component, OnInit  } from '@angular/core';

@Component({
  selector: 'app-login',
  standalone: true,
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent { //agregar implements oninit si se descomenta el codigo

  // emailInput!: HTMLInputElement;
  // passwordInput!: HTMLInputElement;
  // loginButton!: HTMLButtonElement;

  constructor() { }

  // ngOnInit(): void {
  //   // Inicializar elementos del DOM cuando el componente esté listo
  //   this.emailInput = document.querySelector('input[type="email"]') as HTMLInputElement;
  //   this.passwordInput = document.querySelector('input[type="password"]') as HTMLInputElement;
  //   this.loginButton = document.getElementById('login') as HTMLButtonElement;

  //   // Escuchar eventos de cambio en los campos de entrada
  //   if (this.emailInput && this.passwordInput && this.loginButton) {
  //     // Escuchar eventos de cambio en los campos de entrada
  //     this.emailInput.addEventListener('email', () => this.validateInputs());
  //     this.passwordInput.addEventListener('password', () => this.validateInputs());
  //   } else {
  //     console.error('No se encontraron todos los elementos necesarios.');
  //   }
  // }

  // // Método para validar campos de entrada
  // validateInputs(): void {
  //   const email = this.emailInput.value.trim();
  //   const password = this.passwordInput.value.trim();

  //   // Verificar si el correo electrónico y la contraseña son válidos
  //   const validEmail = /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
  //   const validPassword = password.length >= 8; // Por ejemplo, mínimo 8 caracteres

  //   // Actualizar estado del botón de inicio de sesión
  //   this.loginButton.disabled = !(validEmail && validPassword);

  //   console.log('Valid Email:', validEmail);
  //   console.log('Valid Password:', validPassword);
  // }

  // // Método para manejar el inicio de sesión
  // login(): void {
  //   // Aquí puedes manejar la lógica de inicio de sesión, por ejemplo, enviar los datos al servidor
  //   console.log('Inicio de sesión realizado');
  // }

  // // Método para navegar al formulario de registro
  // goToRegister(): void {
  //   // Aquí puedes implementar la navegación al formulario de registro
  //   console.log('Navegar al formulario de registro');
  // }
}