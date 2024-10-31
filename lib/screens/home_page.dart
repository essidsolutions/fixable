import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';
import 'detail_page.dart';
import 'add_project_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> items = List.generate(10, (index) => 'Item ${index + 1}');
  bool isLoggedIn = false; // Placeholder for authentication status

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid Navigation App'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Add your search functionality here
            },
          ),
        ],
      ),
      drawer: AppDrawer(isLoggedIn: isLoggedIn),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(itemName: items[index]),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  items[index],
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CreateProjectPage()),
          );
        },
        child: Icon(Icons.add),
        tooltip: 'Add Project',
      ),
    );
  }
}
