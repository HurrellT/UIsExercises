package tlh.twitter

import org.uqbar.arena.layout.ColumnLayout
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.TextBox
import org.uqbar.arena.windows.SimpleWindow
import org.uqbar.arena.windows.WindowOwner

import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*

class CreateTwitterWindow extends SimpleWindow<Twitter> {
	
	new(WindowOwner parent, Twitter model) {
		super(parent, model)
	}
	
	override protected createFormPanel(Panel mainPanel) {
		
		val editorPanel = new Panel(mainPanel)
		editorPanel.layout = new ColumnLayout(1)
		
		new Label(editorPanel).text = "Twitter"

		new TextBox(editorPanel) => [
			value <=> "message"
		]
		
	}
	
	override protected addActions(Panel actionsPanel) {
				
		new Label(actionsPanel) => [
			value <=> "charsLeft"
		]
		
	}
	
}