import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/index.dart';
import 'package:shop_app/modules/AddressScreen/widgets/address_item.dart';
import 'package:shop_app/modules/Payment_Screen/cubit/Widgets/green_divider.dart';
import 'package:shop_app/modules/Payment_Screen/cubit/Widgets/grey_divider.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        tittle: "Delivery address",
        showbBackButton: true,
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/svgs/cart-large-2-svgrepo-com.svg",
                  color: Colors.green,
                ),
                const Text(
                  "Cart",
                  style: TextStyle(color: Colors.green),
                ),
                const SizedBox(
                  width: 3,
                ),
                const Green_Divider(),
                SvgPicture.asset("assets/svgs/location-pin-svgrepo-com.svg"),
                const Text(
                  "Address",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  width: 3,
                ),
                const Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 4,
                    endIndent: 20,
                    indent: 9,
                  ),
                ),
                SvgPicture.asset(
                  "assets/svgs/payment-svgrepo-com.svg",
                  color: Colors.grey.shade600,
                ),
                const Text("Payment",
                    style: TextStyle(fontWeight: FontWeight.w300))
              ],
            ),
          ),
          const GreyDivider(),
          const SizedBox(height: 6),
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return const Address_Item();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: CustomButton(
                    onPressed: () {},
                    text: "Add New Address",
                    color: Colors.grey.shade800,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text("Delivery"),
                      Text("${1.99}"),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text("Savings"),
                      Text("${1.99}"),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text("Total"),
                      Text("${1.99}"),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  CustomButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("Payment Screen");
                      },
                      text: "Add Payment")
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
