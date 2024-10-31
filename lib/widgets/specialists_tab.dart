import 'package:flutter/material.dart';
import '../screens/specialist_detail_page.dart';

class SpecialistsTab extends StatelessWidget {
  final List<String> specialists = [
    "Company A",
    "Company B",
    "Company C",
    "Company D",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: specialists.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.business),
          title: Text(specialists[index]),
          subtitle: Text("Offering specialized services"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    SpecialistDetailPage(specialistName: specialists[index]),
              ),
            );
          },
        );
      },
    );
  }
}
