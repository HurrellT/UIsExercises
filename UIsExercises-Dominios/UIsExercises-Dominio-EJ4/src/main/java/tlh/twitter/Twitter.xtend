package tlh.twitter

import org.uqbar.commons.model.annotations.TransactionalAndObservable
import org.eclipse.xtend.lib.annotations.Accessors

@TransactionalAndObservable
@Accessors
class Twitter {
	String message
	Integer maxLength
	
	def setMaxLength() {
		maxLength = 140
	}
}