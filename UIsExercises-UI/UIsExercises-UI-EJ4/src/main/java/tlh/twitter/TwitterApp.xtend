package tlh.twitter

import org.uqbar.arena.Application

class TwitterApp extends Application {
	
	override protected createMainWindow() {
		new CreateTwitterWindow(this, new Twitter)
	}
	
	def static void main(String[] args) {
		new TwitterApp().start
	}
	
}