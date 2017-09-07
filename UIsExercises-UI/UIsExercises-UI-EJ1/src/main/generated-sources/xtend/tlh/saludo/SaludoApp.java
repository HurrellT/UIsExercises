package tlh.saludo;

import org.uqbar.arena.Application;
import org.uqbar.arena.windows.Window;
import tlh.saludo.CrearSaludoWindow;
import tlh.saludo.Saludo;

@SuppressWarnings("all")
public class SaludoApp extends Application {
  @Override
  public Window<?> createMainWindow() {
    Saludo _saludo = new Saludo();
    return new CrearSaludoWindow(this, _saludo);
  }
  
  public static void main(final String[] args) {
    new SaludoApp().start();
  }
}
