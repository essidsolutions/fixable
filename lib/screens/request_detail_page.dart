import 'package:flutter/material.dart';

class RequestDetailPage extends StatelessWidget {
  final String requestName;

  const RequestDetailPage({Key? key, required this.requestName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(requestName),
      ),
      body: Center(
        child: Text(
          'Details about $requestName',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
