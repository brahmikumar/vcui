import 'package:flutter/material.dart';

class UIElements extends StatelessWidget {
  UIElements({Key? key}) : super(key: key);

  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  final List elements = [
    {
      "element" : "Buttons",
      "path" : "/buttonsDemo",
    },
    {
      "element" : "Labels",
      "path" : "/labelsDemo",
    },
    {
      "element" : "Toast Messages / Snackbar Messages",
      "path" : "/toastMessagesDemo",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: elements.length,
            shrinkWrap: true,
            primary: false,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: (){
                  Navigator.pushNamed(context, elements[index]["path"]);
                },
                child: ListTile(
                  leading: const Icon(Icons.ac_unit_outlined),
                  title: Text('${elements[index]["element"]}'),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) => const Divider(),
          ),
        ],
      ),
    );
  }
}
