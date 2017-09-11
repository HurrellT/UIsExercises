package tlh.reverser

import org.uqbar.arena.Application

class ReverserApp extends Application {
	
	override protected createMainWindow() {
		new CrearReverserWindows(this, new Reverser)
	}
	
	def static void main(String[] args) {
		new ReverserApp().start
	}
	
}