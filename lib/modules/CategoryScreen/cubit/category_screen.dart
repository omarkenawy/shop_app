import 'package:flutter/material.dart';
import 'package:shop_app/global/widgets/custom_appBar.dart';
import 'package:shop_app/global/widgets/homeScreen_appBar.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeScreen_AppBar(),
      body: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
