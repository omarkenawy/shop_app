import 'package:flutter/material.dart';
import 'package:shop_app/global/widgets/homeScreen_appBar.dart';
import 'package:shop_app/modules/HomeScreen/widgets/bottom_navi.dart';

const cartImg =
    "https://s3-alpha-sig.figma.com/img/c2eb/3ed4/15d59fc9404c1fac7b40044ec2c8236d?Expires=1710720000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=X~g4yIAYdyOfn07tr~QAZOb-cm3VnR6J4PP8DDj26RQZ3yEDZLV1Bq5ko2WCD0SsHPszlZE-pfNZodlUxKyliYpzyky7FRd~TrT6w8TUEB1~wbvYU2kxu-jaAnEbsyfO2jeOe4G4ES~7lm8aBvWFCjSLhO2WxppBEz6ybLxMt6Hoc00SsKzXG41HdpVuZIrEGBSYdE6zuR9uCJi4yz-uQM~WLbNOYqFeJCMUsdXzc2UN4n94ez6999SpNTIkb7zV4Z8id8AMPfb9fZZiCp4I-4RNyZZ7aLNzIAa7Qu5CDC2xVoWg3XkYsqmPpZ0lT8HVo60c7S3KD14joaJyxHmUtw__";

class EmptyCart extends StatefulWidget {
  const EmptyCart({super.key});

  @override
  State<EmptyCart> createState() => _EmptyCartState();
}

class _EmptyCartState extends State<EmptyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeScreen_AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
              child: Text("Your cart is empty! Lets shop some veggies.")),
          const SizedBox(
            height: 10,
          ),
          Image.network(
            cartImg,
            width: 100,
            height: 100,
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
