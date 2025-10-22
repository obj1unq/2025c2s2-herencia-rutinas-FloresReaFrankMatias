


class Club {

    const property predios = []

    method mejorPredioPara(persona){
        return predios.max( {predio => predio.totalCaloriasQuemadas(persona)} )            
    }
    method prediosTraquisDelClubPara(persona) {
        return predios.filter( { predio=>  predio.tieneRutinaTranqui(persona) } )
    }
    method rutinaMasExigenteDelClubPara(persona) {
        return predios.filter( { predio => predio.rutinaMasExigenteDelPredio(persona)  } ) 
    }

}



class Predio {
    const property rutinas = []
    method totalCaloriasQuemadas(persona) {
      return rutinas.sum( { rutina => rutina.caloriasBajadasPor(persona) } )

    }
    method caloriasQuemadasPorRutina(persona) {
      return rutinas.map({rutina => rutina.caloriasQuemadasPorRutina(persona)} )
    }

    method tieneRutinaTranqui(persona) {
      return rutinas.any( {rutina => rutina.caloriasBajadasPor(persona) < 500 } )
    }

    method rutinaMasExigenteDelPredio(persona) {
      return rutinas.max( { rutina =>  persona.caloriasBajadasPor(rutina)} )
    }
}