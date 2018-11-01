import obra.*
import uocra.*

class Obrero {
	var estaDeLicencia = false
	var jornalAdeudado = 0
	const obrasQueTrabajo = #{}
	
	method trabajando() {
		estaDeLicencia = false
	}
	
	method noTrabaja() {
		estaDeLicencia = true	
	}
	
	method estaDeLicencia() {
		return estaDeLicencia
	}
	
	method jornadaDeTrabajo(obra) {
		jornalAdeudado += 1 
	}
	
	method jonalesAdeudados() {
		return jornalAdeudado
	}
	
	method cuantoCobra() {
		return self.jonalesAdeudados() 
	}
	
	method cobrarJornal() {
		jornalAdeudado = 0
	}
	
	method obraQueTrabajo() {
		obrasQueTrabajo.add(self)
	}
	
	method pasoPor(obra){
		return obrasQueTrabajo.contains(obra)
	}
}

class Albanil inherits Obrero{
	override method jornadaDeTrabajo(obra) {
		super(obra)
		obra.jornadaDeTrabajoAlbanil ()
	}
	
	override method cuantoCobra() {
		return super() * uocra.jornalAlbanil()
	}
}


class Plomero inherits Obrero {
	override method jornadaDeTrabajo(obra) {
		super(obra)
		obra.jornadaDeTrabajoPlomero()
	}
	
	override method cuantoCobra() {
		return super() * uocra.jornalPlomero()
	}
}


class Electricista inherits Obrero {
	override method jornadaDeTrabajo(obra) {
		super(obra)
		obra.jornadaDeTrabajoElectricista()
	}
	
	override method cuantoCobra() {
		return super() * uocra.jornalElectricista()
	}
}

class Gasista inherits Obrero {
	override method jornadaDeTrabajo(obra) {
		super(obra)
		obra.jornadaDeTrabajoGasista()
	}
	
	override method cuantoCobra() {
		return super() * uocra.jornalGasista()
	}
}


