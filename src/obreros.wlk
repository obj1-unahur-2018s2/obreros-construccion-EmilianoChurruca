import obra.*

class Obrero inherits  {
	var estaDeLicencia = false
	
	method trabajando() {
		estaDeLicencia = false
	}
	
	method noTrabaja() {
		estaDeLicencia = true	
	}
	
	method estaDeLicencia() {
		return estaDeLicencia
	}
}

class Albanil inherits Obrero{
	method jornadaDeTrabajo(obra) {
		obra.jornadaDeTrabajoAlbanil ()
	}
}

class Plomero inherits Obrero {
	method jornadaDeTrabajo(obra) {
		obra.jornadaDeTrabajoPlomero()
	}
}

class Electrisita inherits Obrero {
	method jornadaDeTrabajo(obra) {
		obra.jornadaDeTrabajoElectrisita()
	}
}

class Gasista inherits Obrero {
	method jornadaDeTrabajo(obra) {
		obra.jornadaDeTrabajoGasista()
	}
}


