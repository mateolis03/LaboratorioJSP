/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.unipiloto;

import java.text.ParseException;
import java.time.LocalDate;
import java.time.Period;

/**
 *
 * @author mateo
 */
public class eventHandler {
    
    private String name;
    private String date;
    
    public eventHandler() {
        this.name = null;
        this.date = null;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public String getDate() throws ParseException {
        LocalDate born = LocalDate.parse(date);
        LocalDate current = LocalDate.now();
        return String.valueOf(Period.between(born, current).getYears());
    }
    
    public void setDate(String date) {
        this.date = date;
    }
    
}
