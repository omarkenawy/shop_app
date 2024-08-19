import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop_app/index.dart';
import 'package:shop_app/modules/AccountScreen/accountScreen.dart';
import 'package:shop_app/modules/AddressScreen/cubit/address_screen.dart';
import 'package:shop_app/modules/CartScreen/cubit/cart_Screen.dart';
import 'package:shop_app/modules/CategoryScreen/cubit/category_screen.dart';
import 'package:shop_app/modules/EmptyCart/cubit/empty_cart.dart';
import 'package:shop_app/modules/HomeScreen/cubit/home-screen.dart';
import 'package:shop_app/modules/HomeScreen/cubit/home_screen_cubit.dart';
import 'package:shop_app/modules/HomeScreen/widgets/bottom_navi.dart';
import 'package:shop_app/modules/Item_Screen/cubit/item_screen.dart';
import 'package:shop_app/modules/Order_Track/cubit/order_track.dart';
import 'package:shop_app/modules/Payment_Screen/cubit/payment_screen.dart';
import 'package:shop_app/modules/SignIn/cubit/sign_in_screen.dart';
// import 'package:shop_app/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  log(prefs.getString('token').toString());

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomeScreenCubit()),
      ],
      child: MaterialApp(
        title: 'Shop App',
        scaffoldMessengerKey: scaffoldMessenger,
        theme: theme(),
        debugShowCheckedModeBanner: false,
        initialRoute: 'sign In',
        routes: {
          'sign Up': (context) => const SignUpScreen(),
          'sign In': (context) => const SignInScreen(),
          'Home Screen': (context) => const HomeScreen(),
          'bottom': (context) => const BottomNavigation(),
          'category_screen': (context) => const CategoryScreen(),
          'item Screen': (context) => const ItemScreen(),
          'Empty_cart_Screen': (context) => const EmptyCart(),
          'main_cart_Screen': (context) => const MainCartScreen(),
          'Address Screen': (context) => const AddressScreen(),
          'Payment Screen': (context) => const PaymentScreen(),
          'order track': (context) => const OrderTrack(),
          'Bottom Navigation': (context) => const BottomNavigation(),
          'Account Screen': (context) => const AccountScreen(),
        },
      ),
    ),
  );
}

GlobalKey<ScaffoldMessengerState> scaffoldMessenger =
    GlobalKey<ScaffoldMessengerState>();

showToast(String msg) {
  scaffoldMessenger.currentState?.showSnackBar(SnackBar(content: Text(msg)));
}
