import { Injectable } from '@angular/core';
import { Observable } from "rxjs";
import { Equipos } from "../models/equipos";
import { environment } from "../../environments/environment";
import { HttpClient } from "@angular/common/http";

@Injectable({
  providedIn: 'root'
})

export class EquiposService {
    constructor(private http: HttpClient) {  }

        getEquipo(id:number): Observable<Equipos> {
        return this.http.get<Equipos>('127.0.0.1:8000/api/equipos/get/1');
    
}
}