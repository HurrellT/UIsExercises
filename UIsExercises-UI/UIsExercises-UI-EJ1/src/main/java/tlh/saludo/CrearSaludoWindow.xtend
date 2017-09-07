package tlh.saludo

import org.uqbar.arena.windows.SimpleWindow
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.windows.WindowOwner
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.TextBox
import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*
import org.uqbar.arena.layout.ColumnLayout

class CrearSaludoWindow extends SimpleWindow<Saludo> {
	
	new(WindowOwner parent, Saludo saludo) {
		super(parent, saludo)
		title = "Saludo"
	}
	
	override protected createFormPanel(Panel panel) {
		val editorPanel 	= new Panel(panel)
		editorPanel.layout 	= new ColumnLayout(1)
		
		new Label(editorPanel).text = "Nombre"
		
		new TextBox(editorPanel) => [
			value <=> "nombre"
			width = 150
		]
		
		new Label(editorPanel).text = "Apellido"
		
		new TextBox(editorPanel) => [
			value <=> "apellido"
			width = 150
		]
	}
	
	override protected addActions(Panel actionsPanel) {
		new Label(actionsPanel).text = "Hola"
		
		new Label(actionsPanel) => [
			value <=> "nombre"
		]
		
		new Label(actionsPanel) => [
			value <=> "apellido"
		]
	}
	
}