import 'package:shop_app/index.dart';
import 'package:shop_app/modules/AccountScreen/accountScreen.dart';
import 'package:shop_app/modules/BrowseScren/browseScreen.dart';
import 'package:shop_app/modules/HomeScreen/cubit/home-screen.dart';

/// Flutter code sample for [BottomNavigationBar].

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState extends State<MainScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    BrowseScreen(),
    MainScreen(),
    AccountScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        unselectedItemColor: const Color(0xff6C7C93),
        unselectedIconTheme: const IconThemeData(size: 40),
        iconSize: 40,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.layers),
            label: 'Browse',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xff734CC9),
        onTap: _onItemTapped,
      ),
    );
  }
}
