import 'package:flutter/material.dart';
import 'package:vcui/vui/ui_components/buttons.dart';

class ConfirmBottomModelSheet extends StatefulWidget {
  String? title;
  String? message;
  List? action;
  final ValueChanged<bool>? onConfirmChanged;
  ConfirmBottomModelSheet({Key? key, this.title, this.message, this.action, this.onConfirmChanged}) : super(key: key);

  @override
  _ConfirmBottomModelSheetState createState() => _ConfirmBottomModelSheetState();
}

class _ConfirmBottomModelSheetState extends State<ConfirmBottomModelSheet> {

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
                    Text("${widget.title}", style: Theme.of(context).textTheme.headline1),
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
                child: Text("${widget.message}"),
              ),
              const Divider(),

              const SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: outlinedButton(
                        widget.action![1],
                        (){
                          widget.onConfirmChanged!(false);
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child:Center(
                      child: button(
                        widget.action![0],
                        (){
                          widget.onConfirmChanged!(true);
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
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