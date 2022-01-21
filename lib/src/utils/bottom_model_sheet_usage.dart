class BottomModelSheetUsage{
  static const String bottomModelSheetUsage = """
    <pre>
import 'package:vcui/vui/ui_components/bottom_model_sheet.dart';

bottomSheet(
  context,
  title: "Logout",
  message: "Are you sure you want to logout",
);
<h1>Note:</h1>   
<h3>Optional Parameters</h3> 
isCloseButton: // Default value is true, false for setting model sheet without close</br>
modelSheetRadius: // Default value is 0.0, can give customized radius but value should be in double</br>
action: // Default value is empty array, set model sheet actions, acton object has two values title and onPressHandler</br></br>
<h1>Example</h1>    
  textButton(
      "Bottom model sheet with actions",
      (){
        bottomSheet(
          context,
          title: "Logout",
          message: "Are you sure you want to logout",
          isCloseButton: true,
          modelSheetRadius: 10.0,
          actions : [
            {
              "title": "Cancel",
              "onPressHandler": (){
                Navigator.pop(context);
              }
            },
            {
              "title": "Continue",
              "onPressHandler": (){
                print("perform task");
              }
            },
          ],
        );
      }
    )
    </pre>
  """;

  static const String bottomModelSheetUsageCode = """
import 'package:vcui/lib/vui/ui_components/bottom_model_sheet.dart';

bottomSheet(
  context,
  title: "Logout",
  message: "Are you sure you want to logout",
  isCloseButton: true,
  modelSheetRadius: 10.0,
  actions : [
    {
      "title": "Cancel",
      "onPressHandler": (){}
    },
  ],
);
  """;

}