import 'package:flutter/material.dart';
import 'package:shop_app/index.dart';

class HomeScreen_AppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeScreen_AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        titleSpacing: 0,
        leadingWidth: 0,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 40,
            width: double.infinity,
            child: TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  hintText: "Search",
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(
                    Icons.camera_alt_outlined,
                    color: Constans.termsColor,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Constans.termsColor,
                  )),
            ),
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, 60);
}
