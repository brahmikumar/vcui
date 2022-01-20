class ToastMessagesUsage{
  static const String toastMessagesUsage = """
    <pre>
import 'package:vcui/vui/ui_components/snackbar.dart';
    
  ToastMessage.snackBarMessage(context, "Message");

  ToastMessage.errorSnackBar(context, "Message");

  ToastMessage.actionSnackBar(
    context, 
    "Message", 
    "Action Button Text", 
    onClickHandler,
  );
  
    </pre>
  """;

  static const String toastMessagesUsageCode = """
import 'package:vcui/vui/ui_components/snackbar.dart';
    
  ToastMessage.snackBarMessage(context, "Message");

  ToastMessage.errorSnackBar(context, "Message");

  ToastMessage.actionSnackBar(
    context, 
    "Message", 
    "Action Button Text", 
    onClickHandler,
  );
    """;

}