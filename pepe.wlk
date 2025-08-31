object pepe {
  var rol = gerente
  var bonoPorResultado = nulo

   method sueldo() = rol.neto() + bonoPorResultado()

   method rol(rolNuevo) {
     rol = rolNuevo
   }

   method cambiarResultado(resultadoNuevo){
    bonoPorResultado = resultadoNuevo
   }
   
}
//self.neto() en el objeto pepe, el intérprete busca dentro del objeto pepe un método llamado neto

object porcentaje {
  method porcentaje() = neto * 10 / 100
}

object montoFijo {
  method montoFijo() = 800
}

object nulo {
  method nulo() = 0
}

object gerente {
    method neto() = 15000
}

object cadete {
  method neto() = 20000
}

//referencia apunta a un objeto 
//todo es un objeto
