import 'package:flutter/material.dart';

class TabsHeader extends StatelessWidget {
  TabController tabController1;
  TabsHeader({required this.tabController1, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController1,
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
    );
  }
}


Widget tabsHeader(tabController){
  return TabBar(
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
  );
}