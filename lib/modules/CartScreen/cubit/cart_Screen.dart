import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/global/widgets/homeScreen_appBar.dart';
import 'package:shop_app/index.dart';
import 'package:shop_app/modules/CartScreen/cubit/cart_screen_cubit.dart';
import 'package:shop_app/modules/CartScreen/widgets/product_item.dart';
import 'package:shop_app/modules/HomeScreen/widgets/bottom_navi.dart';

class MainCartScreen extends StatefulWidget {
  const MainCartScreen({super.key});

  @override
  State<MainCartScreen> createState() => _MainCartScreenState();
}

class _MainCartScreenState extends State<MainCartScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CartScreenCubit>(
      create: (context) => CartScreenCubit(),
      child: Scaffold(
        appBar: const HomeScreen_AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("3 items in the cart"),
            const SizedBox(
              height: 8,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 6,
                            color: Colors.grey,
                            offset: Offset(3, 6))
                      ]),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                          "assets/svgs/location-pin-svgrepo-com.svg"),
                      const Text("1.3 KM")
                    ],
                  ),
                ), //destination
                const SizedBox(
                  width: 7,
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 6,
                            color: Colors.grey,
                            offset: Offset(3, 6))
                      ]),
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/svgs/clock-two-svgrepo-com.svg"),
                      const SizedBox(
                        width: 7,
                      ),
                      const Text("15-20 MINS")
                    ],
                  ),
                ),
                const SizedBox(
                  width: 7,
                ), //time
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 6,
                            color: Colors.grey,
                            offset: Offset(3, 6))
                      ]),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/svgs/star-shine-svgrepo-com (1).svg",
                        color: Colors.orange,
                      ),
                      const Text("4.6 (2.333)")
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            BlocBuilder<CartScreenCubit, CartScreenState>(
                builder: (context, state) {
              if (state.isLoading == true) {
                return const Center(child: CircularProgressIndicator());
              }
              if (state.allcarts == null || state.allcarts!.isEmpty) {
                return const Text("No data");
              }
              return Expanded(
                child: ListView.builder(itemBuilder: (context, index) {
                  return ProductItem(
                    item: state.allcarts![index],
                  );
                }),
              );
            }),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 40,
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(color: Colors.white),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text("Delivery"),
                            Text("${1.99}"),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                          child: Divider(
                            color: Colors.black,
                            thickness: 2,
                          ),
                        ),
                        Column(
                          children: [
                            Text("Delivery"),
                            Text("${1.99}"),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                          child: Divider(
                            color: Colors.black,
                            thickness: 2,
                          ),
                        ),
                        Column(
                          children: [
                            Text("Delivery"),
                            Text("${1.99}"),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  CustomButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("Address Screen");
                    },
                    text: "Proceed checkout",
                    color: Constans.darkPurple,
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: const BottomNavigation(),
      ),
    );
  }
}
