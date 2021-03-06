package tlh.saludo;

import org.eclipse.xtext.xbase.lib.ObjectExtensions;
import org.eclipse.xtext.xbase.lib.Procedures.Procedure1;
import org.uqbar.arena.bindings.ObservableValue;
import org.uqbar.arena.layout.ColumnLayout;
import org.uqbar.arena.widgets.Control;
import org.uqbar.arena.widgets.Label;
import org.uqbar.arena.widgets.Panel;
import org.uqbar.arena.widgets.TextBox;
import org.uqbar.arena.windows.SimpleWindow;
import org.uqbar.arena.windows.WindowOwner;
import org.uqbar.arena.xtend.ArenaXtendExtensions;
import org.uqbar.lacar.ui.model.ControlBuilder;
import tlh.saludo.Saludo;

@SuppressWarnings("all")
public class CrearSaludoWindow extends SimpleWindow<Saludo> {
  public CrearSaludoWindow(final WindowOwner parent, final Saludo saludo) {
    super(parent, saludo);
    this.setTitle("Saludo");
  }
  
  @Override
  protected void createFormPanel(final Panel panel) {
    final Panel editorPanel = new Panel(panel);
    ColumnLayout _columnLayout = new ColumnLayout(1);
    editorPanel.setLayout(_columnLayout);
    Label _label = new Label(editorPanel);
    _label.setText("Nombre");
    TextBox _textBox = new TextBox(editorPanel);
    final Procedure1<TextBox> _function = (TextBox it) -> {
      ObservableValue<Control, ControlBuilder> _value = it.<ControlBuilder>value();
      ArenaXtendExtensions.operator_spaceship(_value, "nombre");
      it.setWidth(150);
    };
    ObjectExtensions.<TextBox>operator_doubleArrow(_textBox, _function);
    Label _label_1 = new Label(editorPanel);
    _label_1.setText("Apellido");
    TextBox _textBox_1 = new TextBox(editorPanel);
    final Procedure1<TextBox> _function_1 = (TextBox it) -> {
      ObservableValue<Control, ControlBuilder> _value = it.<ControlBuilder>value();
      ArenaXtendExtensions.operator_spaceship(_value, "apellido");
      it.setWidth(150);
    };
    ObjectExtensions.<TextBox>operator_doubleArrow(_textBox_1, _function_1);
  }
  
  @Override
  protected void addActions(final Panel actionsPanel) {
    Label _label = new Label(actionsPanel);
    _label.setText("Hola");
    Label _label_1 = new Label(actionsPanel);
    final Procedure1<Label> _function = (Label it) -> {
      ObservableValue<Control, ControlBuilder> _value = it.<ControlBuilder>value();
      ArenaXtendExtensions.operator_spaceship(_value, "nombre");
    };
    ObjectExtensions.<Label>operator_doubleArrow(_label_1, _function);
    Label _label_2 = new Label(actionsPanel);
    final Procedure1<Label> _function_1 = (Label it) -> {
      ObservableValue<Control, ControlBuilder> _value = it.<ControlBuilder>value();
      ArenaXtendExtensions.operator_spaceship(_value, "apellido");
    };
    ObjectExtensions.<Label>operator_doubleArrow(_label_2, _function_1);
  }
}
