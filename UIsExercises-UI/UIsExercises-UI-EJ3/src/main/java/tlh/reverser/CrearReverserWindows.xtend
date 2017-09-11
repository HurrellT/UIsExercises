package tlh.reverser

import org.uqbar.arena.windows.SimpleWindow
import org.uqbar.arena.windows.WindowOwner
import org.uqbar.arena.widgets.Panel

import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.TextBox
import org.uqbar.arena.widgets.Button
import java.awt.Color

class CrearReverserWindows extends SimpleWindow<Reverser> {
	
	new(WindowOwner parent, Reverser model) {
		super(parent, model)
	}
	
	override protected createFormPanel(Panel mainPanel) {
		val editorPanel = new Panel(mainPanel)
		
		new Label(editorPanel).text = "Frase"
		
		new TextBox(editorPanel) => [
			width = 150
			value <=> "frase"	
		]
	}
	
	override protected addActions(Panel actionsPanel) {
		new Button(actionsPanel) => [
			height = 1
			width = 1
			onClick([|this.modelObject.revertirFrase])
			setAsDefault
		]
		
		new Label(actionsPanel) => [
			value <=> "fraseInvertida"
			bindForegroundToProperty("fraseInvertida").transformer = 
			[ | if (this.modelObject.esPalindromo(this.modelObject.frase)) { Color.BLUE }
				else { Color.RED }
			]
		]
	}
	
}