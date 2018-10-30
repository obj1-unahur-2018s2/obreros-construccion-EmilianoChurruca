import obra.*
import uocra.*

class Obrero {
	var estaDeLicencia = false
	var jornalAdeudado = 0
	
	method trabajando() {
		estaDeLicencia = false
	}
	
	method noTrabaja() {
		estaDeLicencia = true	
	}
	
	method estaDeLicencia() {
		return estaDeLicencia
	}
	
	method jornadaDeTrabajo(obra) 
	
	method jonalesAdeudados() {
		return jornalAdeudado
	}
	
	method cuantoCobra() {
		return self.jonalesAdeudados() 
	}
	
	method cobrarJornal() {
		jornalAdeudado = 0
	}
}

class Albanil inherits Obrero{
	override method jornadaDeTrabajo(obra) {
		obra.jornadaDeTrabajoAlbanil ()
		jornalAdeudado += 1
	}
	
	override method cuantoCobra() {
		return super() * uocra.jornalAlbanil()
	}
}


class Plomero inherits Obrero {
	override method jornadaDeTrabajo(obra) {
		obra.jornadaDeTrabajoPlomero()
		jornalAdeudado += 1
	}
	
	override method cuantoCobra() {
		return super() * uocra.jornalPlomero()
	}
}


class Electricista inherits Obrero {
	override method jornadaDeTrabajo(obra) {
		obra.jornadaDeTrabajoElectricista()
		jornalAdeudado += 1
	}
	
	override method cuantoCobra() {
		return super() * uocra.jornalElectricista()
	}
}

class Gasista inherits Obrero {
	override method jornadaDeTrabajo(obra) {
		obra.jornadaDeTrabajoGasista()
		jornalAdeudado += 1
	}
	
	override method cuantoCobra() {
		return super() * uocra.jornalGasista()
	}
}


