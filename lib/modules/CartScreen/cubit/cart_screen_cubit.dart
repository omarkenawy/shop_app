import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shop_app/data/models/product.dart';
import 'package:shop_app/data/product_repo.dart';

part 'cart_screen_state.dart';

class CartScreenCubit extends Cubit<CartScreenState> {
  CartScreenCubit() : super(const CartScreenState()) {
    getAllCart();
  }

  Future getAllCart() async {
    emit(state.copyWith(isLoading: true));
    final allCartResponse = await ProductReopistory.getAllCarts();
    if (allCartResponse != null) {
      log(allCartResponse.length.toString());
      emit(state.copyWith(allcarts: allCartResponse, isLoading: false));
    }
  }
}
