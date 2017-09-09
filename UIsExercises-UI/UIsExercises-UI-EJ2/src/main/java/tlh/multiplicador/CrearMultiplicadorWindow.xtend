package tlh.multiplicador

import org.uqbar.arena.windows.SimpleWindow
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.windows.WindowOwner
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.TextBox
import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*
import org.uqbar.arena.widgets.Button
import org.uqbar.arena.layout.VerticalLayout

class CrearMultiplicadorWindow extends SimpleWindow<Multiplicador> {
	
	new(WindowOwner parent, Multiplicador mult) {
		super(parent, mult)
	}
	
	
	override protected createFormPanel(Panel mainPanel) {
		//Hago el panel donde voy a trabajar
		val panel = new Panel(mainPanel)

		//Le agrego lo que quiero que tenga
		new Label(panel).text = "Operando 1"
		
		new TextBox(panel) => [
			width = 150
			value <=> "operando1"
		]
		
		new Label(panel).text = "Operando 2"
		
		new TextBox(panel) => [
			width = 150
			value <=> "operando2"
		]
	}
	
	override protected addActions(Panel actionsPanel) {
		actionsPanel.layout = new VerticalLayout
		
		new Button(actionsPanel) => [
			caption = "*"
			setAsDefault
			onClick [ | multiplicar]
			
		]
		
		new Label(actionsPanel) => [
			value <=> "resultado"
		]
	}
	
	def multiplicar() {
		modelObject.multiplicar
		//El showInfo tira un cartel
//		showInfo(modelObject.resultado.toString)
	}

}