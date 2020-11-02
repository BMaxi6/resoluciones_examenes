class Sombrero {

	method cantidadDeCaloriasPara(unasCalorias) = unasCalorias

	method ejercita(unPersonaje, unEjercicio) {
		unPersonaje.disminuirCalorias(self.caloriasDeEjercicio(unEjercicio))
	}

	method caloriasDeEjercicio(unEjercicio) {
		return unEjercicio.calorias()
	}

}

object ninguno inherits Sombrero {

}

object bandana inherits Sombrero {

	override method cantidadDeCaloriasPara(unasCalorias) = unasCalorias / 2

	override method caloriasDeEjercicio(unEjercicio) {
		return super(unEjercicio) * 2
	}

}

object zelda inherits Sombrero {

	override method ejercita(unPersonaje, unEjercicio) {
		super(unPersonaje, unEjercicio)
		unPersonaje.quitarSombrero()
	}

	override method caloriasDeEjercicio(unEjercicio) {
		return super(unEjercicio) / 2
	}

}

object piedra inherits Sombrero {

	override method cantidadDeCaloriasPara(unasCalorias) = 0

	override method ejercita(unPersonaje, unEjercicio) {
	// No hace nada
	}

}

class Llamas inherits Sombrero {

	var calorias

	override method cantidadDeCaloriasPara(unasCalorias) = unasCalorias * calorias

	override method ejercita(unPersonaje, unEjercicio) {
		super(unPersonaje, unEjercicio)
		calorias *= 2
	}

}

