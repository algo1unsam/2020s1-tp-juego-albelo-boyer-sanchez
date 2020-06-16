import wollok.game.*
import menu.*

object puntero{
	var property position = game.at(5,15)
	var property tablero
	var property intentos = 3
	
	const property listaLimitesSuperior = [game.at(5,16), game.at(6,16), game.at(7,16),
		game.at(8,16), game.at(9,16), game.at(10,16), game.at(11,16), game.at(12,16), game.at(13,16),
		game.at(14,16), game.at(15,16), game.at(16,16), game.at(17,16), game.at(18,16), game.at(19,16)]
		
	const property listaLimitesIzquierda = [game.at(4,0), game.at(4,1), game.at(4,2), 
		game.at(4,3), game.at(4,4), game.at(4,5), game.at(4,6), game.at(4,7), game.at(4,8), 
		game.at(4,9), game.at(4,10), game.at(4,11), game.at(4,12), game.at(4,13), game.at(4,14), game.at(4,15)]
		
	const property listaLimitesDerecha = [game.at(20,0), game.at(20,1), game.at(20,2), 
		game.at(20,3), game.at(20,4), game.at(20,5), game.at(20,6), game.at(20,7), game.at(20,8), 
		game.at(20,9), game.at(20,10), game.at(20,11), game.at(20,12), game.at(20,13), game.at(20,14), game.at(20,15)]
		
	const property listaLimitesInferior = [game.at(5,0), game.at(6,0), game.at(7,0),
		game.at(8,0), game.at(9,0), game.at(10,0), game.at(11,0), game.at(12,0), game.at(13,0),
		game.at(14,0), game.at(15,0), game.at(16,0), game.at(17,0), game.at(18,0), game.at(19,0)]	
	
	method image() {
	return "puntero2.png"
	
	}
	
	method puedeEliminarseDelTablero(){
		return false
	}
	
	method pintar(){
		if(self.obtenerElementos().size() == 1){
			tablero.accionar()	
		}
	}
	
	method ponerCruz(){
		if(self.obtenerElementos().size() == 1){
			game.addVisualIn(new CasillaCruz(), self.position())	
			
		}else{
			self.eliminarCruz()
		}
	}
		//if(self.obtenerElementos().size() == 1){
			//game.addVisualIn(new CasillaCruz(), self.position())	
			
	//	}else{
		//	self.eliminarCruz()
		//}
		
//	}
	
	method sePuedeEliminarAlgo(){
		return self.obtenerElementos().any({c => c.puedeEliminarseDelTablero()})
	}
	
	method cruz(){
		if(self.obtenerElementos().size() == 1){
			game.addVisualIn(new CasillaCruz(), self.position())	
			
		}else{
			self.eliminarCruz()
		}
	}
	
	method eliminarCruz(){
		if(self.obtenerElementos().size() == 2 and self.sePuedeEliminarAlgo()){
			
			game.removeVisual(self.filtrarElementos())
		}
			
	}
	
	method obtenerElementos(){
		return game.getObjectsIn(self.position())
	}
	
	method filtrarElementos(){
		return self.obtenerElementos().find({c => c.puedeEliminarseDelTablero()})

	}
	
	method moverArriba(){
		if(not self.validarMargenSuperior()){
			position = position.up(1)
		}
	}
	
	method moverAbajo(){
		if(not self.validarMargenInferior()){
			position = position.down(1)
		}
	}
	
	method moverDerecha(){
		if(not self.validarMargenDerecho()){
			position = position.right(1)			
		}
	}
	
	method moverIzquierda(){
		if(not self.validarMargenIzquierdo()){
			position = position.left(1)		
		}
	}
	
	method validarMargenSuperior(){
		return listaLimitesSuperior.contains(position.up(1))
	}
	
	method validarMargenIzquierdo(){
		return listaLimitesIzquierda.contains(position.left(1))
	}
	
	method validarMargenDerecho(){
		return listaLimitesDerecha.contains(position.right(1))
	}
	
	method validarMargenInferior(){
		return listaLimitesInferior.contains(position.down(1))
	}
	
	method restarIntento(){
		intentos -= 1
	}
	
	method consultarIntentos(){
		game.say(self, "Tenés " + self.intentos().toString() + " intentos.")
	}
		
	
}

class CasillaOscura{
	
	method image(){
		return "casillaOscura.png"
	}
	
	method puedeEliminarseDelTablero(){
		return false
	}
}

class CasillaCruz{
	//const position
	
	method image(){
		return "cruz3.png"
	}
	
	method puedeEliminarseDelTablero(){
		return true
	}
	
	method eliminarDelTablero(){
		game.removeVisual(self)
	}
}

class Tilde{
	method image(){
		return "tilde.png"
	}
}

object caraNormal{
	method image() {
	return "normal.png"
	
	}
}

object caraWin{
	method image() {
	return "win.png"
	
	}
}

object caraLose{
	method image() {
	return "lose.png"
	
	}
}

object cartel1{
	method image() {
	return "cartel1.png"
	
	}
}

object cartel2{
	method image() {
	return "cartel2.png"
	
	}
}

object cartel3{
	method image() {
	return "cartel3.png"
	
	}
}