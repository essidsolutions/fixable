import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/language_provider.dart';
import 'screens/home_page.dart';
import 'screens/login_page.dart';
import 'screens/register_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LanguageProvider(),
      child: Consumer<LanguageProvider>(
        builder: (context, languageProvider, child) {
          return MaterialApp(
            title: 'Grid Navigation App',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            locale: Locale(languageProvider.currentLanguage),
            home: HomePage(),
            routes: {
              '/login': (context) => LoginPage(),
              '/register': (context) => RegisterPage(),
            },
          );
        },
      ),
    );
  }
}
