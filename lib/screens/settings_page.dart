import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _notificationsEnabled = false;
  double _fontSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Settings",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            SwitchListTile(
              title: Text("Enable Notifications"),
              value: _notificationsEnabled,
              onChanged: (bool value) {
                setState(() {
                  _notificationsEnabled = value;
                });
              },
            ),
            SizedBox(height: 20),
            Text("Font Size"),
            Slider(
              value: _fontSize,
              min: 10.0,
              max: 30.0,
              divisions: 20,
              label: _fontSize.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _fontSize = value;
                });
              },
            ),
            Text(
              "Preview Text",
              style: TextStyle(fontSize: _fontSize),
            ),
          ],
        ),
      ),
    );
  }
}
