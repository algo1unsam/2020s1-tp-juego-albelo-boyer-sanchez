import wollok.game.*

object puntero{
	var property position = game.at(5,14)
	
	method image() {
	return "puntero2.png"
	
	}
	
	method pintar(){
		game.addVisualIn(new CasillaOscura(), self.position())
	}
	
	method descartar(){
		const cruz = new CasillaCruz()
		game.addVisualIn(cruz, self.position())	
		
	}
}

class CasillaOscura{
	
	method image(){
		return "casillaOscura.png"
	}
}

class CasillaCruz{
	
	method image(){
		return "casillaCruz.png"
	}
}