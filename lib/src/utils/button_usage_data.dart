class ButtonUsage{
  static const String normalButton = """
    <pre>
    <code>
import 'package:vcui/vui/ui_components/buttons.dart';
    
    button("Button title", onPressHandler);
     
    <h1>Example</h1>
    button("Normal Button", (){
      Navigator.pushNamed(context, '/usage');
    })
    </code>
    </pre>
  """;
static const String buttonsUsage = """
    <pre>
    <code>
import 'package:vcui/vui/ui_components/buttons.dart';
    
button("Button title", onPressHandler);

textButton("Button title", onPressHandler);

outlinedButton("Button title", onPressHandler);

fullWidthButton("Button title", onPressHandler, buttonWidth);

customButton("Button title", onPressHandler, buttonColor, buttonTextColor);
     
    <h1>Example</h1>
    button(
      "Normal Button", 
      (){
        // on button click action
      }
    )
    </code>
    </pre>
  """;

  static const String normalButtonCode = """
   
import 'package:vcui/vui/ui_components/buttons.dart';
    
    button("Button title", (){});

  """;

  static const String textButton = """
    <pre>
import 'package:vcui/vui/ui_components/buttons.dart';
    
    textButton("Button title", onPressHandler);
     
    <h1>Example</h1>
    textButton("Text Button Title", (){
      Navigator.pushNamed(context, '/usage');
    })
    </pre>
  """;

  static const String outlinedButton = """
    <pre>
import 'package:vcui/vui/ui_components/buttons.dart';
    
    outlinedButton("Button title", onPressHandler);
     
    <h1>Example</h1>
    outlinedButton("Outlined Button Title", (){
      Navigator.pushNamed(context, '/usage');
    })
    </pre>
  """;

  static const String fullWidthButton = """
    <pre>
import 'package:vcui/vui/ui_components/buttons.dart';
    
    fullWidthButton("Button title", onPressHandler, buttonWidth);
     
    <h1>Example</h1>
    fullWidthButton("Outlined Button Title", (){
      Navigator.pushNamed(context, '/usage', 250.0);
    })
    
    // Button width should be double.
    // For full width respected to device: MediaQuery.of(context).size.width
    </pre>
  """;

  static const String customButton = """
    <pre>
import 'package:vcui/vui/ui_components/buttons.dart';
    
    customButton("Button title", onPressHandler, buttonColor, buttonTextColor);
     
    <h1>Example</h1>
    customButton("Custom Button", (){
      Navigator.pushNamed(context, '/usage', 250.0);
    },
    Colors.red,
    Colors.white)
    </pre>
  """;

}