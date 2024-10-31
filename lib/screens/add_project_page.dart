import 'package:flutter/material.dart';

class CreateProjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Project'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Project Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Category',
                border: OutlineInputBorder(),
              ),
              items: ['Category 1', 'Category 2', 'Category 3']
                  .map((category) => DropdownMenuItem(
                        value: category,
                        child: Text(category),
                      ))
                  .toList(),
              onChanged: (value) {},
            ),
            SizedBox(height: 20),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Subcategory',
                border: OutlineInputBorder(),
              ),
              items: ['Subcategory 1', 'Subcategory 2', 'Subcategory 3']
                  .map((subcategory) => DropdownMenuItem(
                        value: subcategory,
                        child: Text(subcategory),
                      ))
                  .toList(),
              onChanged: (value) {},
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement the logic to save or create the project
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Project Created!')),
                );
                Navigator.pop(context); // Go back after creating the project
              },
              child: Text('Save Project'),
            ),
          ],
        ),
      ),
    );
  }
}
