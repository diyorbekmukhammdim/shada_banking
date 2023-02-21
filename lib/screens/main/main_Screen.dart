import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:shada_banking/screens/main/main_Page.dart';
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
    final background = const Color.fromARGB(255, 244, 244, 244);
    final iconsColor = const Color.fromARGB(255, 58, 172, 136);
    final notifyColor = const Color.fromARGB(255, 44, 127, 172);
    List pages = [
      MainPage(),
      PaymentPage(),


    ];
    void onTap(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
      body: pages[_selectedIndex],
      appBar: (_selectedIndex==1)?AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: iconsColor,
        ),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.all(10),
              child: Icon(
                Icons.notifications_none,
                color: notifyColor,
              )),
        ],
        title: CupertinoSearchTextField(
          suffixIcon: const Icon(Icons.search),
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.white,
          ),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
        ),
      ):AppBar(
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
        elevation: 1,
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
