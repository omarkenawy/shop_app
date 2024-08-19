import 'package:shop_app/data/models/product.dart';
import 'package:shop_app/index.dart';

class GridListItem extends StatelessWidget {
  const GridListItem({
    super.key,
    required this.item,
  });
  final Product item;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: Constans.termsColor, borderRadius: BorderRadius.circular(6)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Stack(
              children: [
                Image.network(
                  item.image ?? '',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    color: Constans.darkPurple,
                    child: Text(
                      "${item.price}% OFF",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: Constans.mainFont,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item.name ?? "",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: Constans.mainFont,
                      fontSize: 12,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '\$${item.price}',
                        style: TextStyle(
                            color: Colors.black, fontFamily: Constans.mainFont),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.shopping_cart_checkout,
                          color: Constans.darkPurple,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
