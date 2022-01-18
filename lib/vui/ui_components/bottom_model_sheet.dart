import 'package:flutter/material.dart';
import 'buttons.dart';

class AppBottomModelSheet extends StatelessWidget {
  String title;
  String message;
  bool isCloseButton;
  List actions;
  AppBottomModelSheet({required this.title, required this.message, this.actions = const [], this.isCloseButton = true});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title, style: Theme.of(context).textTheme.headline1),

                    if(isCloseButton)
                      InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: const Icon(Icons.close)
                      ),
                  ],
                ),
              ),

              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:15.0, horizontal: 15),
                child: Text("${message}"),
              ),

              if(actions.isNotEmpty)
                Column(
                  children: [
                    const Divider(),

                    const SizedBox(height: 10,),
                    (actions.length < 4) ?
                    Row(
                      children: [
                        for(int index=0; actions.length> index; index++)
                          (index == 0) ?
                          Expanded(
                            flex: 1,
                            child: Center(
                              child: outlinedButton(
                                actions[index]["title"],
                                actions[index]["onPressHandler"],
                              ),
                            ),
                          )
                          :
                          Expanded(
                            flex: 1,
                            child: Center(
                              child: button(
                                actions[index]["title"],
                                actions[index]["onPressHandler"],
                              ),
                            ),
                          ),
                      ],
                    )
                    :
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          for(int index=0; actions.length> index; index++)
                            outlinedButton(
                              actions[index]["title"],
                              actions[index]["onPressHandler"],
                            ),
                        ],
                      ),
                    )
                  ],
                ),

              const SizedBox(height: 40,),
            ],
          ),
        ),
      ],
    );
  }
}


Future bottomSheet(context,{ title, message, actions = const [], isCloseButton = true, modelSheetRadius= 0.0}) {
  return showModalBottomSheet<dynamic>(
      isScrollControlled: true,
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(modelSheetRadius),
      ),
      builder: (context) {
        return AppBottomModelSheet(
            title: title,
            message: message,
            actions: actions,
            isCloseButton: isCloseButton
        );
      }
  );
}