import 'package:flutter/material.dart';
import 'package:vcui/src/utils/button_usage_data.dart';
import 'package:vcui/src/utils/getUsage.dart';
import 'package:vcui/vui/ui_components/buttons.dart';

class ButtonsDemo extends StatelessWidget {
  static const routeName = "/buttonsDemo";
  const ButtonsDemo({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons List"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              button("Normal Button", () => getUsage("Normal Button", ButtonUsage.normalButton, context)),
              const Divider(),

              textButton("Text Button", () => getUsage("Text Button", ButtonUsage.textButton, context)),
              const Divider(),

              outlinedButton("Outlined Button",  () => getUsage("Outlined Button", ButtonUsage.outlinedButton, context)),
              const Divider(),

              fullWidthButton(
                  "Full Width Button",
                  () => getUsage("FullWidth Button", ButtonUsage.fullWidthButton, context),
                  MediaQuery.of(context).size.width
              ),
              const Divider(),

              customButton(
                  "Custom Button",
                  () => getUsage("Custom Button", ButtonUsage.customButton, context),
                  Colors.red,
                  Colors.white),
              const Divider(),

            ],
          ),
        ),
      ),
    );
  }
}
