import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/global/widgets/homeScreen_appBar.dart';
import 'package:shop_app/index.dart';
import 'package:shop_app/modules/AccountScreen/accountScreen.dart';
import 'package:shop_app/modules/BottomNavi/bottomNavigation.dart';
import 'package:shop_app/modules/BrowseScren/browseScreen.dart';
import 'package:shop_app/modules/HomeScreen/cubit/home_screen_cubit.dart';
import 'package:shop_app/modules/HomeScreen/widgets/category_item.dart';
import 'package:shop_app/modules/HomeScreen/widgets/grid_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      appBar: const HomeScreen_AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 120,
            width: double.infinity,
            color: Constans.termsColor,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 4),
                  SizedBox(
                    height: 80,
                    child: BlocBuilder<HomeScreenCubit, HomeScreenState>(
                      builder: (context, state) {
                        if (state.isLoading == true) {
                          return const Center(
                              child: CircularProgressIndicator());
                        }
                        if (state.allCategories != null &&
                            state.allCategories!.isNotEmpty) {
                          return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            clipBehavior: Clip.none,
                            itemCount: 5,
                            itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GategoryItem(
                                item: state.allCategories![index],
                              ),
                            ),
                          );
                        }
                        return const Text("No Categories");
                      },
                    ),
                  ),
                  const SizedBox(height: 19),
                  const Text("Prodcuts"),
                  BlocBuilder<HomeScreenCubit, HomeScreenState>(
                      builder: (context, state) {
                    if (state.isLoading) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    if (state.allproducts == null) {
                      return const Text("No Products");
                    }
                    return Expanded(
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          mainAxisExtent: 200,
                        ),
                        itemCount: state.allproducts!.length,
                        padding: const EdgeInsets.all(8.0),
                        itemBuilder: (context, index) => GestureDetector(
                            onTap: () async {
                              await context
                                  .read<HomeScreenCubit>()
                                  .getSingleProduct(
                                      context, state.allproducts![index]);
                            },
                            child:
                                GridListItem(item: state.allproducts![index])),
                      ),
                    );
                  }),
                ],
              ),
            ),
          )
        ],
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
