package com.main.parcial.Controllers;

import com.main.parcial.Models.Personaje;
import com.main.parcial.Service.PersonajeDB;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@CrossOrigin(origins = "*")
public class PersonajeController {
    @GetMapping("/personajes/all")
    public List<Personaje> getPersonaje(){
        return new PersonajeDB().obtenerPersonajes();
    }
}
