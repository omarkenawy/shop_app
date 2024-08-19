import 'package:flutter_svg/svg.dart';
import 'package:shop_app/index.dart';
import 'package:shop_app/modules/AddressScreen/widgets/address_item.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        tittle: 'Order Summary',
        showbBackButton: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Stack(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 150.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 20),
                      child: Row(
                        children: [
                          Icon(
                            Icons.shopping_cart_rounded,
                            color: Constans.termsColor,
                            size: 14,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            '1 item in cart',
                            style: TextStyle(
                                color: Constans.termsColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    //  Padding(
                    //   padding: EdgeInsets.fromLTRB(16, 0, 15, 30),
                    //   child: ProductItem(item: ,),
                    // ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Constans.termsColor,
                            size: 14,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Delivery Address',
                            style: TextStyle(
                                color: Constans.termsColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 20, 15, 30),
                          child: Address_Item(),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.wallet,
                            color: Constans.termsColor,
                            size: 14,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Payment Method',
                            style: TextStyle(
                                color: Constans.termsColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 20),
                      child: SizedBox(
                        height: 200,
                        width: double.maxFinite,
                        child: SvgPicture.asset(
                          'assets/svgs/basicCreditCard.svg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 20),
                      child: SizedBox(
                        height: 200,
                        width: double.maxFinite,
                        child: SvgPicture.asset(
                          'assets/svgs/basicCreditCard.svg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 640),
              child: Container(
                color: Colors.white,
                child: Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed("order track");
                          },
                          text: 'Place Your Order and Pay'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
