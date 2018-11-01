import obreros.*

class Obra {
	
	const obreros = []
	var property ladrillos = 0
	var property canos = 0
	var property fosforos = 0
	var property cable = 0
	var property arandelas = 0
	var property cinta = 0
	var property efectivo = 100000
	var property metroCuadradosDePared = 0
	var property caniosAguaColocados = 0
	var property caniosGasColocados = 0
	var property metrosCableColocados = 0
	var property anchoTerreno = 0
	var property profundidaTerreno = 0
	
	
	method agregarObrero(obrero) {
		obreros.add(obrero)
		obrero.obraQueTrabajo()
	}
	
	method quitarObrero(obrero) {
		obreros.remove(obrero)
	}
	
	method jornadaLaboral() {
		return obreros.filter({o => not o.estaDeLicencia()})
		.forEach({j => j.jornadaDeTrabajo(self)})	
	}
	
	method jornadaDeTrabajoAlbanil () {
		ladrillos -= 100
		metroCuadradosDePared += 3
	}
	
	method jornadaDeTrabajoGasista() {
		canos -= 3
		fosforos -= 20 
		caniosGasColocados += 3 
	}
	
	method jornadaDeTrabajoPlomero() {
		canos -= 10
		arandelas -= 30
		caniosAguaColocados += 9
	}
	
	method jornadaDeTrabajoElectricista() {
		cable -= 4
		cinta -= 1
		metrosCableColocados += 4 
	}
	
	method recibirLadrillos(cantidad) {
		ladrillos += cantidad
	}
	
	method recibirCanos(cantidad) {
		canos += cantidad 
	}
	
	method recibirFosforos(cantidad) {
		fosforos += cantidad 
	}
	
	method recibirCable(cantidad) {
		cable += cantidad 
	}
	
	method recibirArandelas(cantidad) {
		arandelas += cantidad 
	}
	
	method recibirCinta(cantidad) {
		cinta += cantidad 
	}
	
	method tieneObrero(obrero) {
		return obreros.contains(obrero)
	}
	
	method totalAdeudado() {
		return obreros.sum({o => o.cuantoCobra()})
	}
	
	method pagoJornales() {
		efectivo -= self.totalAdeudado()
		obreros.forEach({o => o.cobrarJornal()}) 
	}
	
	method agregarEfectivo(valor){
		efectivo += valor
	}
	
	method estaFinalizada() 
}

class Casas inherits Obra{
	var property cantidadHabitaciones = 0
	var property cantidadbanios = 0
	var property cantidadPisos = 0
}

class Edificios inherits Obra{
	var property cantidadPisos = 0
	var property departamentosPorPiso = 0
	var property habitacionesPorDepartameno = 0
	var property cantidadAscensores = 0
	const cantidadDeBanios = 1
	
}
