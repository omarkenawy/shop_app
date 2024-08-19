import 'package:flutter_svg/svg.dart';
import 'package:shop_app/data/models/product.dart';
import 'package:shop_app/index.dart';

class OneItem extends StatelessWidget {
  const OneItem({super.key, required this.item});

  final Product item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(color: Constans.termsColor, offset: const Offset(4, 4))
          ]),
          height: 230,
          width: double.infinity,
          child: Image.network(
            item.description ?? '',
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 28,
                width: 70,
                color: Constans.darkPurple,
                child: Center(
                  child: Text(
                    "${item.price}% OFF",
                    style: const TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ),
            ),
            Container(
              height: 28,
              color: Colors.grey,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    child: Container(
                      color: Colors.white,
                      height: 28,
                      width: 30,
                      child: SvgPicture.asset(
                        "assets/svgs/star-shine-svgrepo-com (1).svg",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Container(
                    color: Constans.termsColor,
                    width: 60,
                    child: const Center(child: Text("Rating")),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    child: SvgPicture.asset(
                      "assets/svgs/heart-svgrepo-com.svg",
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(item.name ?? ''),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
            'Cabbage is generally grown for its densely leaved heads, produced during the first year of its biennial cycle...'),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                onPressed: () {},
                text: "Add to cart",
                color: Constans.darkPurple,
              ),
            ],
          ),
        )
      ],
    );
  }
}
