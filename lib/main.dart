import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'app_style.dart';
import 'homescreen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedindex = 0;

  void onTap(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: kwhite,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: _selectedindex == 0
                    ? SvgPicture.asset(
                        'assets/search.svg',
                        width: 30,
                      )
                    : SvgPicture.asset('assets/home1.svg', width: 30),
                label: ''),
            BottomNavigationBarItem(
                icon: _selectedindex == 1
                    ? SvgPicture.asset('assets/search.svg')
                    : SvgPicture.asset('assets/share.svg'),
                label: ''),
            BottomNavigationBarItem(
                icon: _selectedindex == 2
                    ? SvgPicture.asset('assets/search.svg')
                    : SvgPicture.asset('assets/share.svg'),
                label: '')
          ],
          currentIndex: _selectedindex,
          onTap: onTap,
        ),
        backgroundColor: klighterwhite,
        body: HomeScreen(),
      ),
    );
  }
}
