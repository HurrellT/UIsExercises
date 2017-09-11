package tlh.reverser

import org.junit.Test

import static org.junit.Assert.*

class ReverserTest {
	
	Reverser reverser = new Reverser()
	
	@Test
	def testHolaInvertidoEsaloH() {
		
		reverser.frase = "Hola"
		val expected = "aloH"
		
		reverser.revertirFrase
		
		assertEquals(expected,reverser.fraseInvertida)
	}
	
	@Test
	def testLaPalabraNeuquenEsPalindomo() {
		val pal = "Neuquen"
		
		assertTrue(reverser.esPalindromo(pal))
	}
}