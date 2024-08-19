import 'package:shop_app/index.dart';

// const imgSignIp =
//     "https://s3-alpha-sig.figma.com/img/5955/14e7/69a760c10aa28780bc734fbe3998bf8a?Expires=1710115200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ELpb8DSoWufifw1rEOv2mi-jDfYuE~4sVPpxB2uRLdLRm4tMzhvAjZFLaUWHWhV~cNOkQDMPcEZcAWUdwwhWlbALuFqO2f0DYJjWZx9CKNI~RrK1hMnMgbqIHQTANlFHIDUEVnr7z0A5nB0pTQf1Lnxwe4OIwFXhRKS-5wtNq~~q5rDR3VhEHmJLgkQVQq3obqVBbkxTAxZF0eGi2KZjJZpPrEPqUQarvn14gC5BBjWbBllKHVgQig5--HfMa6EgMycWb9tsiNQpjZlNMffrHoVKCnOp35q5thXTacqjWG~GYgXoc4aArKi0UudjWeJqko76f7d3P2El4MZhIJSbzw__";

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        tittle: "Log In",
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "Select an account to continue.",
              style: TextStyle(fontFamily: Constans.mainFont),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // SizedBox(height: 175, width: 295, child: Image.network(imgSignIp)),
          const Column(
            children: [SignInSameEmail(), SignInSameEmail()],
          ),
          const SizedBox(
            height: 15,
          ),
          const Text("None of the above?"),
          const SizedBox(
            height: 15,
          ),
          CustomButton(
            onPressed: () {
              Navigator.pushNamed(context, "sign Up");
            },
            text: "Add another Account",
            color: Constans.greenColor,
          ),
          const Divider(
            indent: 120,
            endIndent: 120,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
              child: Text(
            "Our Terms of Use & Privacy Policy.",
            style: TextStyle(color: Constans.termsColor),
          ))
        ],
      ),
    );
  }
}
