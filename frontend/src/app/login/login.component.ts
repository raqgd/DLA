import { Component, OnInit } from '@angular/core';

@Component({
  standalone: true,
selector: 'app-login',
templateUrl: './login.component.html',
styleUrls: ['./login.component.scss']
})
export class LoginComponent implements OnInit {

constructor() { }

ngOnInit(): void {
// No need to use document.getElementById in Angular, use ViewChild or ElementRef for DOM manipulation
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
}