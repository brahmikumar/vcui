import 'package:flutter/material.dart';

class UIElements extends StatelessWidget {
  UIElements({Key? key}) : super(key: key);

  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  final List elements = [
    {
      "element" : "Button",
      "path" : "/buttonsDemo",
    },
    {
      "element" : "Labels",
      "path" : "/buttonsDemo",
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
              return Container(
                height: 50,
                color: Colors.amber[colorCodes[index]],
                child: Center(child: Text('${elements[index]["element"]}')),
              );
            },
            separatorBuilder: (BuildContext context, int index) => const Divider(),
          ),
        ],
      ),
    );
  }
}
