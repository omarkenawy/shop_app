import 'dart:developer';

import 'package:shop_app/data/models/category.dart';
import 'package:shop_app/data/models/product.dart';
import 'package:shop_app/data/product_repo.dart';
import 'package:shop_app/index.dart';

part 'home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  HomeScreenCubit() : super(HomeScreenState()) {
    Future.wait([
      getAllProducts(),
      getAllCategories(),
    ]).then((value) {
      emit(state.copyWith(isLoading: false));
    });
  }

  Future getAllProducts() async {
    emit(state.copyWith(isLoading: true));
    final allProductResponse = await ProductReopistory.getAllProducts();
    if (allProductResponse != null) {
      log(allProductResponse.length.toString());
      emit(state.copyWith(allproducts: allProductResponse, isLoading: false));
    }
  }

  Future getAllCategories() async {
    emit(state.copyWith(isLoading: true));
    final allCategoriesResponse = await ProductReopistory.getAllCategories();
    if (allCategoriesResponse != null) {
      log(allCategoriesResponse.length.toString());
      emit(state.copyWith(
          allCategories: allCategoriesResponse, isLoading: false));
    }
  }

  void getCategoryProduct(Categories selected) async {
    if (selected.id == state.selectedCategory) {
      final newState = state.copyWith(selectedCategory: 0);
      newState.categoryProducts = null;
      emit(newState);
      return;
    }
    emit(state.copyWith(isLoading: true));
    final categoriesProdResponse =
        await ProductReopistory.getCategoryProducts(selected.id.toString());
    if (categoriesProdResponse != null) {
      emit(state.copyWith(
          categoryProducts: categoriesProdResponse,
          isLoading: false,
          selectedCategory: selected.id));
    }
  }

  Future getSingleProduct(BuildContext context, Product selected) async {
    final newState = state.copyWith();
    newState.selectedProduct = null;
    emit(newState);

    emit(state.copyWith(selectedProduct: selected));

    Navigator.of(context).pushNamed("item Screen");
  }
}
