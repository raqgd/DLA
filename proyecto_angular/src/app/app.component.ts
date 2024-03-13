import { Component, OnInit } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { SharedService } from '../service/shared.service';
import { NavbarComponent } from './navbar/navbar.component';
import { FooterComponent } from './footer/footer.component';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet, NavbarComponent, FooterComponent],
  templateUrl: './app.component.html',
  styleUrl: './app.component.scss'
})

export class AppComponent {
  constructor(private sharedService: SharedService) {
    this.sharedService.mostrarDiv = true;
  }
}