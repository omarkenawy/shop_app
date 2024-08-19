part of 'cart_screen_cubit.dart';

@immutable
class CartScreenState {
  final bool isLoading;
  final String? error;
  final List<Product>? allcarts;

  const CartScreenState({this.isLoading = false, this.error, this.allcarts});
  CartScreenState copyWith({
    bool? isLoading,
    String? error,
    List<Product>? allcarts,
  }) {
    return CartScreenState(
        isLoading: isLoading ?? this.isLoading,
        error: error ?? this.error,
        allcarts: allcarts ?? allcarts);
  }
}
