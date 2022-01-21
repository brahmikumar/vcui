class AlertDialogUsage{
  static const String alertDialogUsage = """
    <pre>
import 'package:vcui/vui/ui_components/alertDialog.dart';

  alertDialog(
    context, 
    title: "Offline", 
    message: "You are in offline mode",
    actions: [], // optional
  )
    
  <h1>Example</h1>  
  textButton(
    "Submit",
    (){
      alertDialog(
        context, 
        title: "Submit", 
        message: "Once you submit you con not modify",
        actions:  [
          {
            "title": "ok",
            "action": (){ },
          },
        ], // optional
      )
    } 
  )
    </pre>
  """;

static const String alertDialogUsageCode = """
import 'package:vcui/vui/ui_components/alertDialog.dart';

alertDialog(
  context, 
  title: "title", 
  message: "message",
  actions:  [
    {
      "title": "ok",
      "action": (){ },
    },
  ], // optional
)
  """;

}