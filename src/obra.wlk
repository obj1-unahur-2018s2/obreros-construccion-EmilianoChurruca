import obreros.*

class Obra {
	
	const obra = []
	var property ladrillos = 0
	var property canos = 0
	var property fosforos = 0
	var property cable = 0
	var property arandelas = 0
	var property cinta = 0
	
	
	
	method agregarObrero(obrero) {
		obra.add(obrero)
	}
	
	method quitarObrero(obrero) {
		obra.remove(obrero)
	}
	
	method jornadaLaboral() {
		return obra.filter({o => !o.estaDeLicencia()})
		.forEach({j => j.jornadaDeTrabajo(self)})	
	}
	
	method jornadaDeTrabajoAlbanil () {
		ladrillos -= 100
	}
	
	method jornadaDeTrabajoGasista() {
		canos -= 3
		fosforos -= 20 
	}
	
	method jornadaDeTrabajoPlomero() {
		canos -= 10
		arandelas -= 30
	}
	
	method jornadaDeTrabajoElectrisista() {
		cable -= 4
		cinta -= 1
	}
	
	
	
	
}
