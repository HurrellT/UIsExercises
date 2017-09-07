package tlh.saludo;

import org.uqbar.arena.Application;
import org.uqbar.arena.windows.Window;

@SuppressWarnings("all")
public class SaludoApp extends Application {
  @Override
  public Window<?> createMainWindow() {
    throw new Error("Unresolved compilation problems:"
      + "\nSaludo cannot be resolved."
      + "\nThe constructor CrearSaludoWindow(WindowOwner, Saludo) refers to the missing type Saludo");
  }
  
  public static void main(final String[] args) {
    new SaludoApp().start();
  }
}
