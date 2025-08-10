import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:new_project/firebase_file/auth_email_pass.dart';
import 'package:new_project/firebase_options.dart';
import 'package:new_project/widgets/textbtn_elevatedbtn.dart';
import 'package:new_project/widgets/container.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dropdown Example',
      home: Profile_card(),
    );
  }
}
