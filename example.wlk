class ChevroletCorsa {
  const property capacidad = 4 
  const property velocidadMaxima = 150
  const property peso = 1300
  const property color 
}
class RenaultKwid {
  const property color = "azul"
  var tieneTanqueAdicional = true 
  method agregarTanqueAdicional() {
    tieneTanqueAdicional = true
  }
  method sacarTanqueAdicional() {
    tieneTanqueAdicional = false
  }
  // Revisar métodos de consulta, porque se podría mejorar (según el profe)
  method peso() {
    return if(tieneTanqueAdicional) 1350 else 1200
  }
  method capacidad() {
    return if(tieneTanqueAdicional) 3 else 4
  }
  method velocidadMaxima() {
    return if(tieneTanqueAdicional) 120 else 110
  }
}
class AutoEspecial {
  const property capacidad
  const property velocidadMaxima
  const property peso
  const property color
}
// Primer Opción : 1 objeto muchas variables 
/*
object trafic {
  var interiorComodo = false
  var interiorPopular = true
  var capacidad = 12
  var motorPulenta = true
  var motorBataton = false
  var pesoInterior = 1000
  var pesoMotor = 800
  var velocidadMaxima = 130

  method color() = "blanco"

  method interiorInstalado() {
    return if(interiorComodo) "interiorComodo" else "interiorPopular" 
  }
  method capacidad() {
    return capacidad
  }
  method velocidadMaxima() {
    return velocidadMaxima
  }
  method peso() {
    return 4000 + pesoInterior + pesoMotor
  }

  method cambiarDeInterior() {
    if(!interiorComodo) {
      interiorPopular=false
      interiorComodo=true
      capacidad = 5
      pesoInterior = 700
    } else {
      interiorComodo=false
      interiorPopular=true
      capacidad = 12
      pesoInterior = 1000
    }
  }
 method motorInstalado() {
    return if(motorPulenta) "motorPulenta" else "motorBataton" 
  }
  method cambiarDeMotor() {
    if(!motorPulenta) {
      motorBataton=false
      motorPulenta=true
      pesoMotor = 800
      velocidadMaxima = 130
    } else {
      motorBataton=true
      motorPulenta=false
      pesoMotor = 500
      velocidadMaxima = 80
    }
  }
*/
// Segunda opción: 3 objetos y menos variables 

object interiorComodo {
  method capacidad () {
    return 5
  }
  method peso() {
    return 700
  }
}

object interiorPopular {
  method capacidad() {
    return 12
  }
  method peso() {
    return 1000
  }
}

object motorPulenta {
  method peso() {
    return 800
  }
method velocidadMaxima() {
  return 130
 }
}

object motorBataton {
  method peso() {
    return 500
  }
  method velocidadMaxima() {
    return 80
  }
}

object municipalidad {
   const flotaDisponible = []
   method agregarRodado(rodado) {
    flotaDisponible.add(rodado)
   }
   method quitarRodado(rodado) {
     flotaDisponible.remove(rodado)
   }
  }