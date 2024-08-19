import 'package:flutter_svg/svg.dart';
import 'package:shop_app/index.dart';
import 'package:shop_app/modules/Payment_Screen/cubit/Widgets/green_divider.dart';
import 'package:shop_app/modules/Payment_Screen/cubit/Widgets/grey_divider.dart';
import 'package:shop_app/modules/Payment_Screen/cubit/Widgets/second_green_divider.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        tittle: "Payment",
        showbBackButton: true,
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.grey.shade300),
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
                SvgPicture.asset("assets/svgs/location-pin-svgrepo-com.svg",
                    color: Colors.green),
                const Text(
                  "Address",
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.green),
                ),
                const SizedBox(
                  width: 3,
                ),
                const SecondGreenDivider(),
                SvgPicture.asset(
                  "assets/svgs/payment-svgrepo-com.svg",
                  color: Colors.grey.shade600,
                ),
                const Text("Payment",
                    style: TextStyle(fontWeight: FontWeight.w300)),
              ],
            ),
          ),
          const GreyDivider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 200,
              width: double.infinity,
              child: Image.asset(
                "assets/images/VisaCard.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
          CustomButton(
            onPressed: () {},
            text: "Add new card",
            color: Colors.grey.shade800,
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
                        Navigator.of(context).pushNamed("order track");
                      },
                      text: "Order Tracking")
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
