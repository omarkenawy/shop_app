import 'package:shop_app/index.dart';

class GreyDivider extends StatefulWidget {
  const GreyDivider({super.key});

  @override
  State<GreyDivider> createState() => _GreyDividerState();
}

class _GreyDividerState extends State<GreyDivider> {
  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Colors.grey,
      thickness: 2,
    );
  }
}
