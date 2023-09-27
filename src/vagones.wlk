class VagonPasajeros {
	const property largo
	const property ancho
	var property tieneBanios
	var property estaOrdenado = true
	
	method cantDePasajeros(){
		const pasajeros = if(ancho <= 3){largo*8}else{largo*10}
		return if(not estaOrdenado){0.max(pasajeros - 15)}else{pasajeros}
	}
	
	method carga() = if (tieneBanios){300}else{800}
	
	method pesoMaximo()= 2000 + (self.cantDePasajeros() * 80) + self.carga()
	
	method esPopular() = self.cantDePasajeros() > 50
	
	method hacerMantenimiento(){
		estaOrdenado = true
	}
}

class VagonCarga {
	const property cargaMaximaIdeal 
	var property cantDeMaderasSueltas = 0
	
	method carga() = 0.max(cargaMaximaIdeal - (400 * cantDeMaderasSueltas))
	
	method tieneBanios() = false
	
	method cantDePasajeros() = 0
	
	method pesoMaximo() = 1500 + self.carga()
	
	method esPopular() = self.cantDePasajeros() > 50
	
	method hacerMantenimiento(){
		cantDeMaderasSueltas = 0.max(cantDeMaderasSueltas - 2)
	}
}

class VagonDormitorios {
	const property cantCompartimientos
	var property cantCamasPorCompatimiento
	
	method carga() = 1200
	
	method tieneBanios() = true
	
	method cantDePasajeros() = cantCompartimientos * cantCamasPorCompatimiento
	
	method pesoMaximo() = 4000 + (80 * self.cantDePasajeros()) + self.carga()
	
	method esPopular() = self.cantDePasajeros() > 50
	
	method hacerMantenimiento(){}
}
