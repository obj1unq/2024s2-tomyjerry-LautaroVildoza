object tom{
	
	var energia = 50

	method energia(){
	  return energia
	}
	 
	method comer(raton) {
		energia = energia + 12 + raton.peso()
	}
	
	method correr(distancia){
		energia = energia - distancia / 2
	}
	
	method velocidadMaxima()  {
		return 5 + energia / 10
	}

	method puedeComer(distancia) {
	  return self.energiaQueGastaria(distancia) < energia
	}

	method quiereComer(raton, distancia){
		return self.puedeComer(distancia) && self.esMejorComer(raton, distancia)
	}

	method esMejorComer(raton, distancia) {
	  return self.energiaQueGastaria(distancia) < self.energiaPorComer(raton)
	}

	method energiaPorComer(raton) {
	  return 12 + raton.peso()
	}
	method energiaQueGastaria(distancia) {
	  return distancia / 2
	}
	
}

object jerry {
	var edad = 2

	method peso() {
	  return edad * 20
	}

	method cumpleAnhos() {
		edad = edad + 1
	}
}

object nibbles {
	const peso = 35

	method peso() {
	  return peso
	}
}

