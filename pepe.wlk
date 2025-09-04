object pepe {

  //a todos los atributos los quiero ver y modificar
  var property rol = gerente
  var property bonoPorResultado = nulo
  var property bonoPorPresentismo = nulo
  var property faltas = 0

   method sueldo() = self.neto() + bonoPorResultado.valor(self) + bonoPorPresentismo.valor(self)

   method neto() = rol.neto()
}
//self.neto() en el objeto pepe, el intérprete busca dentro del objeto pepe un método llamado neto

object normal {
  method valor(empleado) {
    if(empleado.faltas() == 0) return 2000
    if(empleado.faltas() == 1) return 1000
    return 0   // <-- caso por defecto
  }
}

object ajuste {
  method valor(empleado) {
    if (empleado.faltas() == 0) return 100
    return 0
  } 
}

object demagogico {
  method valor(empleado) {
    if (empleado.neto() < 18000) return 500
    else return 300 
  }  
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

//Sigo en duda con esta implementacion, de esta forma tendria que cambiar la categoria de  medio tiempo cada de vez que cambie de empleado
object medioTiempo {
  var rol = gerente

  method categoriaBase(_rol) {
    rol = _rol
  }

  method neto() = rol.neto() / 2
}

//referencia apunta a un objeto 
//todo es un objeto

object sofia {
  var property rol = gerente
  var property bonoPorResultado = nulo

  method sueldo() = self.neto() + bonoPorResultado.valor(self)

  method neto() = rol.neto() * 1.3
}

object vendedor {
  method neto() = 16000

  method valorAumentoPorMuchasVentas() = self.neto() * 1.25
  //valor es consulta 

  method desactivarAumentoPorMuchasVentas() {
    if(self.valorAumentoPorMuchasVentas() == self.neto() * 1.25){
        self.neto()
    }
  }
}

object roque {
  var property bonoPorResultado = nulo

  method sueldo() = self.neto() + bonoPorResultado.valor(self)  + 9000 

  method neto() = 28000
  
}

object ernesto {
  var property bonoPorPresentismo = nulo
  var property faltas = 0
  var property compañero = sofia

  method sueldo() = self.neto() + bonoPorPresentismo.valor(self)

  method neto() = compañero.neto()
}


