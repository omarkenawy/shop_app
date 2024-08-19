import 'dart:developer';

import 'package:shop_app/data/models/user.dart';
import 'package:shop_app/data/userRepo.dart';
import 'package:shop_app/index.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(const SignUpState());

  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String? Password;
  User? user;

  void createUserWithEmailAndPassword(BuildContext context) async {
    emit(state.copyWith(isLoading: true));
    if (formkey.currentState?.validate() == false) {
      return log("error");
    }
    user = User();
    formkey.currentState!.save();
    log(user!.email.toString());
    log(Password.toString());

    try {
      final newAccount = await UserRepo.register(user!, Password!);
    } catch (e) {
      emit(state.copyWith(error: e.toString()));
      log(e.toString());
      emit(state.copyWith(isLoading: false));
    } //API
    // try {
    //   final newAccount = await FirebaseAuth.instance
    //       .createUserWithEmailAndPassword(
    //           email: user!.email!, password: Password!);
    //   if (newAccount.user?.uid != null) {
    //     log(newAccount.user!.uid.toString());
    //   }
    // } catch (e) {
    //   emit(state.copyWith(error: e.toString()));
    //   log(e.toString());
    // }                                       //FireBase
  }

  // Future<void> saveUserData(User user) async {
  //   final usersCollection = FirebaseFirestore.instance.collection('users');

  //   final userProfile = usersCollection.doc(user.uid);
  //   await userProfile.set(user.toJson());
  //   // await userProfile.update({"name": 'ALi'});
  //   // await userProfile.delete();
  //   // final response = await usersCollection.add(user.toJson());
  // }
}
