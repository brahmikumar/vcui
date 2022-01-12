class AlertDialogUsage{
  static const String alertDialogUsage = """
    <pre>
import 'package:vcui/vui/ui_components/alertDialog.dart';

  showDialog(
    context: context,
    builder: (BuildContext context) => AppAlertDialog(
      "Alert Dialog Title",
      "massage",
      actionsList, // Each action object having two fields action title and actionHandler
    ),
  )
    
  <h1>Example</h1>  
  textButton(
    "Submit",
    () => showDialog(
      context: context,
      builder: (BuildContext context) => AppAlertDialog(
          "Submit",
          Messages.formSubmitConfirmMsg,
          [
            {
              "title": "ok",
              "action": (){
                Navigator.pop(context);
                ToastMessage.snackBarMessage(context, Messages.formSubmitSuccessMsg);
              },
            },
          ]
      ),
    )
  )
    </pre>
  """;

}