import 'package:shop_app/data/models/product.dart';
import 'package:shop_app/index.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.item,
  });

  final Product item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            SizedBox(
              height: 100,
              width: (MediaQuery.of(context).size.width - 32) * 0.35,
              child: Image.asset("assets/images/product_image.jpg"),
            ),
            Expanded(
              child: Container(
                color: Colors.grey.shade300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text(item.name ?? ''),
                        const SizedBox(
                          height: 7,
                        ),
                        const Text("250 g"),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(item.price ?? ''),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 130,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(Icons.add),
                        SizedBox(
                          height: 6,
                        ),
                        Icon(Icons.remove),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
