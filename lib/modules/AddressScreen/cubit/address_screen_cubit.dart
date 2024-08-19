import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'address_screen_state.dart';

class AddressScreenCubit extends Cubit<AddressScreenState> {
  AddressScreenCubit() : super(AddressScreenInitial());
}
