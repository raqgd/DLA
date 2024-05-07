import { Injectable } from "@angular/core";
import { Observable } from "rxjs";
import { Jugador } from "../models/jugador";
import { environment } from "../../environments/environment";
import { HttpClient } from "@angular/common/http";

@Injectable({
    providedIn: 'root'
})
export class JugadoresService {
    constructor(private http: HttpClient) {  }

        getJugador(id:number): Observable<Jugador> {
        //return this.http.get<Jugador>("http://localhost:4200/api/Jugador/")
        return this.http.get<Jugador>(environment.rutaApi + 'jugadores/' + id);
    
}
}