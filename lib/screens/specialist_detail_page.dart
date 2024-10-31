import 'package:flutter/material.dart';

class SpecialistDetailPage extends StatelessWidget {
  final String specialistName;

  const SpecialistDetailPage({Key? key, required this.specialistName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(specialistName),
      ),
      body: Center(
        child: Text(
          'Details about $specialistName',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
