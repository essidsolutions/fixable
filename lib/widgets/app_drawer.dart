import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/language_provider.dart';
import '../screens/settings_page.dart';

class AppDrawer extends StatelessWidget {
  final bool isLoggedIn;

  const AppDrawer({Key? key, required this.isLoggedIn}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final languageProvider = Provider.of<LanguageProvider>(context);

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(isLoggedIn ? "John Doe" : "Guest"),
            accountEmail:
                Text(isLoggedIn ? "johndoe@example.com" : "Please login"),
            currentAccountPicture: CircleAvatar(
              child: Icon(Icons.person, size: 40),
              backgroundColor: Colors.white,
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
            },
          ),
          if (!isLoggedIn) ...[
            ListTile(
              leading: Icon(Icons.login),
              title: Text("Login"),
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
            ListTile(
              leading: Icon(Icons.app_registration),
              title: Text("Register"),
              onTap: () {
                Navigator.pushNamed(context, '/register');
              },
            ),
          ] else
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {
                // Add your logout logic here
              },
            ),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text("Language",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          ListTile(
            title: DropdownButton<String>(
              value: languageProvider.currentLanguage,
              onChanged: (String? newValue) {
                if (newValue != null) {
                  languageProvider.switchLanguage(newValue);
                }
              },
              items: <String>['en', 'fr', 'es', 'pt']
                  .map<DropdownMenuItem<String>>((String language) {
                return DropdownMenuItem<String>(
                  value: language,
                  child: Text(
                    language == 'en'
                        ? 'English'
                        : language == 'fr'
                            ? 'French'
                            : language == 'es'
                                ? 'Spanish'
                                : 'Portuguese',
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
