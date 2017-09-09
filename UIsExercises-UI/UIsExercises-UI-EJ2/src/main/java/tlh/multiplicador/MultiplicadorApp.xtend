package tlh.multiplicador

import org.uqbar.arena.Application

class MultiplicadorApp extends Application {
	
	override protected createMainWindow() {
		new CrearMultiplicadorWindow(this, new Multiplicador)
	}
	
	def static void main(String[] args) {
		new MultiplicadorApp().start
	}
}