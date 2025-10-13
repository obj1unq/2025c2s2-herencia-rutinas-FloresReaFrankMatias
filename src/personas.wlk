import rutinas.*
class Persona {
    var property peso
    
    method pesoPerdidoPor(rutina)      {  return rutina.caloriasQuemadas(self.tiempoQuePractica()) / self.kilosPorCaloriasQuePierde() }
    method aplicarRutina(rutina)       {  self.validarRutina(rutina)    peso -= self.pesoPerdidoPor(rutina)  }
    method caloriasQueGastaCon(rutina) {  return rutina.caloriasQuemadas( self.tiempoQuePractica() )         }
    
    method tiempoQuePractica()
    method kilosPorCaloriasQuePierde()
    method validarRutina(rutina){
        if(not self.puedePracticar(rutina)){
            self.error("No puede realizar la rutina" + rutina)
        }    
    } 
    method puedePracticar(rutina) 

}

class PersonaSedentaria inherits Persona {
    var property tiempo  
    override method kilosPorCaloriasQuePierde() {     return 7000     }
    override method tiempoQuePractica()         {     return tiempo   }
    
    override method puedePracticar(rutina){
        return self.peso() > 50
    }
}
class PersonaAtleta inherits Persona {
    override method  pesoPerdidoPor(rutina)     {    return  super(rutina) - 1   }
    override method tiempoQuePractica()         {    return 90                   }
    override method kilosPorCaloriasQuePierde() {    return 8000                 }
    
    override method aplicarRutina(rutina){
        self.validarRutina(rutina)
        super(rutina) 
    }

    override method puedePracticar(rutina){
        return self.caloriasQueGastaCon(rutina) > 10000
}
}
