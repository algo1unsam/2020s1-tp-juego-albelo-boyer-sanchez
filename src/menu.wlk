import wollok.game.*
import elementos.*

class Tablero{
	
	method verificar(){
		return self.devolverLista().contains(puntero.position())
	}
	
	method accionar(){
		if (self.verificar()){
			game.addVisualIn(new CasillaOscura(), puntero.position())
			self.quitarDeLaLista()
			self.consultarLista()
			
		}else{
			game.say(caraNormal, "Ouch!")
			puntero.restarIntento()
			game.addVisualIn(new CasillaCruz(),puntero.position())
			self.verificarIntentos()
		}
	}
	
	method quitarDeLaLista(){
		self.devolverLista().remove(puntero.position())
	}
	
	method consultarLista(){
		if(self.devolverLista().size() == 0){
			game.addVisualIn(caraWin, game.at(0,16))
			//game.say(carawin, "Ganaste")
			self.figuraResuelta()
			self.cartel()
			game.start()
			
		}
	}
	
	method verificarIntentos(){
		if (puntero.intentos() == 0){
			game.addVisualCharacterIn(caraLose, game.at(0,16))
			game.start()
		}
	}
	
	//method unirListas()
	method devolverLista()
	
	method figuraResuelta()
	
	method cartel()
	
	//method verificarListas(){
	//	return self.devolverLista().filter({ l => l.size() == 1})
	//}
	
	//method agregarTilde(){
	//	self.verificarListas().forEach({l => self.crearTilde(l)})
		
	//}
	
	//method crearTilde(posicion){
	//	game.addVisualIn(new Tilde(), posicion)
	//}
	
}

class Tablero1 inherits Tablero{
	const posicionesCorrectas = [game.at(6,15), game.at(7,15), game.at(8,15), game.at(9,15), game.at(5,14),
		game.at(6,14), game.at(9,14), game.at(10,14), game.at(11,14),game.at(5,13), game.at(8,13), game.at(11,13), 
		game.at(5,12),game.at(6,12),game.at(7,12), game.at(11,12), game.at(12,12), game.at(5,11), game.at(7,11), 
		game.at(11,11), game.at(12,11),game.at(13,11), game.at(5,10), game.at(6,10), game.at(7,10), game.at(8,10), 
		game.at(9,10), game.at(10,10), game.at(11,10),game.at(13,10), game.at(14,10), game.at(5,9), game.at(7,9), 
		game.at(10,9), game.at(14,9), game.at(15,9), game.at(7,8),game.at(10,8), game.at(15,8), game.at(7,7), 
		game.at(10,7), game.at(11,7), game.at(15,7), game.at(16,7), game.at(17,7),game.at(18,7), game.at(19,7), 
		game.at(7,6), game.at(11,6), game.at(12,6), game.at(13,6), game.at(14,6), game.at(15,6),game.at(19,6), 
		game.at(7,5), game.at(8,5), game.at(14,5), game.at(15,5), game.at(16,5), game.at(17,5), game.at(18,5),
		game.at(19,5),game.at(8,4), game.at(9,4), game.at(12,4), game.at(13,4), game.at(14,4), game.at(9,3),
		game.at(10,3), game.at(11,3), game.at(12,3), game.at(9,2), game.at(12,2), game.at(7,1), game.at(8,1), 
		game.at(9,1), game.at(10,1), game.at(11,1), game.at(12,1),game.at(13,1), game.at(14,1)]
	
	
	method image() = "fondo1.png"
	
	method position() = game.at(0, 0)
	
//	override method unirListas(){
	//	return self.posicionesCorrectas().flatten()
	//}
	
	override method devolverLista(){
		return posicionesCorrectas
	}
	
	override method figuraResuelta(){
		game.addVisual(figuraResuelta1)
	}
	
	override method cartel(){
		game.addVisualIn(cartel1, game.at(7,17))
	}
}

object figuraResuelta1{
	method image() = "img1.png" 
	method position() = game.at(5,1)
}

class Tablero2 inherits Tablero{
	const posicionesCorrectas = [game.at(10,15), game.at(8,14), game.at(10,14), game.at(8,13), game.at(9,13), game.at(10,13),
		game.at(11,13), game.at(9,12), game.at(10,12), game.at(11,12), game.at(9,11), game.at(10,11), game.at(11,11), 
		game.at(12,11), game.at(10,10), game.at(11,10), game.at(9,9), game.at(10,9), game.at(11,9), game.at(18,9), 
		game.at(9,8), game.at(10,8), game.at(11,8), game.at(12,8), game.at(19,8), game.at(9,7), game.at(10,7), 
		game.at(11,7), game.at(12,7), game.at(13,7), game.at(19,7), game.at(9,6), game.at(10,6), game.at(11,6),
		game.at(12,6), game.at(13,6), game.at(14,6), game.at(16,6), game.at(17,6), game.at(19,6), game.at(9,5), 
		game.at(10,5), game.at(11,5), game.at(12,5), game.at(13,5), game.at(14,5), game.at(15,5), game.at(16,5),
		game.at(17,5), game.at(18,5), game.at(8,4), game.at(9,4), game.at(11,4), game.at(12,4), game.at(13,4), 
		game.at(14,4), game.at(15,4), game.at(16,4), game.at(17,4), game.at(18,4), game.at(8,3), game.at(11,3),
		game.at(16,3), game.at(17,3), game.at(7,2), game.at(8,2),game.at(10,2), game.at(11,2), game.at(17,2),
		game.at(18,2), game.at(5,1), game.at(6,1), game.at(7,1), game.at(9,1), game.at(10,1), game.at(15,1), 
		game.at(16,1), game.at(17,1), game.at(18,1)]
	
	method image() = "fondo2.png"
	
	method position() = game.at(0, 0)
	
	override method figuraResuelta(){
		game.addVisual(figuraResuelta2)
	}
	
	override method devolverLista(){
		return posicionesCorrectas
	}
	
	override method cartel(){
		game.addVisualIn(cartel2, game.at(7,17))
	}
}

object figuraResuelta2{
	method image() = "img2.png" 
	method position() = game.at(5,1)
}

class Tablero3 inherits Tablero{
	const posicionesCorrectas = [game.at(5,15), game.at(6,15), game.at(7,15), game.at(8,15), game.at(9,15), game.at(10,15),
		game.at(11,15), game.at(12,15), game.at(13,15), game.at(14,15), game.at(15,15), game.at(16,15), game.at(17,15),
		game.at(18,15), game.at(19,15), game.at(5,14), game.at(6,14), game.at(7,14), game.at(8,14), game.at(15,14),
		game.at(16,14), game.at(17,14), game.at(18,14), game.at(19,14), game.at(5,13), game.at(6,13), game.at(17,13),
		game.at(18,13), game.at(19,13), game.at(19,12), game.at(5,11), game.at(6,11), game.at(7,11), game.at(11,11),
		game.at(12,11), game.at(6,10), game.at(7,10), game.at(11,10), game.at(12,10), game.at(17,10), game.at(18,10),
		game.at(19,10), game.at(6,9), game.at(7,9), game.at(8,9), game.at(10,9), game.at(11,9), game.at(12,9), game.at(13,9),
		game.at(17,9), game.at(18,9), game.at(19,9), game.at(6,8), game.at(7,8), game.at(8,8), game.at(10,8), game.at(11,8),
		game.at(12,8), game.at(13,8), game.at(16,8), game.at(17,8), game.at(18,8), game.at(7,7), game.at(8,7), game.at(9,7),
		game.at(10,7), game.at(11,7), game.at(12,7), game.at(13,7), game.at(14,7), game.at(16,7), game.at(17,7), game.at(7,6),
		game.at(8,6), game.at(9,6), game.at(10,6), game.at(12,6), game.at(13,6), game.at(14,6), game.at(15,6), game.at(16,6),
		game.at(17,6), game.at(8,5), game.at(9,5), game.at(10,5), game.at(13,5), game.at(14,5), game.at(15,5), game.at(16,5),
		game.at(8,4), game.at(9,4), game.at(13,4), game.at(14,4), game.at(15,4), game.at(5,3), game.at(6,3), game.at(14,3),
		game.at(18,3), game.at(19,3), game.at(5,2), game.at(6,2), game.at(7,2), game.at(8,2), game.at(16,2), game.at(17,2),
		game.at(18,2), game.at(19,2), game.at(5,1), game.at(6,1), game.at(7,1), game.at(8,1), game.at(9,1), game.at(10,1),
		game.at(11,1), game.at(12,1), game.at(13,1), game.at(14,1), game.at(15,1), game.at(16,1), game.at(17,1), game.at(18,1),
		game.at(19,1)]
	
	method image() = "fondo3.png"
	
	method position() = game.at(0, 0)
	
	override method figuraResuelta(){
		game.addVisual(figuraResuelta3)
	}
	
	override method devolverLista(){
		return posicionesCorrectas
	}
	
	override method cartel(){
		game.addVisualIn(cartel3, game.at(7,17))
	}
}

object figuraResuelta3{
	method image() = "img3.png" 
	method position() = game.at(5,1)
}

object jugador{
	
	method cargarTablero1(){
		
		const tablero1 = new Tablero1()
		game.addVisual(tablero1)
		game.addVisual(puntero)
		game.addVisualIn(caraNormal, game.at(0,16))
		puntero.tablero(tablero1)
	}
	
	method cargarTablero2(){
		const tablero2 = new Tablero2()
		game.addVisual(tablero2)
		game.addVisual(puntero)
		game.addVisualIn(caraNormal, game.at(0,16))
		puntero.tablero(tablero2)
	}
	
	method cargarTablero3(){
		const tablero3 = new Tablero3()
		game.addVisual(tablero3)
		game.addVisual(puntero)
		game.addVisualIn(caraNormal, game.at(0,16))
		puntero.tablero(tablero3)
	}
}



