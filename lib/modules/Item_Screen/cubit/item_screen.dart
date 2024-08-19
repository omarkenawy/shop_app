import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/global/widgets/homeScreen_appBar.dart';
import 'package:shop_app/index.dart';
import 'package:shop_app/modules/HomeScreen/cubit/home_screen_cubit.dart';
import 'package:shop_app/modules/Item_Screen/widgets/one_item.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeScreen_AppBar(),
      body: BlocBuilder<HomeScreenCubit, HomeScreenState>(
          builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.selectedProduct != null) {
          return OneItem(item: state.selectedProduct!);
        }
        return const FlutterLogo();
      }),
    );
  }
}
