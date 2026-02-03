import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:new_project/Review/review3.dart' show Review3;
import 'package:new_project/firebase_file/auth_email_pass.dart';
import 'package:new_project/firebase_options.dart';
import 'package:new_project/widgets/day19ui.dart';
import 'package:new_project/widgets/drawer_circleavator.dart';
import 'package:new_project/widgets/expanded_flexible.dart';
import 'package:new_project/widgets/forms.dart';
import 'package:new_project/widgets/gridview_count_extent_builder.dart';
import 'package:new_project/widgets/richtext.dart';
import 'package:new_project/widgets/row_column_wrap.dart';
import 'package:new_project/widgets/stack_positioned.dart';
import 'package:new_project/widgets/textbtn_elevatedbtn_expanded.dart';
import 'package:new_project/widgets/container.dart';
import 'package:new_project/widgets/rcw_btn_listview_card.dart';
import 'package:new_project/widgets/richtext.dart';
import 'package:new_project/widgets/tabbar.dart';
import 'package:new_project/widgets/dismissible_snackbar.dart';
import 'package:new_project/Review/review1.dart';

import 'Review/review2.dart';
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
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.deepPurple
      ),
      debugShowCheckedModeBanner: false,
      title: 'Dropdown Example',
      home: Drawer_CircleAvator(),
    );
  }
}
