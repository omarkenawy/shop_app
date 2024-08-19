part of 'item_screen_cubit.dart';

@immutable
class ItemScreenState {
  final bool isLoading;
  final String? error;

  const ItemScreenState({this.isLoading = false, this.error});
  ItemScreenState copyWith({
    bool? isLoading,
    String? error,
  }) {
    return ItemScreenState(
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}
