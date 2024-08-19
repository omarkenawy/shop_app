import 'package:shop_app/data/base_request.dart';
import 'package:shop_app/data/models/category.dart';
import 'package:shop_app/data/models/product.dart';
import 'package:shop_app/index.dart';

class ProductReopistory {
  static Future<List<Product>?> getAllProducts() async {
    final response = await BaseRequest.dynamicRequest(
      path: ApiPaths.allProductPath,
    );
    if (response == null || response is! List) return null;
    return response.map((e) => Product.fromJson(e)).toList();
  }

  static Future<List<Categories>?> getAllCategories() async {
    final response =
        await BaseRequest.dynamicRequest(path: ApiPaths.AllCategories);
    if (response == null || response is! List) return null;
    return response.map((e) => Categories.fromJson(e)).toList();
  }

  static Future<List<Product>?> getCategoryProducts(String id) async {
    final response = await BaseRequest.dynamicRequest(
      path: '${ApiPaths.AllCategories}/$id/${ApiPaths.AllCategories}',
    );

    if (response == null || response is! List) return null;

    return response.map((e) => Product.fromJson(e)).toList();
  }

  static Future<Product?> getSingleProduct(String id) async {
    final response =
        await BaseRequest.dynamicRequest(path: ApiPaths.singleProduct);

    if (response == null) return null;
    if (response is! Map<String, dynamic>) return null;

    return Product.fromJson(response);
  }

  static Future<List<Product>?> getAllCarts() async {
    final response = await BaseRequest.dynamicRequest(path: ApiPaths.allCarts);
    if (response == null) return null;
    if (response['cart']['products'] is! List) return null;
    return (response['cart']['products'] as List)
        .map((e) => Product.fromJson(e))
        .toList();
  }
}
