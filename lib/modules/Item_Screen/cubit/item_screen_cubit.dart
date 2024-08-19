import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'item_screen_state.dart';

class ItemScreenCubit extends Cubit<ItemScreenState> {
  ItemScreenCubit() : super(const ItemScreenState());
}
