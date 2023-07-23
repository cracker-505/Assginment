import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../UI Screen/Home_Screen.dart';

class Bottom_Nav extends StatefulWidget {
  const Bottom_Nav({Key? key}) : super(key: key);

  @override
  State<Bottom_Nav> createState() => _Bottom_NavState();
}

class _Bottom_NavState extends State<Bottom_Nav> {
  List pages = [ HomeScreen(),];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  pages[0],
        bottomNavigationBar: BottomNavigationBar(

          type: BottomNavigationBarType.fixed,

          selectedFontSize: 16,
          unselectedFontSize:16,
          backgroundColor: Colors.white,
          currentIndex: 0,
          selectedItemColor: Colors.grey.shade600,
          unselectedItemColor: Colors.grey.shade600,
          showSelectedLabels: true,
          showUnselectedLabels:true,
          selectedLabelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.house),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: FaIcon(FontAwesomeIcons.bookOpen),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(FontAwesomeIcons.boxesStacked),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.account_circle_rounded),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.account_circle_rounded),
            ),
          ],
        ),
    );
  }
}
