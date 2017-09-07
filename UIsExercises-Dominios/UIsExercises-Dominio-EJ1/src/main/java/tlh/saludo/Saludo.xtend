package tlh.saludo

import org.uqbar.commons.model.annotations.Observable

@Observable
class Saludo {
	
	String nombre
	String apellido
	
	new(String nombre, String apellido) {
		this.nombre 	= nombre
		this.apellido	= apellido
	}
	
	override toString() {
		'''Hola «nombre» «apellido»'''
	}
}