import 'package:flutter/material.dart';
import 'package:moove/Screens/cart.dart';
import 'package:moove/Screens/home.dart';
import 'package:moove/shared/constant.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {

    final List<Widget> _widgetpages = [
    const Home(), const Cart()
  ];


  int _selectedIndex = 0;

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _widgetpages.elementAt(_selectedIndex)),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: background,
        elevation: 0.0,
        showSelectedLabels: true,
        iconSize: 26,
        selectedItemColor: primarycolor100,
        unselectedItemColor: textColor20,
        selectedLabelStyle: const TextStyle(
          fontFamily: 'Mabry-Pro',
          fontSize: 12,
        ),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            label: '',
            icon: ImageIcon(
              AssetImage('assets/images/homeicon.png'),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: ImageIcon(AssetImage('assets/images/carticon.png')),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}
