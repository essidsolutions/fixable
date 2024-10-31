import 'package:flutter/material.dart';
import '../screens/request_detail_page.dart';

class RequestsTab extends StatelessWidget {
  final List<String> requests = [
    "Request for Service 1",
    "Request for Service 2",
    "Request for Service 3",
    "Request for Service 4",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: requests.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.request_page),
          title: Text(requests[index]),
          subtitle: Text("Details about the requested service"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    RequestDetailPage(requestName: requests[index]),
              ),
            );
          },
        );
      },
    );
  }
}
