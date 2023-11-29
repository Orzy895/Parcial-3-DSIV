package com.main.parcial.Service;

import com.main.parcial.Models.Personaje;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class PersonajeDB {
    Connection cnn;

    public PersonajeDB(){
        cnn = new Conexion().openDb();
    }

    public List<Personaje> obtenerPersonajes(){
        try{
            Statement stmt = cnn.createStatement();
            String query = "call obtenerPersonajes();";
            List<Personaje> personajes = new ArrayList<>();
            ResultSet result = stmt.executeQuery(query);
            while(result.next()){
                Personaje personaje = new Personaje();
                personaje.setId(result.getInt("personaje_id"));
                personaje.setNombre(result.getString("nombre"));
                personaje.setDescripcion(result.getString("descripcion"));
                personaje.setArma_id(result.getInt("arma_id"));
                personaje.setRegion_id(result.getInt("region_id"));
                personaje.setImagen(result.getString("imagen"));
                personajes.add(personaje);
            }
            result.close();
            stmt.close();
            return personajes;
        }
        catch(Exception e){
            int x = 1;
        }
        return null;
    }
}
