import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class Usage extends StatelessWidget {
  static const routeName = "/usage";
  String title;
  String usage;
  Usage({required this.title, required this.usage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Html(
                data: usage
              ),
            ],
          ),
        ),
      ),
    );
  }
}
