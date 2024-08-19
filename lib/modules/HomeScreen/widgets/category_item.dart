import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/data/models/category.dart';
import 'package:shop_app/index.dart';
import 'package:shop_app/modules/HomeScreen/cubit/home_screen_cubit.dart';

class GategoryItem extends StatelessWidget {
  const GategoryItem({
    super.key,
    required this.item,
  });

  final Categories item;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // context.read<HomeScreenCubit>().getCategoryProduct(item);
      },
      child: Container(
        width: 60,
        height: 90,
        decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BlocBuilder<HomeScreenCubit, HomeScreenState>(
              builder: (context, state) {
                bool isSelected = state.selectedCategory == item.id;
                log(isSelected.toString());
                return Expanded(
                  child: Container(
                    height: 47,
                    width: 47,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                      border: isSelected
                          ? Border.all(
                              color: Constans.darkPurple,
                              width: 3,
                              strokeAlign: BorderSide.strokeAlignOutside,
                            )
                          : null,
                    ),
                    child: Image.network(
                      item.image ?? '',
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              item.title ?? '',
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
