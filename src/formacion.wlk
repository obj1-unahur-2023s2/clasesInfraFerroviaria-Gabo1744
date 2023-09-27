class Formacion {
	const vagones = #{}
	
	method agregarVagon(unVagon){
		vagones.add(unVagon)
	}
	
	method cantPasajerosQuePuedeLlevar(){
		return vagones.sum({v => v.cantDePasajeros()})
	}
	
	method cantVagonesPopulares(){
		return vagones.count({v => v.esPopular()})
	}
	
	method esFormacionCarguera(){
		return vagones.all({v => v.carga() >= 1000})
	}
	
	method pesoVagonMasPesado() {
		return vagones.max({v => v.pesoMaximo()}).pesoMaximo()
	}
	
	method pesoVagonMAsLiviano(){
		return vagones.min({v => v.pesoMaximo()}).pesoMaximo()
	}
	method dispersionDepesos(){
		return self.pesoVagonMasPesado() - self.pesoVagonMAsLiviano()
	}
	
	method cantDeBanios() {
		return vagones.count({v => v.tieneBanios()})
	}
	
	method hacerMantenimientoEnFormacion(){
		vagones.forEach({v => v.hacerMantenimiento()})
	}
}
	}