import Sombrero.*

class Personaje {

	var calorias
	var sombrero
	var indigestado = false

	method puedeComer() {
		return indigestado.negate()
	}

	method comer(unaComida) {
		if (self.puedeComer()) {
			unaComida.serComidaPor(self)
		} else {
			self.curate()
		}
	}

	method curate() {
		indigestado = false
	}

	method indigestate() {
		indigestado = true
	}

	method aumentarCalorias(unasCalorias) {
		calorias += sombrero.cantidadDeCaloriasPara(unasCalorias)
	}

	method usarSombrero(unSombrero) {
		sombrero = unSombrero
	}

	method quitarSombrero() {
		self.usarSombrero(ninguno)
	}

	method hacerEjercicio(unEjercicio) {
		sombrero.ejercita(self, unEjercicio)
	}

	method puntosPor(unasRondas) {
		return unasRondas.sum{ ronda => ronda.puntos(self) }
	}

}

