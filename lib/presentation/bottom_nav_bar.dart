import 'package:carfix_app/presentation/home/home_screen.dart';
import 'package:carfix_app/presentation/mechanics/mechanics_screen.dart';
import 'package:carfix_app/presentation/profile/profile_screen.dart';
import 'package:carfix_app/utils/extensions.dart';
import 'package:carfix_app/utils/uikit/carfix_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  static const String tag = '/bottom-nav-bar';

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  final _pageController = PageController();

  void _onItemTapped(int index) async {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomeScreen(),
          MechanicsScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: PopScope(
        canPop: false,
        onPopInvokedWithResult: (_, __) {
          if (_selectedIndex == 0) {
            SystemNavigator.pop();
          } else {
            _onItemTapped(0);
          }
        },
        child: BottomNavigationBar(
          elevation: 0,
          onTap: (index) => _onItemTapped(index),
          selectedFontSize: 0,
          unselectedFontSize: 0,
          backgroundColor: context.colorScheme.primary,
          iconSize: 48,
          items: [
            BottomNavigationBarItem(
              icon: NavBarItem(
                image: Icons.home,
                selected: _selectedIndex == 0,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: NavBarItem(
                image: Icons.car_repair,
                selected: _selectedIndex == 1,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: NavBarItem(
                image: Icons.person,
                selected: _selectedIndex == 2,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  const NavBarItem({
    super.key,
    required this.image,
    required this.selected,
  });

  final IconData image;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Icon(
      image,
      color: selected ? CarfixColors.primary : CarfixColors.white,
      size: 24,
    );
  }
}
