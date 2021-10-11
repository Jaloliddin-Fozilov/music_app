import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './widgets/UI/home_page.dart';
import './widgets/UI/player_page.dart';
import './widgets/models/list_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();

  List<ListModeli> royxatlar = ListData().royxat;
}

class _MyAppState extends State<MyApp> {
  void showPlayerPage(BuildContext context, int id) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (ctx) {
        return PlayerPage(widget.royxatlar, id);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.raleway().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(showPlayerPage, widget.royxatlar),
    );
  }
}
