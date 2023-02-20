import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:shada_banking/screens/main/Build.dart';
import 'package:shada_banking/screens/main/homepage.dart';
import 'package:shada_banking/screens/main/main_Page.dart';
import 'package:shada_banking/screens/main/search.dart';
import 'package:shada_banking/screens/payment/payment_page.dart';
import 'package:shada_banking/widgets/main/keshbek_widget.dart';
import 'package:shada_banking/widgets/main/savepement.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List pages = [
      MainPage(),
      PaymentPage(),
      SeachsPage(),
      BuildPage(),
      HomePage(),
    ];
    void onTap(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
      body: pages[_selectedIndex],
      appBar: AppBar(
        backgroundColor: const Color(0xFFDFDFDF),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.green,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.doorbell_outlined,
                color: Colors.green,
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(

        selectedItemColor: Colors.green.shade500,
        selectedIconTheme:IconThemeData(color: Colors.green.shade500) ,
        unselectedLabelStyle: TextStyle(color: Colors.red,fontSize: 13),
        selectedLabelStyle: TextStyle(color: Colors.yellow),
        type: BottomNavigationBarType.fixed,
          unselectedIconTheme: IconThemeData(color: Colors.grey),
        elevation: 2,
        onTap: onTap,
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.black,

        backgroundColor: Color(0xFFDFDFDF),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',


          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',

          ),
        ],


      ),
    );
  }
}
