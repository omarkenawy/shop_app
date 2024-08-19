import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'empty_cart_state.dart';

class EmptyCartCubit extends Cubit<EmptyCartState> {
  EmptyCartCubit() : super(EmptyCartInitial());
}
