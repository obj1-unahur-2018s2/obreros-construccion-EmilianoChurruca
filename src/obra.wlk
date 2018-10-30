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
	
	
	
	method agregarObrero(obrero) {
		obreros.add(obrero)
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
	}
	
	method jornadaDeTrabajoGasista() {
		canos -= 3
		fosforos -= 20 
	}
	
	method jornadaDeTrabajoPlomero() {
		canos -= 10
		arandelas -= 30
	}
	
	method jornadaDeTrabajoElectricista() {
		cable -= 4
		cinta -= 1
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
		return obra.contains(obrero)
	}
	
	method totalAdeudado() {
		return obra.sum({o => o.cuantoCobra()})
	}
	
	method pagoJornales() {
		efectivo -= self.totalAdeudado()
		obra.forEach({o => o.cobrarJornal()}) 
	}
	
	method agregarEfectivo(valor){
		efectivo += valor
	}
}
