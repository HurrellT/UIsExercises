package tlh.twitter

import org.uqbar.commons.model.annotations.TransactionalAndObservable
import org.eclipse.xtend.lib.annotations.Accessors

@TransactionalAndObservable
@Accessors
class Twitter {
	String message = ""
	Integer charsLeft = 140
	
	def void setMessage(String message) {
		this.message = message
		updateChars
	}
	
	def updateChars() {
		if(this.message.length > 140) {
			this.charsLeft = 0
		}
		else {
			this.charsLeft = 140 - this.message.length 
		}
	}
}