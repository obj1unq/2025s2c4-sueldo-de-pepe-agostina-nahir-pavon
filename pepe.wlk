object pepe {
  var property rol = gerente
  var property bonoPorResultado = porcentaje
  var property bonoPorPresentismo = normal
  var property faltas = 0

   method sueldo() = self.neto() + bonoPorResultado.valor(self) + bonoPorPresentismo.valor(self)

   method neto() = rol.neto()
}
//self.neto() en el objeto pepe, el intérprete busca dentro del objeto pepe un método llamado neto

object normal {
  method valor(empleado) {
    if (empleado.faltas() == 0){
      2000
    }
    else if (empleado.faltas() == 1){ 
      1000
    } else {
      0
    }
  
}

object ajuste {
  method valor(empleado) = 
  
}

object porcentaje {
  method valor(empleado) = empleado.neto() * 10 / 100
}

object montoFijo {
  method valor(empleado) = 800
}

object nulo {
  method valor(empleado) = 0
}

object gerente {
    method neto() = 15000
}

object cadete {
  method neto() = 20000
}

//referencia apunta a un objeto 
//todo es un objeto
