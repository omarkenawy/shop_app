import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'payment_screen_state.dart';

class PaymentScreenCubit extends Cubit<PaymentScreenState> {
  PaymentScreenCubit() : super(PaymentScreenInitial());
}
