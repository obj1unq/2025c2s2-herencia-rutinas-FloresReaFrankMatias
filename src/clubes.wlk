


class Club {
    const property predios = []

    method mejorPredioPara(persona)              {    return predios.max( {predio => predio.totalCaloriasQuemadas(persona)} )                  }
    method prediosTraquisDelClubPara(persona)    {    return predios.filter( { predio=>  predio.tieneRutinaTranquiPara(persona) } )            }
    method rutinaMasExigenteDelClubPara(persona) {    return predios.map( { predio => predio.rutinaMasExigenteDelPredio(persona)  } ).asSet()  }

}

class Predio {
    const property rutinas = []
    method totalCaloriasQuemadas(persona)      {  return rutinas.sum( { rutina => persona.caloriasQueGastaCon(rutina) } )     }
    method tieneRutinaTranquiPara(persona)     {  return rutinas.any({rutina =>  persona.caloriasQueGastaCon(rutina)  < 500}) }
    method rutinaMasExigenteDelPredio(persona) {  return rutinas.max( { rutina =>  persona.caloriasQueGastaCon(rutina) } )    }

}