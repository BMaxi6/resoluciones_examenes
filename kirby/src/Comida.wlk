class Comida {

	method serComidaPor(unPersonaje) {
		unPersonaje.aumentarCalorias(self.calorias())
		self.afectarA(unPersonaje)
	}

	method afectarA(unPersonaje) {
	// No hace nada
	}

	method calorias()

}

class Manzana inherits Comida {

	override method calorias() = 10

}

class Choripan inherits Comida {

	const tieneChimi

	override method calorias() = if (tieneChimi) 150 else 100

}

class Enemigo inherits Comida {

	const sombrero

	override method calorias() = 50

	override method afectarA(unPersonaje) {
		unPersonaje.usarSombrero(sombrero)
	}

}

class BloquePiedra inherits Comida {

	const factorPureza

	override method calorias() = 5 * factorPureza

	override method afectarA(unPersonaje) {
		unPersonaje.indigestate()
	}

}

class BloqueMadera inherits Comida {

	const factorDureza

	override method calorias() = 5 * factorDureza

}

class BloqueMaderaPetrificada inherits BloqueMadera {

	override method afectarA(unPersonaje) {
		unPersonaje.quitarSombrero()
	}

}

class BloqueNube inherits Comida {

	override method calorias() = 0

}

