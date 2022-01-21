import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:vcui/src/utils/getUsage.dart';
import 'package:vcui/src/utils/toast_messages_usage.dart';
import 'package:vcui/src/widgets/usage_bottom_navigation.dart';
import 'package:vcui/vui/colors/colors.dart';
import 'package:vcui/vui/ui_components/buttons.dart';
import 'package:vcui/vui/ui_components/snackbar.dart';

class ToastMessagesDemo extends StatefulWidget {
  static const routeName = "/toastMessagesDemo";
  const ToastMessagesDemo({Key? key}) : super(key: key);

  @override
  State<ToastMessagesDemo> createState() => _ToastMessagesDemoState();
}


class _ToastMessagesDemoState extends State<ToastMessagesDemo>  with TickerProviderStateMixin{
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toast Messages"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: InkWell(
                onTap: (){
                  Clipboard.setData(const ClipboardData(text: ToastMessagesUsage.toastMessagesUsageCode));
                },
                child: const Icon(Icons.copy)
            ),
          ),
        ],
        bottom: TabBar(
          controller: tabController,
          tabs: [
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(Icons.phone_android),
                  Text("Preview", style: TextStyle(fontSize: 18),),
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(Icons.code),
                  Text("Code", style: TextStyle(fontSize: 18),),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            height: MediaQuery.of(context).size.height-200,
            child: TabBarView(
              controller: tabController,
              children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customButton(
                        "Snack Bar",
                            (){
                          ToastMessage.snackBarMessage(context, "Test Snack Bar");
                        },
                        AppColors.colorSeqBlueThree,
                        AppColors.colorBlackPrimary,
                      ),
                      const Divider(),

                      customButton(
                        "Error Message Snack Bar",
                            (){
                          ToastMessage.errorSnackBar(context, "Something Went Wrong Please Try Again Later");
                        },
                        AppColors.colorSeqBlueFour,
                        AppColors.colorBlackPrimary,
                      ),
                      const Divider(),

                      customButton(
                        "Action Snack Bar",
                            (){
                          ToastMessage.actionSnackBar(
                            context,
                            "Live Facilities Are Available",
                            "Usage",
                                () => getUsage("Toast Messages", ToastMessagesUsage.toastMessagesUsage, context),
                          );
                        },
                        AppColors.colorSeqBlueFive,
                        AppColors.colorSeqBlueOne,
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      /*ElevatedButton(onPressed: (){
                        Clipboard.setData(const ClipboardData(text: ToastMessagesUsage.toastMessagesUsageCode));
                      }, child: Text("Copy Code")),*/
                      Html(
                          data: ToastMessagesUsage.toastMessagesUsage
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      //bottomNavigationBar: UsageBottomNavigation("Toast Messages", ToastMessagesUsage.toastMessagesUsage),
    );
  }

}
