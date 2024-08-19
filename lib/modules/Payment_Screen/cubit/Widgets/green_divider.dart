import 'package:shop_app/index.dart';

class Green_Divider extends StatelessWidget {
  const Green_Divider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Divider(
        color: Colors.green,
        thickness: 4,
        endIndent: 10,
        indent: 3,
      ),
    );
  }
}
