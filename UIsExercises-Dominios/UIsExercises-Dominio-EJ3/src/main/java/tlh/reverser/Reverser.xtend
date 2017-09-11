package tlh.reverser

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.annotations.Observable

@Accessors
@Observable
class Reverser {
	
	String frase
	String fraseInvertida
	
	def revertirFrase() {
		val stBuilder = new StringBuilder(frase).reverse.toString
		
		fraseInvertida = stBuilder
	}
	
	def esPalindromo(String palabra) {
	    palabra.equalsIgnoreCase(new StringBuilder(palabra).reverse().toString())
	}
}

