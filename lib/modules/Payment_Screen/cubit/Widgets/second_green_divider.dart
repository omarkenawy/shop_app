import 'package:shop_app/index.dart';

class SecondGreenDivider extends StatelessWidget {
  const SecondGreenDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Divider(
        color: Colors.green,
        thickness: 4,
        endIndent: 20,
        indent: 9,
      ),
    );
  }
}
