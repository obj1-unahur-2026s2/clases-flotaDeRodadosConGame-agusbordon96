class ChevroletCorsa {
  /*Se modican los atributos para q sean métodos ya que
  la información no cambiará durante el resto del ejercicio
  en cambio el color si, por lo q necesita el property para tener
  los métodos getter y setter de ese atributo*/
  const property color
  method capacidad() = 4 
  method velocidadMaxima() = 150
  method peso() = 1300
  }
class RenaultKwid {
  method color() = "azul"
  /*El tanque adicional se crea o no al inicio, entonces
  no es variable, porq no cambiará más*/
  const tieneTanqueAdicional   
  /*Se eliminan los métodos q modifican los booleanos
  porque ya se define al crear el objeto y después se 
  mantienen fijos */
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
  /*Este quedó perfecto dijo el profe wiwiwi */
  const property capacidad
  const property velocidadMaxima
  const property peso
  const property color
}

object trafic {
  var interior = interiorComodo
  var motor = motorPulenta
  var peso = 4000
  method color() = "blanco"

  method interiorInstalado() {
    return interior
  }
  method capacidad() {
    return interior.capacidad()
  }
  method velocidadMaxima() {
    return motor.velocidadMotor()
  }
  method peso() {
    return 4000 + interior.peso() + motor.peso()
  }

  method cambiarDeInterior(nuevoInterior) {
    interior = nuevoInterior
  }
 method motorInstalado() {
    return motor
  }
  method cambiarDeMotor(nuevoMotor) {
    motor = nuevoMotor
  }
}

object interiorComodo {
  method capacidad () {
    return 5
  }
  method peso() {
    return 700
  }
}

object interiorPopular{
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
method velocidadMotor() {
  return 130
 }
}

object motorBataton {
  method peso() {
    return 500
  }
  method velocidadMotor() {
    return 80
  }
}
class Dependencia {
  const flota = []
/*Cuando creo la dependencia, defino cuantos empleados tiene*/
  const empleados
  method agregarAFlota(rodado) {
    flota.add(rodado)
   }
   method quitarAFlota(rodado) {
    flota.remove(rodado)
   }
  method pesoTotalFlota() = flota.sum({r => r.peso()})
  method estaBienEquipada() {
    flota.size() >= 3 && flota.all({r => r.velocidadMaxima()}) >= 100
  }
}