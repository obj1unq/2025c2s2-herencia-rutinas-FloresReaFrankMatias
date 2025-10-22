import gimnasia.*


class Persona {
  
    var property peso
    method pesoPerdidoPor(rutina){
        return rutina.caloriasQuemadas(self.tiempoQuePractica()) / self.kilosPorCaloriasQuePierde()
        //self.tiempoQuePractica()/ 
    }
    method tiempoQuePractica()
    method kilosPorCaloriasQuePierde()

    method aplicarRutina(rutina){
        self.validarRutina(rutina)
        peso -= self.pesoPerdidoPor(rutina)
    }
    method validarRutina(rutina) {
      
    }
   

}

class PersonaSedentaria inherits Persona {
    var property tiempo  
    override method kilosPorCaloriasQuePierde() {
      return 7000
    }
    override method tiempoQuePractica(){
        return tiempo
    }
    override method validarRutina(rutina){
        if(self.peso() < 50){
            self.error("No puede realizar la rutina" + rutina)
        }
    }
        
}


class PersonaAtleta inherits Persona {
     

    override method  pesoPerdidoPor(rutina){
        return  super(rutina) - 1
            //rutina.caloriasQuemadas(self.tiempoQuePractica() ) /         self.kilosPorCaloriasQuePierde()) -1

    }
    override method aplicarRutina(rutina){
        self.validarRutina(rutina)
        //peso -= self.pesoPerdidoPor(rutina)
        super(rutina) 
    }
    override method tiempoQuePractica(){
        return 90
    }
    override method kilosPorCaloriasQuePierde() {
      return 8000
    }
     override method validarRutina(rutina){
        if( rutina.caloriasQuemadas( self.tiempoQuePractica()) < 10000    ){
            self.error("No puede realizar la rutina" + rutina)
        }
    }
}
