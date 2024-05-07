import { Component, HostListener } from '@angular/core';
import { RouterModule } from '@angular/router';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-navbar',
  standalone: true,
  imports: [
    RouterModule,
    CommonModule
  ],
  templateUrl: './navbar.component.html',
  styleUrl: './navbar.component.scss',
})
export class NavbarComponent {

  scrolled: boolean = false;

  @HostListener('window:scroll', [])
  onWindowScroll() {
    // Lógica para determinar si se ha hecho scroll
    if (window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop > 100) {
      this.scrolled = true;
    } else if (this.scrolled && window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop < 10) {
      this.scrolled = false;
    }
}
}