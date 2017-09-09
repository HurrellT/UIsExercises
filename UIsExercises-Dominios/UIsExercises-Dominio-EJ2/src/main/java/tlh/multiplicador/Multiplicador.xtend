package tlh.multiplicador

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.annotations.Observable

@Accessors
@Observable
class Multiplicador {
	
	Integer operando1
	Integer operando2
	Integer resultado
	
	def multiplicar() {
		resultado = operando1 * operando2
	}
	
	
}