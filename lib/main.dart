import 'package:flutter/material.dart';
import 'package:pizzaapp/Screens/home_page.dart';
import 'package:pizzaapp/Screens/storage/user_storage.dart';
import 'package:pizzaapp/Screens/widgets/drawer_screen.dart';

Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await UserPreferences.init();
  UserPreferences.printFunction();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizza App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: UserPreferences.isLoggedIn() ? MyHomePage() : DrawerScreen() ,
    );
  }
}