package tlh.saludo;

import org.eclipse.xtend.lib.annotations.Accessors;
import org.eclipse.xtext.xbase.lib.Pure;
import org.uqbar.commons.model.annotations.Observable;

@Observable
@Accessors
@SuppressWarnings("all")
public class Saludo {
  private String nombre;
  
  private String apellido;
  
  @Pure
  public String getNombre() {
    return this.nombre;
  }
  
  public void setNombre(final String nombre) {
    this.nombre = nombre;
  }
  
  @Pure
  public String getApellido() {
    return this.apellido;
  }
  
  public void setApellido(final String apellido) {
    this.apellido = apellido;
  }
}
