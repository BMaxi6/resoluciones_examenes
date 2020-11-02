//PUNTO 1

Minion >> comer(unaFruta){
	unaFruta.consumiteEn(self)
}

Minion >> aumentarEstaminaEn(unaCantidad){
	estamina += unaCantidad
}

Biclopes >> aumenetarEstaminaEn(unaCantidad){
	super(unaCantidad)
	self.validarEstamina()
}

Biclopes >> validarEstamina(){
	if(stamina>10){
		stamina=10
	}
}

banana >> consumiteEn(unMinion){
	unMinion.aumentarStaminaEn(10)
}

manzana >> consumiteEn(unMinion){
	unMinion.aumentarStaminaEn(5)
}

uva >> consumiteEn(unMinion){
	unMinion.aumentarStaminaEn(1)
}


//PUNTO 2

Minion >> obtenerExperiencia(){
	return self.cantidadDeTareasRealizadas() * self.sumaDeLasExperiencias()
}

Minion >> cantidadDeTareasRealizadas(){
	return tareas.size()
}

Minion >> sumaDeLasExperiencias(){
	return tareaas.sum({ unaTarea => unaTarea.dificultad() })
}

ArreglarUnaMaquina >> dificultad(){
	return complejidad*2
}

DefenderUnSector >> dificultad() {
	return gradoDeAmenaza
}


//PUNTO 3

Minion >> realizar(unaTarea){
	if(unaTarea.cumpleCondiciones(self)){
		
	}
}

// Arreglar Maquina
ArreglarUnaMaquina >> cumpleCondiciones(unMinion){
	return complejidad =< unMinion.estamina() && self.contieneLasHerramientas(unMinion)
}

ArreglarUnaMaquina >> contieneLasHerramientas(unMinion){
	if(herramientas.size() == 0){
		return true
	}
	return herramientasNecesarias.all({ unaHerramienta => unMinion.posee(unaHerramienta) })
}

Minion >> posee(unaHerramienta){
	return herramientas.contains(unaHerramienta)
}

// Defender Sector

DefenderUnSector >> cumpleCondiciones(unMinion){
	return unMinion.puedeDefenderUnSector() && unMinion.fuerza >= gradoDeAmenaza
}

unMinion.puedeDefender(){
	return rol.podemosDefender()
}

Minion >> fuerza(){
	return (fuerza + rol.fuerza())*especie.indiceDeFuerza()
}

































