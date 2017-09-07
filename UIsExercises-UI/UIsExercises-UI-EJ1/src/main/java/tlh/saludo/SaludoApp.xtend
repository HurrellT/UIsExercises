package tlh.saludo

import tlh.saludo
import org.uqbar.arena.Application

class SaludoApp extends Application {
	
	override createMainWindow() {
		new CrearSaludoWindow(this, new Saludo)
	}
	
	def static main(String[] args) {
		new SaludoApp().start
	}	
	
}