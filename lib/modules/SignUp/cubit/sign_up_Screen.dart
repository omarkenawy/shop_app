import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/index.dart';
import 'package:shop_app/modules/SignUp/cubit/sign_up_cubit.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignUpCubit>(
      create: (context) => SignUpCubit(),
      child: BlocBuilder<SignUpCubit, SignUpState>(
        builder: (context, state) => Scaffold(
          appBar: const CustomAppBar(
            showbBackButton: true,
            tittle: "Create Account",
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Center(
                    child: Text(
                  "Free Shipping + flat discounts on your first order",
                  style: TextStyle(fontFamily: Constans.mainFont),
                )),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Form(
                    key: context.read<SignUpCubit>().formkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Your Name",
                          textAlign: TextAlign.start,
                        ),
                        CustomTextFormField(
                          hintText: "Name",
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Reqired';
                            }
                            if (value.length < 5) {
                              return 'Name must be more then 5 chartahers';
                            }
                            return null;
                          },
                          onSave: (newValue) =>
                              context.read<SignUpCubit>().user!.name = newValue,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text("Email Address"),
                        CustomTextFormField(
                          hintText: "Email",
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Reqired';
                            }
                            return null;
                          },
                          onSave: (newValue) => context
                              .read<SignUpCubit>()
                              .user!
                              .email = newValue,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text("Password"),
                        CustomTextFormField(
                          hintText: "Password",
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Reqired';
                            }
                            return null;
                          },
                          onSave: (newValue) =>
                              context.read<SignUpCubit>().Password = newValue,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: CustomButton(
                            onPressed: () {
                              context
                                  .read<SignUpCubit>()
                                  .createUserWithEmailAndPassword(context);
                              Navigator.of(context).pushNamed("Home Screen");
                            },
                            text: "Create Account",
                            color: Constans.darkPurple,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          indent: 70,
                          endIndent: 70,
                          color: Colors.grey,
                        ),
                        Center(
                            child: Text(
                          "Our Terms of Use & Privacy Policy.",
                          style: TextStyle(color: Constans.termsColor),
                        ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
