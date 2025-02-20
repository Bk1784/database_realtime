import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:orat_arit/screens/real_time_database.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp();
  } catch (e) {
    print('Error initializing Firebase: $e');
  }
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Player App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RealTimeDatabase(),
    );
  }
}
