import { Component, OnInit } from '@angular/core';
import { SharedService } from '../../service/shared.service';


@Component({
  selector: 'app-mercado',
  standalone: true,
  imports: [],
  templateUrl: './mercado.component.html',
  styleUrl: './mercado.component.scss'
})

export class MercadoComponent implements OnInit {
  constructor(private sharedService: SharedService) {}

  ngOnInit() {
    this.sharedService.mostrarDiv = false;
  }
}
