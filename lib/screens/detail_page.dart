import 'package:flutter/material.dart';
import '../widgets/specialists_tab.dart';
import '../widgets/requests_tab.dart';

class DetailPage extends StatelessWidget {
  final String itemName;

  const DetailPage({Key? key, required this.itemName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(itemName),
          bottom: TabBar(
            tabs: [
              Tab(text: "Specialists"),
              Tab(text: "Requests"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SpecialistsTab(),
            RequestsTab(),
          ],
        ),
      ),
    );
  }
}
