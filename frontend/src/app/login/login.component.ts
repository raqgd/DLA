import { Component, Input, Output, EventEmitter, OnInit } from '@angular/core';
import {ChangeDetectionStrategy} from '@angular/core';
import {MatDatepickerModule} from '@angular/material/datepicker';
import {MatInputModule} from '@angular/material/input';
import {MatFormFieldModule} from '@angular/material/form-field';
import {provideNativeDateAdapter} from '@angular/material/core';


@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss'],
  standalone: true,
  providers: [provideNativeDateAdapter()],
  imports: [MatFormFieldModule, MatInputModule, MatDatepickerModule],
  changeDetection: ChangeDetectionStrategy.OnPush,
})
export class LoginComponent implements OnInit {


  constructor() {}

  ngOnInit(): void {
    // No need to use document.getElementById in Angular, use ViewChild or ElementRef for DOM manipulation
  }


  onSelect(event: any): void {
    console.log('Selected value:', event.target.value);
    // Aquí puedes manejar la lógica de acuerdo al valor seleccionado
  }

  toggleSignIn(): void {
    const container = document.getElementById('container');
    if (container) {
      container.classList.remove("active");
    }
  }

  toggleSignUp(): void {
    const container = document.getElementById('container');
    if (container) {
      container.classList.add("active");
    }
  }

  getSelectedValue(option: any): void {
    console.log(`Option ${option.label} is ${option.checked ? 'checked' : 'unchecked'}`);
  }
}
