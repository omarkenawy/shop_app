part of 'home_screen_cubit.dart';

@immutable
class HomeScreenState {
  final bool isLoading;
  final String? error;
  final List<Product>? allproducts;
  final List<Categories>? allCategories;
  final int? selectedCategory;
  List<Product>? categoryProducts;
  Product? selectedProduct;

  HomeScreenState({
    this.isLoading = false,
    this.error,
    this.allproducts,
    this.allCategories,
    this.selectedCategory,
    this.selectedProduct,
    this.categoryProducts,
  });
  HomeScreenState copyWith({
    bool? isLoading,
    String? error,
    List<Product>? allproducts,
    List<Categories>? allCategories,
    int? selectedCategory,
    List<Product>? categoryProducts,
    Product? selectedProduct,
  }) {
    return HomeScreenState(
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      allproducts: allproducts ?? this.allproducts,
      allCategories: allCategories ?? this.allCategories,
      selectedCategory: selectedCategory ?? this.selectedCategory,
      categoryProducts: categoryProducts ?? this.categoryProducts,
      selectedProduct: selectedProduct ?? this.selectedProduct,
    );
  }
}
