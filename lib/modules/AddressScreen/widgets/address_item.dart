import 'package:flutter_svg/svg.dart';
import 'package:shop_app/index.dart';
import 'package:shop_app/modules/AddressScreen/widgets/checkBox.dart';

class Address_Item extends StatelessWidget {
  const Address_Item({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20)),
            height: 150,
            child: Row(
              children: [
                const CheckboxExample(),
                const SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Omar Kenawy"),
                    const SizedBox(
                      height: 6,
                    ),
                    const Text("2956 Landing Lange APT 4"),
                    const SizedBox(
                      height: 6,
                    ),
                    const Text("Louisville, KY 40018-1234"),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/svgs/location-pin-svgrepo-com.svg",
                          color: Colors.green,
                        ),
                        const Text(
                          "1.3 KM",
                          style: TextStyle(color: Colors.green),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset(
                            "assets/svgs/clock-two-svgrepo-com.svg"),
                        const SizedBox(
                          width: 7,
                        ),
                        const Text(
                          "15-20 MINS",
                          style: TextStyle(fontWeight: FontWeight.w200),
                        )
                      ],
                    )
                  ],
                ),
                const Expanded(child: Icon(Icons.edit)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
