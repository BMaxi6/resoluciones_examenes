class GourmetRush {

	const rondas = []
	var participantes = []

	method ganador() {
		return participantes.max{ participante => participante.puntos(rondas) }
	}

}

class Ronda {

	const comida
	const ejercicio

	method puntos(unPersonaje) {
		const antes = unPersonaje.calorias()
		unPersonaje.comer(comida)
		unPersonaje.hacerEjercicio(ejercicio)
		return unPersonaje.calorias() - antes
	}

}

